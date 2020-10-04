<?php

namespace App\Controller;

use App\Form\ContactType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mime\Email;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Mailer\MailerInterface;

class ContactController extends AbstractController
{
    /**
     * @Route("/contact", name="contact")
     */
    public function index(Request $request, MailerInterface $mailer)
    {
        $form = $this->createForm(ContactType::class);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()) {

            $contactFormData = $form->getData();
            
            $message = (new Email())
                ->from($contactFormData['email'])
                ->to('contact@pengolincoin.xyz')
                ->subject('Message from PengolinCoin\'s blog')
                ->html('From : ' . $contactFormData['name'] . '<br>' . 'Email: ' . $contactFormData['email'] . '<br>' . $contactFormData['message'], 'text/plain');
            $mailer->send($message);

            $this->addFlash('successMessage', 'Your message has been sent!');

            return $this->redirectToRoute('article_index');
        }

        return $this->render('contact/index.html.twig', [
            'our_form' => $form->createView()
        ]);
    }
    
}