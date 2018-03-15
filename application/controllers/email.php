<?php

class  Email extends CI_Controller
{

  public function sendMail()
  {
      $config = Array(
      'protocol' => 'smtp',
      'smtp_host' => 'ssl://smtp.googlemail.com',
      'smtp_port' => 465,
      'smtp_user' => 'email@email.com', // change it to yours
      'smtp_pass' => EMAIL_PASS, // change it to yours
      'mailtype' => 'html',
      'charset' => 'iso-8859-1',
      'wordwrap' => TRUE
      );
          $to ="olteantiberiu@gmail.com";
          $message = 'Mesaj email';
          $subiect = 'Subiect Pass constanta';
          $this->load->library('email', $config);
        $this->email->set_newline("\r\n");
        $this->email->from('tiberiu@cardio.ro'); // change it to yours
        $this->email->to($to);// change it to yours
        $this->email->subject($subiect);
        $this->email->message($message);
        if($this->email->send())
         {
          echo 'Email sent Tibi.';
         }
         else
        {
         show_error($this->email->print_debugger());
        }

  }
}
