package com.tn.tranpay.activity;

import android.content.Intent;
import android.os.Bundle;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.tranpay.R$id;
import com.tn.lib.tranpay.R$layout;
import com.tn.tranpay.fragment.TranPayWebFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gh.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 '2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0007H\u0017¢\u0006\u0004\b\u000e\u0010\u0004J\u0019\u0010\u0011\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0019\u0010\u0017R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0016\u0010\"\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006)"}, d2 = {"Lcom/tn/tranpay/activity/TranPayWebActivity;", "Lcom/tn/tranpay/activity/BaseActivity;", "Lgh/a;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onPause", "onStop", "onDestroy", "onBackPressed", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "X", "()Lgh/a;", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "url", "e", "cpFrontPage", "f", "Z", "shouldOpenCpFrontPage", "Lcom/tn/tranpay/fragment/TranPayWebFragment;", "g", "Lcom/tn/tranpay/fragment/TranPayWebFragment;", "webFragment", "h", "a", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TranPayWebActivity extends BaseActivity<a> {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    public String url;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public String cpFrontPage;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    public boolean shouldOpenCpFrontPage = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private TranPayWebFragment webFragment;

    @Override // com.tn.tranpay.activity.BaseActivity
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public a getViewBinding() {
        a aVarC = a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(layoutInflater)");
        return aVarC;
    }

    @Override // com.tn.tranpay.activity.BaseActivity
    public boolean isChangeStatusBar() {
        return true;
    }

    @Override // com.tn.tranpay.activity.BaseActivity
    public boolean isStatusDark() {
        return false;
    }

    @Override // com.tn.tranpay.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        TranPayWebFragment tranPayWebFragment = this.webFragment;
        if (tranPayWebFragment == null || !tranPayWebFragment.y0()) {
            super.onBackPressed();
        }
    }

    @Override // com.tn.tranpay.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R$layout.tran_activity_web_pay);
        this.url = getIntent().getStringExtra("url");
        this.cpFrontPage = getIntent().getStringExtra("cpFrontPage");
        boolean booleanExtra = getIntent().getBooleanExtra("shouldOpenCpFrontPage", true);
        this.shouldOpenCpFrontPage = booleanExtra;
        ai.a.g(ai.a.f619a, "The url is " + this.url + " and cpFrontPage is " + this.cpFrontPage + " and shouldOpenCpFrontPage is " + booleanExtra, null, 2, null);
        if (savedInstanceState == null) {
            this.webFragment = TranPayWebFragment.INSTANCE.a();
            Bundle bundle = new Bundle();
            bundle.putString("url", this.url);
            bundle.putString("cpFrontPage", this.cpFrontPage);
            bundle.putBoolean("shouldOpenCpFrontPage", this.shouldOpenCpFrontPage);
            TranPayWebFragment tranPayWebFragment = this.webFragment;
            if (tranPayWebFragment != null) {
                tranPayWebFragment.setArguments(bundle);
            }
            TranPayWebFragment tranPayWebFragment2 = this.webFragment;
            if (tranPayWebFragment2 != null) {
                getSupportFragmentManager().p().s(R$id.container, tranPayWebFragment2).k();
            }
        }
    }

    @Override // com.tn.tranpay.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        try {
            setIntent(intent);
            TranPayWebFragment tranPayWebFragment = this.webFragment;
            if (tranPayWebFragment != null) {
                tranPayWebFragment.newIntent(intent);
            }
        } catch (Exception e11) {
            ai.a.e(ai.a.f619a, e11.toString(), null, 2, null);
        }
    }

    @Override // com.tn.tranpay.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.tn.tranpay.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // com.tn.tranpay.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }
}
