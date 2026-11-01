package com.cloud.hisavana.sdk.common.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.R$style;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.widget.CountTimeView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.i1;
import com.cloud.hisavana.sdk.r4;
import com.cloud.tmc.kernel.constants.TmcConstants;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public class HisavanaSplashActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f21774f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i1 f21776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f21777c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f21779e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f21775a = "HisavanaSplashActivity";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f21778d = false;

    private void R() {
        CountTimeView countTimeViewJ;
        i1 i1Var = this.f21776b;
        if (i1Var == null || (countTimeViewJ = i1Var.J()) == null) {
            return;
        }
        countTimeViewJ.setStartTime((int) this.f21777c);
        countTimeViewJ.start();
    }

    public static void T(Context context, String str, boolean z10) {
        f21774f = z10;
        Intent intent = new Intent(context, (Class<?>) HisavanaSplashActivity.class);
        intent.setFlags(ASTNode.DEOP);
        intent.putExtra("uniqueID", str);
        context.startActivity(intent);
    }

    private void U() {
        this.f21779e = getIntent().getStringExtra("uniqueID");
        i1 i1VarA = r4.b().a(this.f21779e);
        this.f21776b = i1VarA;
        if (i1VarA == null || i1VarA.r() != 0) {
            finish();
            i1 i1Var = this.f21776b;
            if (i1Var != null) {
                i1Var.e0(TaErrorCode.ERROR_SHOW_INNER_INVALID);
                return;
            }
            return;
        }
        setContentView(R$layout.activity_hisavana_splash);
        if (f21774f) {
            com.cloud.hisavana.sdk.common.util.a.a(this);
        }
        this.f21776b.l0((RelativeLayout) findViewById(R$id.splash_ad));
        this.f21776b.j0(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        setTitle((CharSequence) null);
        if (f21774f) {
            setTheme(R$style.InterstitialFullscreenStyle);
        }
        if (Build.VERSION.SDK_INT != 26) {
            setRequestedOrientation(1);
        }
        super.onCreate(bundle);
        U();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        i1 i1Var = this.f21776b;
        if (i1Var != null) {
            i1Var.m();
            this.f21776b = null;
        }
        r4.b().d(this.f21779e);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i11, KeyEvent keyEvent) {
        i1 i1Var;
        CountTimeView countTimeViewJ;
        if (i11 == 4 && (i1Var = this.f21776b) != null && (countTimeViewJ = i1Var.J()) != null) {
            long supposeFinishTime = countTimeViewJ.getSupposeFinishTime();
            if (supposeFinishTime > 0 && supposeFinishTime > System.currentTimeMillis()) {
                return true;
            }
        }
        return super.onKeyDown(i11, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        i1 i1Var = this.f21776b;
        if (i1Var != null) {
            CountTimeView countTimeViewJ = i1Var.J();
            if (countTimeViewJ != null) {
                this.f21777c = countTimeViewJ.getRemainder() / 1000;
                countTimeViewJ.cancel();
            }
            this.f21776b.R();
        }
        this.f21778d = true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        e4.b().d("HisavanaSplashActivity", "onResume");
        super.onResume();
        i1 i1Var = this.f21776b;
        if (i1Var != null && i1Var.L()) {
            AdsDTO adsDTOT = this.f21776b.T();
            if (adsDTOT != null && !adsDTOT.isInteractiveAd()) {
                R();
            }
            this.f21776b.C0();
            this.f21776b.I();
            this.f21778d = false;
            return;
        }
        i1 i1Var2 = this.f21776b;
        if (i1Var2 != null && i1Var2.L() && this.f21776b.M()) {
            R();
            this.f21778d = false;
            return;
        }
        i1 i1Var3 = this.f21776b;
        if (i1Var3 == null || !i1Var3.M()) {
            if (this.f21778d) {
                R();
            }
            this.f21778d = true;
        } else {
            e4.b().d("HisavanaSplashActivity", "close ad");
            finish();
            this.f21776b.P();
            this.f21778d = false;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        e4.b().d("HisavanaSplashActivity", TmcConstants.NAVIGATION_ON_START);
    }
}
