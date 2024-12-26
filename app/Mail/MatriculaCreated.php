<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;
use App\Models\Matricula;

class MatriculaCreated extends Mailable
{
    use Queueable, SerializesModels;

    public $matricula;


     /**
     * Create a new message instance.
     *
     * @param Matricula $matricula
     */
    public function __construct(Matricula $matricula)
    {
        $this->matricula = $matricula;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('Bienvenido a nuestra Escuela')
            ->view('emails.matricula_created')
            ->with([
                'matricula' => $this->matricula,
            ]);
    }
}
