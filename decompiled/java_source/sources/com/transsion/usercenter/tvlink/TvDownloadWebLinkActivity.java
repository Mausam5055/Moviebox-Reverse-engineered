package com.transsion.usercenter.tvlink;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.usercenter.R$id;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fw.n;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lfw/n;", "<init>", "()V", "e0", "()Lfw/n;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onBackPressed", "", "isStatusDark", "()Z", "isTranslucent", "", "a", "I", "initialTabIndex", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TvDownloadWebLinkActivity extends BaseActivity<n> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public int initialTabIndex;

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public n getViewBinding() {
        n nVarC = n.c(getLayoutInflater());
        Intrinsics.g(nVarC, "inflate(...)");
        return nVarC;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isStatusDark() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Fragment fragmentJ0 = getSupportFragmentManager().j0(R$id.fragmentContainer);
        TvDownloadWebLinkFragment tvDownloadWebLinkFragment = fragmentJ0 instanceof TvDownloadWebLinkFragment ? (TvDownloadWebLinkFragment) fragmentJ0 : null;
        if (tvDownloadWebLinkFragment == null || !tvDownloadWebLinkFragment.m0()) {
            super.onBackPressed();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
        FragmentContainerView fragmentContainer = ((n) getMViewBinding()).f62817b;
        Intrinsics.g(fragmentContainer, "fragmentContainer");
        jg.c.e(fragmentContainer);
        if (savedInstanceState == null) {
            getSupportFragmentManager().p().s(R$id.fragmentContainer, TvDownloadWebLinkFragment.INSTANCE.a(this.initialTabIndex)).i();
        }
    }
}
