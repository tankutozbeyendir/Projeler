package com.example.haberapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class LauncherActivity extends AppCompatActivity {
    Button btngiris, btnkayit;
    TextView kullanimsarti;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_launcher);

        btngiris = (Button) findViewById(R.id.btngiris);
        btnkayit = (Button) findViewById(R.id.btnkayit);
        kullanimsarti = (TextView) findViewById(R.id.kullanimsarti);

        btngiris.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intentgiris = new Intent(getApplicationContext(), LoginActivity.class);
                startActivity(intentgiris);
            }
        });
        btnkayit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intentkayit = new Intent(getApplicationContext(), MainActivity.class);
                startActivity(intentkayit);
            }
        });

        kullanimsarti.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent kullanimsarti = new Intent(getApplicationContext(), KullanimActivity.class);
                startActivity(kullanimsarti);

            }
        });


    }
}

