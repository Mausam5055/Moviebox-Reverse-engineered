package com.transsion.usercenter.setting;

import android.os.Bundle;
import android.view.View;
import com.transsion.baseui.activity.BaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fw.j1;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/transsion/usercenter/setting/SettingNoticeActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Lfw/j1;", "<init>", "()V", "", "g0", "f0", "()Lfw/j1;", "", "isStatusDark", "()Z", "isTranslucent", "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/os/Bundle;)V", "a", "Z", "showNotice", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SettingNoticeActivity extends BaseActivity<j1> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private boolean showNotice = true;

    private final native void g0();

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void h0(SettingNoticeActivity settingNoticeActivity, View view);

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public native j1 getViewBinding();

    @Override // com.transsion.baseui.activity.BaseActivity
    public native void initView(Bundle savedInstanceState);

    @Override // com.transsion.baseui.activity.BaseActivity
    public native boolean isStatusDark();

    @Override // com.transsion.baseui.activity.BaseActivity
    public native boolean isTranslucent();
}
