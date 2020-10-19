<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "country".
 *
 * @property string $code
 * @property string $name
 * @property int $population
 */
class Country extends \yii\db\ActiveRecord
{
    
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{country}}';
    }
   
    /**
     * {@inheritdoc}
     */
    //     aturan ini berfungsi menangani input/update di form 
    public function rules()
    { 
        return [
            [['code', 'name', 'population','phonecode','president'], 'required'],
            [['population'], 'integer'],
            [['code'], 'string', 'max' => 2],
            [['name'], 'string', 'max' => 52],
            [['code'], 'unique'],
            [['phonecode'], 'integer'],
            [['capital'], 'string'],

        ];
    }

    /**
     * {@inheritdoc} pemberian nama label untuk field dari tabel yg dipanggil
     */
    public function attributeLabels()
    {
        return [
            'code' => 'Code',
            'name' => 'Name',
            'population' => 'Population',
            'phonecode' => 'Phone-Code',
            'president' => 'President',
        ];
        
    }
}
