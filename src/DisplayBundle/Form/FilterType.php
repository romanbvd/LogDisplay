<?php

namespace DisplayBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

use \DisplayBundle\Form\FilterData;

class FilterType extends AbstractType
{
    private $filterData = null;
    public function __construct(FilterData $filterData)
    {
        $this->filterData = $filterData;
    }

    public function buildForm(FormBuilderInterface $builder, array $options = null)
    {
        $builder
            ->add('user', 'text')
            ->add('type', 'text')
            ->add('availability', 'choice', array(
                'choices' => array(
                    'morning'   => 'Morning',
                    'afternoon' => 'Afternoon',
                    'evening'   => 'Evening',
                ),
                'multiple' => false,
            ))
            ->add('send', 'submit');

        echo $this->filterData->getData();
    }

    public function getName()
    {
        return 'filter';
    }
}
