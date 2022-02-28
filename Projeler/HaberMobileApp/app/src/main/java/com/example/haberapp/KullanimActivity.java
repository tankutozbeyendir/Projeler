package com.example.haberapp;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

public class KullanimActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_kullanim);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }
}