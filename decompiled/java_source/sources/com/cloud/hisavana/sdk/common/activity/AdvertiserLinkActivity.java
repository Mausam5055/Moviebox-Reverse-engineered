package com.cloud.hisavana.sdk.common.activity;

import android.R;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.common.widget.webview.ActionWebView;
import com.cloud.hisavana.sdk.e4;

/* JADX INFO: loaded from: classes3.dex */
public class AdvertiserLinkActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f21731b = "AdvertiserLinkActivity";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ActionWebView f21732a;

    private void T() {
        if (a7.c.n() == 1) {
            setRequestedOrientation(1);
        } else if (a7.c.n() == 0) {
            setRequestedOrientation(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U(View view) {
        onBackPressed();
    }

    private void V() {
        try {
            this.f21732a = new ActionWebView(this);
            ((FrameLayout) findViewById(R$id.webview_container)).addView(this.f21732a);
        } catch (Throwable th2) {
            e4.b().e(f21731b, "create webview error: " + Log.getStackTraceString(th2));
            this.f21732a = null;
            finish();
        }
        ActionWebView actionWebView = this.f21732a;
        if (actionWebView != null) {
            actionWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
            this.f21732a.getSettings().setSupportZoom(true);
            this.f21732a.getSettings().setUseWideViewPort(true);
            this.f21732a.getSettings().setLoadWithOverviewMode(true);
            this.f21732a.getSettings().setDisplayZoomControls(true);
            this.f21732a.getSettings().setCacheMode(-1);
            this.f21732a.getSettings().setDomStorageEnabled(true);
            this.f21732a.setWebViewClient(new e7.j());
        }
    }

    private void W() {
        if (this.f21732a == null) {
            return;
        }
        String stringExtra = getIntent().getStringExtra("url");
        if (TextUtils.isEmpty(stringExtra)) {
            e4.b().w(f21731b, "url is null");
            return;
        }
        e4.b().d(f21731b, "url is: " + stringExtra);
        this.f21732a.loadUrl(stringExtra);
    }

    private void X() {
        ImageView imageView = (ImageView) findViewById(R$id.im_back);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.cloud.hisavana.sdk.common.activity.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f21872a.U(view);
                }
            });
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        T();
        super.onCreate(bundle);
        setContentView(R$layout.activity_advertiser_link);
        View childAt = ((ViewGroup) findViewById(R.id.content)).getChildAt(0);
        if (childAt != null) {
            childAt.setFitsSystemWindows(true);
        }
        X();
        V();
        W();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        try {
            ActionWebView actionWebView = this.f21732a;
            if (actionWebView != null) {
                ViewParent parent = actionWebView.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.f21732a);
                }
                this.f21732a.stopLoading();
                this.f21732a.getSettings().setJavaScriptEnabled(false);
                this.f21732a.setWebChromeClient(null);
                this.f21732a.clearHistory();
                this.f21732a.removeAllViews();
                this.f21732a.destroy();
                this.f21732a = null;
            }
        } catch (Throwable th2) {
            e4.b().d(f21731b, Log.getStackTraceString(th2));
        }
        super.onDestroy();
    }
}
