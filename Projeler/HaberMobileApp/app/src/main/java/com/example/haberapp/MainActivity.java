package com.example.haberapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    EditText username, password, repassword;
    Button btnSignUp;
    TextView btnSignIn;
    DBHelper myDB;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        username = (EditText)findViewById(R.id.username);
        password = (EditText)findViewById(R.id.password);
        repassword = (EditText)findViewById(R.id.repassword);

        btnSignIn = (TextView) findViewById(R.id.btnSignIn);
        btnSignUp = (Button) findViewById(R.id.btnSignUp);

        myDB = new DBHelper(this);

        btnSignUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String user = username.getText().toString();
                String pass = password.getText().toString();
                String repass = repassword.getText().toString();

                if(user.equals("") || pass.equals("") || repass.equals("")){
                    Toast.makeText(MainActivity.this, "Lütfen bütün boş alanları doldurunuz!", Toast.LENGTH_SHORT).show();
                }
                else {
                    if (pass.equals(repass)){
                        Boolean usercheckResult = myDB.checkusername(user);
                        if (usercheckResult == false){
                            Boolean regResult = myDB.insertData(user,pass);
                            if (regResult == true){
                                Toast.makeText(MainActivity.this, "Kayıt başarılı !", Toast.LENGTH_SHORT).show();
                                Intent intent = new Intent(getApplicationContext(), LoginActivity.class);
                                startActivity(intent);
                            }else {
                                Toast.makeText(MainActivity.this, "Kayıt başarısız! \n Lütfen tekrar deneyiniz.", Toast.LENGTH_SHORT).show();
                            }
                        }else {
                            Toast.makeText(MainActivity.this, "Böyle bir kullanıcı zaten var.\n Lütfen giriş yapın.", Toast.LENGTH_SHORT).show();
                        }

                    }
                    else {
                        Toast.makeText(MainActivity.this, "Şifre birbiriyle uyuşmuyor.", Toast.LENGTH_SHORT).show();
                    }
                }
            }
        });
        btnSignIn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(), LoginActivity.class);
                startActivity(intent);
            }
        });
    }
}