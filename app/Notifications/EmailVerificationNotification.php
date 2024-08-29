<?php

namespace App\Notifications;

use Carbon\Carbon;
use Ichtrojan\Otp\Otp;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class EmailVerificationNotification extends Notification
{
    use Queueable;
    public $message;
    public $subject;
    public $fromEmail;
    public $mailer ;
    private $otp;

    /**
     * Create a new notification instance.
     */
    public function __construct()
    {
        $this->message = 'Please verify your email address with the below code. ';
        $this->subject = 'Email Verification';
        $this->fromEmail = config('mail.from.address');
        $this->mailer = config('mail.mailers.smtp');
        $this->otp = new Otp;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @return array<int, string>
     */
    public function via(object $notifiable): array
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     */
    public function toMail(object $notifiable): MailMessage
    {
        $otp = $this->otp->generate($notifiable->email, 'numeric', 5, 60);
        return (new MailMessage)
            ->mailer('smtp')
            ->subject($this->subject)
            ->view('email-verification', [
                'otp' => $otp->token,
            ])
            ->line($this->message)
            ->line('code: ' . $otp->token)
            ->salutation('Best regards, ' . config('app.name') . ' Team');
    }
    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        return [
            //
        ];
    }
}
