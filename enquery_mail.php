<?php
require_once("includes/initialize.php");
$usermail = User::get_UseremailAddress_byId(1);
$ccusermail = User::field_by_id(1, 'optional_email');
$sitename = Config::getField('sitename', true);

foreach ($_POST as $key => $val) {
  $$key = $val;
}
if ($_POST['action'] == "forContact"):
    $body = '
        <table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">
            <tr>
                <td><p>Dear Sir,</p></td>
            </tr>
            <tr>
                <td>
                    <p>
                        <span style="color:#0065B3; font-size:14px; font-weight:bold">Comment message</span><br />
                        The details provided are:
                    </p>
                    <p>
                        <strong>Name</strong> : ' . $name . '<br />		
                        <strong>E-mail Address</strong>: ' . $email . '<br />
                        <strong>Phone</strong>: ' . $phone . '<br />
                        <strong>Subject</strong>: ' . $subject . '<br />
                        <strong>Message</strong>: ' . $message . '<br />
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Thank you,<br />
                    ' . $name . '
                    </p>
                </td>
            </tr>
        </table>
  ';
  
    $mail = new PHPMailer();
    $mail->SetFrom($email, $name);
    $mail->AddReplyTo($email, $name);
    $mail->AddAddress($usermail, $sitename);    
    if (!empty($ccusermail)) {
        $rec = explode(';', $ccusermail);
        if ($rec) {
            foreach ($rec as $row) {
                $mail->AddCC($row, $sitename);
            }
        }
    }
  
    $mail->Subject = 'Enquiry Contact mail from ' . $name;
    $mail->MsgHTML($body);
  
    if (!$mail->Send()) {
        echo json_encode(array("action" => "unsuccess", "message" => "We could not sent your message at the time. Please try again later."));
    } else {
        echo json_encode(array("action" => "success", "message" => "Your message has been successfully sent."));
    }
  endif;


  if ($_POST['action'] == "hallEnquiry"):
    $body = '
        <table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">
            <tr>
                <td><p>Dear Sir,</p></td>
            </tr>
            <tr>
                <td>
                    <p>
                        <span style="color:#0065B3; font-size:14px; font-weight:bold">Hall Booking Inquiry</span><br />
                        The details provided are:
                    </p>
                    <p>
                        <strong>Hall Name</strong> : ' . $hall . '<br />
                        <strong>Event Name</strong> : ' . $event . '<br />
                        <strong>Event Date</strong> : ' . $date . '<br />      
                        <strong>Number of Pax</strong> : ' . $pax . '<br />
                        <strong>Name</strong> : ' . $name . '<br />      
                        <strong>Email Address</strong>: ' . $email . '<br />
                        <strong>Contact Number</strong>: ' . $contact . '<br />
                        <strong>Message</strong>: ' . $message . '<br />
                    </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Thank you,<br />
                    ' . $name . '
                    </p>
                </td>
            </tr>
        </table>
    ';

      $hallEmail = User::field_by_id(1, 'hall_email');

  $mail = new PHPMailer();
  $mail->SetFrom($email, $name);
  $mail->AddReplyTo($email, $name);
  $mail->AddAddress($hallEmail, $sitename);
  if (!empty($ccusermail)) {
      $rec = explode(';', $ccusermail);
      if ($rec) {
          foreach ($rec as $row) {
              $mail->AddCC($row, $sitename);
          }
      }
  }

  $mail->Subject = 'Hall Reservation Inquiry mail from ' . $name;
  $mail->MsgHTML($body);

  if (!$mail->Send()) {
      echo json_encode(array("action" => "unsuccess", "message" => "We could not sent your Inquiry at the time. Please try again later."));
  } else {
      echo json_encode(array("action" => "success", "message" => "Your Inquiry has been successfully sent."));
  }
endif;


?>