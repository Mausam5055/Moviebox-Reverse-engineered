package com.transsion.usercenter.message;

import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.usercenter.R$id;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fw.f1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000e\u0010\fJ\u000f\u0010\u000f\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0016\u0010\u0004¨\u0006\u0017"}, d2 = {"Lcom/transsion/usercenter/message/UserMessageActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lfw/f1;", "<init>", "()V", "F0", "()Lfw/f1;", "", "i0", "()Ljava/lang/String;", "", "isTranslucent", "()Z", "isChangeStatusBar", "q0", "isMonitorNetworkState", "", "o0", "p0", "n0", "retryLoadData", "s0", "t0", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UserMessageActivity extends BaseNewActivity<f1> {
    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: F0, reason: merged with bridge method [inline-methods] */
    public f1 getViewBinding() {
        f1 f1VarC = f1.c(getLayoutInflater());
        Intrinsics.g(f1VarC, "inflate(...)");
        return f1VarC;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public String i0() {
        return "";
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isChangeStatusBar() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void n0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void o0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void p0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean q0() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void retryLoadData() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void s0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void t0() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        wVarP.s(R$id.container, UserMessageFragment.INSTANCE.a());
        wVarP.j();
    }
}
