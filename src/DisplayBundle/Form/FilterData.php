<?php

namespace DisplayBundle\Form;

class FilterData
{
    public function __construct($mmm)
    {
        //print_r(get_class($mmm));
    }
    public function getUser()
    {
        return 'mmm';
    }

    public function getType()
    {
        return 'lll';
    }

    public function getAvailability()
    {
        return array( 
                'choices' => array(
                    'morning'   => 'Morning',
                    'afternoon' => 'Afternoon',
                    'evening'   => 'Evening',
            ));
    }

    public function setAvailability(ChoiceListInterface $choices)
            {
                        $this->choices = $choices;
                                return $this;
                            }

}
