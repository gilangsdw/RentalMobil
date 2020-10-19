<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property int $id_user
 * @property string|null $firstsname
 * @property string|null $lastname
 * @property string|null $username
 * @property string|null $password
 * @property string|null $authkey
 */
class User extends \yii\db\ActiveRecord implements \yii\web\IdentityInterface
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_user'], 'required'],
            [['id_user'], 'integer'],
            [['firstsname', 'lastname', 'username', 'password', 'authkey'], 'string', 'max' => 20],
            [['id_user'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_user' => 'Id User',
            'firstsname' => 'Firstsname',
            'lastname' => 'Lastname',
            'username' => 'Username',
            'password' => 'Password',
            'authkey' => 'Authkey',
        ];
    }

    public function getAuthKey(){
        return $this->authKey;            
    }

    public function getId(){
        return $this->id;
    }

    public function validateAuthKey($authKey){
        $this->authkey === $authKey;
    }

    public static function findIdentity($id){
        return self::findOne($id);
    }

    public static function findIdentityByAccessToken($token, $type = null){
        return self::findOne(['accessToken'=>$token]);

    }

    public static function findByUsername($username){
        return self::findOne(['username'=>$username]);
    }

    public function validatePassword($password){
        return $this->password === $password;
    }
}
