<?php

namespace App\Notifications;

use Carbon\Carbon;
use Ichtrojan\Otp\Otp;
use App\Models\PasswordReset;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class PasswordResetNotification extends Notification
{
    use Queueable;
    public $message;
    public $subject;
    public $fromEmail;
    public $mailer;
    private $otp;

    /**
     * Create a new notification instance.
     */
    public function __construct()
    {
        $this->message = 'use the below code for resetting password';
        $this->subject = 'Password resetting';
        $this->fromEmail = 'test@storeify.com';
        $this->mailer = 'smtp';
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
        $dateTime = now()->format('Y-m-d H:i:s');
        PasswordReset::updateOrCreate(
            ['email' => $notifiable->email],
            [
                'token' => $otp->token,
                'created_at' => $dateTime
                ]
            );
            // dd($otp);
        return (new MailMessage)
            ->mailer('smtp')
            ->subject($this->subject)
            ->view('reset_password', [
                'otp' => $otp->token,
            ])
            ->line($this->message)
            ->line('code: ' . $otp->token)
            ->salutation('Best regards, Albakr Team');
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
