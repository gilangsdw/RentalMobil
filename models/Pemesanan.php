<?php

namespace app\models;


use Yii;

/**
 * This is the model class for table "employee".
 *
 * @property int $id
 * @property string $nama
 * @property string $alamat
 * @property string $posisi
 * @property string $agama
 */
class Pemesanan extends \yii\db\ActiveRecord

{ 
    
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        
        return 'rental_order';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id','car'], 'integer'],
            [['start_date', 'return_date'], 'string'],
            [['actual_return_date'], 'string'],
            [['name','location'], 'string'],
            [['id'], 'unique'],

        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'id',
            'car' => 'Car',
            'start_date' => 'Rental Start',
            'return_date' => 'Rental End',
            'location' => 'Location',
            'name' => 'Name',

        ];
    }
}
