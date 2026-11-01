package com.transsion.usercenter.devicemanagement.activity;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.devicemanagement.fragment.DeviceManagementFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fw.b;
import jg.c;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000e\u0010\fJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0004¨\u0006\u0015"}, d2 = {"Lcom/transsion/usercenter/devicemanagement/activity/DeviceManagementActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lfw/b;", "<init>", "()V", "F0", "()Lfw/b;", "", "i0", "()Ljava/lang/String;", "", "isTranslucent", "()Z", "isStatusDark", "r0", "", "o0", "p0", "n0", "s0", "retryLoadData", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DeviceManagementActivity extends BaseNewActivity<b> {
    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: F0, reason: merged with bridge method [inline-methods] */
    public b getViewBinding() {
        b bVarC = b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public String i0() {
        String string = getString(R$string.user_center_device_management_title);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isStatusDark() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isTranslucent() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void n0() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void o0() {
        FragmentContainerView fragmentContainer = ((b) getMViewBinding()).f62583b;
        Intrinsics.g(fragmentContainer, "fragmentContainer");
        c.e(fragmentContainer);
        v0();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void p0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean r0() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void retryLoadData() {
        s0();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void s0() {
        Fragment fragmentJ0 = getSupportFragmentManager().j0(R$id.fragmentContainer);
        DeviceManagementFragment deviceManagementFragment = fragmentJ0 instanceof DeviceManagementFragment ? (DeviceManagementFragment) fragmentJ0 : null;
        if (deviceManagementFragment != null) {
            deviceManagementFragment.refresh();
            return;
        }
        DeviceManagementFragment deviceManagementFragment2 = new DeviceManagementFragment();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        wVarP.s(R$id.fragmentContainer, deviceManagementFragment2);
        wVarP.j();
    }
}
