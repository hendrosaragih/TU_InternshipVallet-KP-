<?php 
// $this->load->view('vallet/user/upload');
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
if (isset($_POST['order'])) {
    
  $namapemesan=$_POST['user_name'];
  $emailpemesan=$_POST['user_email'];
  $jenisorder=$_POST['jenis_pesanan'];
  $biaya=$_POST['harga'];
require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';

$mail = new PHPMailer(true);

try {
    //Server settings
    $mail->SMTPDebug = 2;                                       // Enable verbose debug output
    $mail->isSMTP();                                            // Set mailer to use SMTP
    $mail->Host       = 'smtp.gmail.com';  // Specify main and backup SMTP servers
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'wahyuhr1898@gmail.com';                     // SMTP username
    $mail->Password   = 'wahyuhr18';                               // SMTP password
    $mail->SMTPSecure = 'tls';                                  // Enable TLS encryption, `ssl` also accepted
    $mail->Port       = 587;                                    // TCP port to connect to

    //Recipients
    $mail->setFrom($emailpemesan, 'Vallet.inc');
    $mail->addAddress($emailpemesan,$namapemesan );     // Add a recipient
    $mail->addAddress('ellen@example.com');               // Name is optional
    $mail->addReplyTo('info@example.com', 'Information');
    $mail->addCC('cc@example.com');
    $mail->addBCC('bcc@example.com');

    // $uploadfile = tempnam(sys_get_temp_dir(), hash('sha256', $_FILES['userfile']['name']));
    // $mail->addAttachment($uploadfile, 'My uploaded file');

    // // Attachments
    $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
    // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name

    // Content
    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = 'Pesanan Desain Vallet';
    $mail->AddEmbeddedImage('asset/img/vallet.png','header');
    $mail->Body    = "<div style='text-align:center'><br><img src=\"cid:header\" /><h1>Halo $namapemesan </h1> <br> <h3> Pesanan anda telah di terima oleh sistem dan akan akan di teruskan kepada desainer terimakasih sudah menggunakan Vallet  </h3> </div>";
    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

    $mail->send();
    echo 'Message has been sent';
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}
}

else {
  echo "message not sent";
}
redirect($_SERVER['HTTP_REFERER']);
 ?>
