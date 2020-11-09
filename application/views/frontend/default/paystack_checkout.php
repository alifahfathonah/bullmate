<!DOCTYPE html>
<html>

<head>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Paystack | <?php echo get_settings('system_name');?></title>

<link rel="stylesheet" href="<?php echo base_url().'assets/frontend/default/css/bootstrap.min.css'; ?>">
    <style type="text/css">
            body{
                padding: 0;
                margin: 0;
                background: #FFFFFF;
                color:green;
            }
            h1, h2, h3{
                text-align: left;
                font-size: 36px;
            }
            .container{
                width: 450px !important;
                margin: 20px auto;
            }

            .container table{
                width: 100% !important;
                border: 1px solid #ccc !important;
                border-radius: 5px;
                margin: 5px 0;
            }

            .container table tr td{
                padding: 10px 10px;
                font-size: 18px;
            }

            .container button{
                width: 100% !important;
                padding: 10px;
            }
    </style>
</head>

<body>

<!--required for getting the paystack token-->
        <?php
            $paystack_keys = get_settings('paystack_keys');
            $values = json_decode($paystack_keys);
            if ($values[0]->testmode == 'on') {
                $public_key = $values[0]->public_key;
                $private_key = $values[0]->secret_key;
            } else {
                $public_key = $values[0]->public_live_key;
                $private_key = $values[0]->secret_live_key;
            }
        ?>

    <div class="container package-details">  
        <div class="card">
            <div class="card-header text-right"><strong>Paystack</strong></div>
        <div class="card-body">
        <caption><h5>You are about to buy</h5></caption>     
        <table class="table table-striped">
            <tr><th>QTY</th><th>Description</th><th>Amount</th></tr>
        <?php
        $actual_price = 0;
        $total_price  = 0;
        foreach ($this->session->userdata('cart_items') as $cart_item):
            $course_details = $this->crud_model->get_course_by_id($cart_item)->row_array();
            ?>

            <tr>
                <td>1</td>
                <td><?php echo $course_details['title']; ?></td>
                <td>
                    
                <?php if ($course_details['discount_flag'] == 1): ?>
                    <?php
                    $total_price += $course_details['discounted_price'];
                    $actual_price += $course_details['price'];
                    echo currency($course_details['discounted_price']); 
                ?>
               
            <?php else: ?>
                    <?php
                    $actual_price += $course_details['price'];
                    $total_price  += $course_details['price'];
                    echo currency($course_details['price']);
                    ?>
            <?php endif; ?>                    

                </td>
            </tr>
        <?php endforeach; ?>

          <tfoot>
    <tr>
      <td colspan="2" class="text-right">Total :</td>
      <td> <?=  currency($amount_to_pay) ?> </td>
    </tr>
  </tfoot>

        </table> 
    </div>
    <div class="card-footer">
        <button class="btn btn-info"  onclick="payWithPaystack()"> Pay </button>
    </div>
    </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>
    <script src="https://js.paystack.co/v1/inline.js"></script>
  
</body>


<script>

function payWithPaystack() {

    var handler = PaystackPop.setup({ 
        key: '<?php echo $public_key; ?>', //put your public key here
        email: '<?php echo $email; ?>', //put your customer's email here
        amount: '<?php echo $amount_to_pay*100; ?>', //amount the customer is supposed to pay
        currency:'USD',
        callback: function (response) {
                // make an ajax call for saving the payment info
                $.ajax({
                   url: '<?php echo site_url('home/payment_success/paystack/'.$user_id.'/' . $amount_to_pay);?>'
                }).done(function () {
                    window.location = '<?php echo site_url('/');?>';
                });

        },
        onClose: function () {
            //when the user close the payment modal
            alert('Transaction cancelled');
        }
    });
    handler.openIframe(); //open the paystack's payment modal
}

</script>
</html>

