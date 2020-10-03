<?php

namespace App\Form;

use App\Entity\User;
use App\Entity\Article;
use App\Entity\Category;
use Symfony\Component\Form\AbstractType;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Validator\Constraints\Image;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextType;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title', TextType::class, [
                'label' => 'Title',
                'attr' => [
                    'placeholder' => 'Give a title',
                    'class' => 'form-control'
                ]
            ])
            ->add('content', CKEditorType::class, [
                'label' => 'Article content',
                'attr' => [
                    'placeholder' => 'Write the article content',
                    'class' => 'form-control',
                    'rows' => '10'
                ]
            ])
            ->add('img', FileType::class, [
                'mapped' => false, // No entity to link
                'required' => false,
                'constraints' => [
                    new Image([
                        'maxSize' => '2M',
                        'mimeTypes' => [ // Only jpeg/jpg, png, webp
                            'image/jpeg', 
                            'image/png', 
                            'image/webp'
                          ],
                          'mimeTypesMessage' => "File is not valid.",
                    ])
                ]
            ])
            //->add('created_at')
            //->add('updated_at')
            ->add('author', EntityType::class, [
                'class' => User::class,
                'label' => 'Article author',
                'attr' => [
                    'class' => 'form-control'
                ]
            ])
            ->add('category', EntityType::class, [
                'class' => Category::class,
                'label' => 'Article category',
                'attr' => [
                    'class' => 'form-control'
                ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}
