package com.tn.tranpay.activity;

import android.app.Activity;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.tranpay.R$color;
import com.tn.tranpay.report.b;
import com.tn.tranpay.report.c;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000e\u001a\u00020\u000b2\b\b\u0002\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\rJ\u0019\u0010\u0011\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u0013\u0010\u0006J\u0019\u0010\u0014\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u000f\u0010\u0015\u001a\u00028\u0000H&¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0017\u0010\u0006J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u001b\u0010\u0006J\u000f\u0010\u001c\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u001c\u0010\u0006J\u000f\u0010\u001d\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001d\u0010\u001aJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0018H\u0016¢\u0006\u0004\b!\u0010\u001aJ\u000f\u0010\"\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\"\u0010\u001aJ\u000f\u0010#\u001a\u00020\u000bH\u0016¢\u0006\u0004\b#\u0010\u0006J\u000f\u0010$\u001a\u00020\u000bH\u0016¢\u0006\u0004\b$\u0010\u0006R\"\u0010*\u001a\u00028\u00008\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010\u0016\"\u0004\b(\u0010)R\u0014\u0010-\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b+\u0010,R\u001d\u00103\u001a\u0004\u0018\u00010.8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102¨\u00064"}, d2 = {"Lcom/tn/tranpay/activity/BaseActivity;", "Lg4/a;", "T", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/tn/tranpay/report/b;", "<init>", "()V", "", "tag", "Landroid/app/Activity;", "activity", "", "U", "(Ljava/lang/String;Landroid/app/Activity;)V", "R", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", TmcConstants.NAVIGATION_ON_START, "initView", "getViewBinding", "()Lg4/a;", "setStatusBar", "", "setImmersionStatusBar", "()Z", "onStop", "onDestroy", "isChangeStatusBar", "", "statusColor", "()I", "isStatusDark", "isTranslucent", "onResume", "onPause", "a", "Lg4/a;", "getMViewBinding", "setMViewBinding", "(Lg4/a;)V", "mViewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "TAG", "Lcom/tn/tranpay/report/c;", "c", "Lkotlin/Lazy;", "getLogViewConfig", "()Lcom/tn/tranpay/report/c;", "logViewConfig", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseActivity<T extends a> extends AppCompatActivity implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public a mViewBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final String TAG = "CommonInfo";

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy logViewConfig = LazyKt.b(new Function0<c>(this) { // from class: com.tn.tranpay.activity.BaseActivity$logViewConfig$2
        final /* synthetic */ BaseActivity<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        {
            super(0);
            this.this$0 = this;
        }

        @Override // kotlin.jvm.functions.Function0
        public final c invoke() {
            return this.this$0.W();
        }
    });

    private final void R(String tag, Activity activity) {
        ai.a.f619a.f(tag, activity.getLocalClassName() + " onPause");
    }

    static /* synthetic */ void T(BaseActivity baseActivity, String str, Activity activity, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loggerPause");
        }
        if ((i11 & 1) != 0) {
            str = baseActivity.TAG;
        }
        baseActivity.R(str, activity);
    }

    private final void U(String tag, Activity activity) {
        ai.a.f619a.f(tag, activity.getLocalClassName() + " onResume");
    }

    static /* synthetic */ void V(BaseActivity baseActivity, String str, Activity activity, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loggerResume");
        }
        if ((i11 & 1) != 0) {
            str = baseActivity.TAG;
        }
        baseActivity.U(str, activity);
    }

    public c W() {
        return b.a.a(this);
    }

    @Override // com.tn.tranpay.report.b
    public c getLogViewConfig() {
        return (c) this.logViewConfig.getValue();
    }

    public abstract a getViewBinding();

    public void initView(Bundle savedInstanceState) {
    }

    public boolean isChangeStatusBar() {
        return false;
    }

    public boolean isStatusDark() {
        return true;
    }

    public boolean isTranslucent() {
        return false;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setMViewBinding(getViewBinding());
        initView(savedInstanceState);
        setStatusBar();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        b.a.b(this);
        T(this, null, this, 1, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        b.a.c(this);
        V(this, null, this, 1, null);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    public boolean setImmersionStatusBar() {
        return true;
    }

    public final void setMViewBinding(a aVar) {
        Intrinsics.h(aVar, "<set-?>");
        this.mViewBinding = aVar;
    }

    public void setStatusBar() {
        if (setImmersionStatusBar()) {
            ImmersionBar immersionBarFullScreen = ImmersionBar.with(this).fullScreen(true);
            if (isChangeStatusBar()) {
                immersionBarFullScreen.statusBarColor(statusColor());
            }
            immersionBarFullScreen.hideBar(BarHide.FLAG_HIDE_NAVIGATION_BAR);
            if (isTranslucent()) {
                immersionBarFullScreen.statusBarAlpha(0.0f);
            } else {
                immersionBarFullScreen.statusBarAlpha(1.0f);
            }
            if (isStatusDark()) {
                immersionBarFullScreen.statusBarDarkFont(true);
            }
            immersionBarFullScreen.init();
        }
    }

    public int statusColor() {
        return R$color.white;
    }
}
