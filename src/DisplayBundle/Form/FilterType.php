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
            ->add('search', 'text')
            ->add('user', 'choice', $this->filterData->getUser(), array('multiple' => false))
            ->add('type', 'choice', $this->filterData->getType(), array('multiple' => false))
            ->add('startDate', 'date')
            ->add('endDate', 'date')
            ->add('send', 'submit');
    }

    public function getName()
    {
        return 'filter';
    }
}
