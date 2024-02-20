package com.whitehax.ironsdn.security

import android.Manifest
import android.annotation.SuppressLint
import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.whitehax.ironsdn.R
import java.io.*
import java.util.*


@SuppressLint("LongLogTag")
public class Test : AppCompatActivity() {
    val TAG = "com.whitehax.ironsdn.security.Test"
    lateinit var etEmailAddress: EditText
    lateinit var etTypeEmail: EditText
    lateinit var btAccountDeletion: Button
    lateinit var btAppleContacting: Button
    lateinit var btDirectDeposit: Button
    lateinit var btGoogleHangout: Button
    lateinit var btGoogleNewDevice: Button
    lateinit var btNetflixReset: Button
    lateinit var btShippingConfirmation: Button
    lateinit var btStarbucks: Button
    lateinit var btUpsDelivery: Button
    lateinit var btVenmoGiftcard: Button
    lateinit var tvTestResultppp: TextView
    private val wantPermission: String = Manifest.permission.GET_ACCOUNTS


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_test2)

        initUI()
    }


    private fun initUI() {

        etEmailAddress = findViewById<EditText>(R.id.etEmailAddress)
        btAccountDeletion = findViewById<Button>(R.id.btAccountDeletion)
        btAppleContacting = findViewById<Button>(R.id.btAppleContacting)
        btDirectDeposit = findViewById<Button>(R.id.btDirectDeposit)
        btGoogleHangout = findViewById<Button>(R.id.btGoogleHangout)
        btGoogleNewDevice = findViewById<Button>(R.id.btGoogleNewDevice)
        btNetflixReset = findViewById<Button>(R.id.btNetflixReset)
        btShippingConfirmation = findViewById<Button>(R.id.btShippingConfirmation)
        btStarbucks = findViewById<Button>(R.id.btStarbucks)
        btUpsDelivery = findViewById<Button>(R.id.btUpsDelivery)
        btVenmoGiftcard = findViewById<Button>(R.id.btVenmoGiftcard)
        etTypeEmail = findViewById<EditText>(R.id.etTypeEmail)
        tvTestResultppp = findViewById(R.id.tvTestResultppp)
        val btTestLogin = findViewById<Button>(R.id.btTestLogin)
        val btTestMethod = findViewById<Button>(R.id.btTestMethod)

    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)

    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)


    }

}
