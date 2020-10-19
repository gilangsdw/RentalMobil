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
class Car extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'car';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['code_car', 'name_car', 'price','color'], 'required'],
            [['name_car', 'price', 'color'], 'string', 'max' => 20],
            [['code_car'], 'unique'],
            [['entry'], 'string'],

        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'code_car' => 'Car Code',
            'name_car' => 'Name',
            'price' => 'Price',
            'color' => 'Color',
            'entry'=> 'Entry Name',
        ];
    }
}
