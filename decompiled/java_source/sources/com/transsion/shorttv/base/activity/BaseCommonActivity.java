package com.transsion.shorttv.base.activity;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import nh.m;
import nh.n;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\b&\u0018\u0000 +*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u0004:\u0001%B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\f\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00028\u0000H&¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000bH$¢\u0006\u0004\b\u0013\u0010\u0006J\u001f\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001a\u0010\u0006J\u000f\u0010\u001b\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u001b\u0010\u0006J\u000f\u0010\u001c\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u001c\u0010\u0006J\u000f\u0010\u001d\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001d\u0010\u0006J\u000f\u0010\u001e\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u001e\u0010\u0006J\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b#\u0010$R\"\u0010*\u001a\u00028\u00008\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010\u0012\"\u0004\b(\u0010)¨\u0006,"}, d2 = {"Lcom/transsion/shorttv/base/activity/BaseCommonActivity;", "Lg4/a;", "T", "Landroidx/appcompat/app/AppCompatActivity;", "Lnh/n;", "<init>", "()V", "Landroid/content/Context;", "context", "Landroid/os/Bundle;", "bundle", "", "intercept", "(Landroid/content/Context;Landroid/os/Bundle;)V", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "getViewBinding", "()Lg4/a;", "setView", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "onDisconnected", "onResume", "onPause", "finish", "onDestroy", "", "isMonitorNetworkState", "()Z", "", "getPageName", "()Ljava/lang/String;", "a", "Lg4/a;", "getMViewBinding", "setMViewBinding", "(Lg4/a;)V", "mViewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class BaseCommonActivity<T extends g4.a> extends AppCompatActivity implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public g4.a mViewBinding;

    @Override // android.app.Activity
    public void finish() {
        if (getIntent().getBooleanExtra(com.transsion.baseui.activity.BaseCommonActivity.EXTRA_SHOW_HOME_BUTTON, false)) {
            finishAffinity();
        }
        super.finish();
    }

    public final g4.a getMViewBinding() {
        g4.a aVar = this.mViewBinding;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.z("mViewBinding");
        return null;
    }

    public String getPageName() {
        return "";
    }

    public abstract g4.a getViewBinding();

    public final void intercept(Context context, Bundle bundle) {
        Object objM454constructorimpl;
        Set<String> setKeySet;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (bundle == null) {
                return;
            }
            String strN = ih.b.f65241a.n();
            boolean z10 = TextUtils.equals(strN, PrepareException.ERROR_MINI_APP_CLOSE) || TextUtils.equals(strN, "10");
            if (context != null && z10) {
                bundle.setClassLoader(context.getClass().getClassLoader());
                Bundle bundle2 = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
                if (bundle2 != null && (setKeySet = bundle2.keySet()) != null) {
                    for (String str : setKeySet) {
                        Object obj = bundle2.get(str);
                        Bundle bundle3 = obj instanceof Bundle ? (Bundle) obj : null;
                        ClassLoader classLoader = bundle3 != null ? bundle3.getClassLoader() : null;
                        lg.a.f68839a.j("BaseCommonActivity --> intercept() --> classLoader = " + classLoader, true);
                        Object obj2 = bundle2.get(str);
                        Bundle bundle4 = obj2 instanceof Bundle ? (Bundle) obj2 : null;
                        if (bundle4 != null) {
                            bundle4.setClassLoader(context.getClass().getClassLoader());
                        }
                    }
                }
                lg.a.f68839a.j("BaseCommonActivity --> intercept() --> 当前系统版本9、10 替换BootClassLoader -- ClassLoader", true);
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        lg.a.f68839a.j("BaseCommonActivity --> intercept() --> it = " + thM457exceptionOrNullimpl, true);
    }

    public boolean isMonitorNetworkState() {
        return true;
    }

    @Override // nh.n
    public void onConnected() {
        n.a.a(this);
    }

    @Override // nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        intercept(this, savedInstanceState);
        super.onCreate(savedInstanceState);
        if (isMonitorNetworkState()) {
            m.f70474a.l(this);
        }
        setMViewBinding(getViewBinding());
        setView();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (isMonitorNetworkState()) {
            m.f70474a.m(this);
        }
        g.b(null, this, 1, null);
    }

    @Override // nh.n
    public void onDisconnected() {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        g.g(null, this, 1, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        g.k(null, this, 1, null);
    }

    public final void setMViewBinding(g4.a aVar) {
        Intrinsics.h(aVar, "<set-?>");
        this.mViewBinding = aVar;
    }

    protected abstract void setView();
}
