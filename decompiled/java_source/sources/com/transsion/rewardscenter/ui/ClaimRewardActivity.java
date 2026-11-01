package com.transsion.rewardscenter.ui;

import androidx.fragment.app.FragmentManager;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.rewardscenter.R$id;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\b\u0007\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\u0004J\r\u0010\u0010\u001a\u00020\n¢\u0006\u0004\b\u0010\u0010\u0004¨\u0006\u0013"}, d2 = {"Lcom/transsion/rewardscenter/ui/ClaimRewardActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lvp/a;", "<init>", "()V", "F0", "()Lvp/a;", "", "i0", "()Ljava/lang/String;", "", "o0", "p0", "n0", "s0", "retryLoadData", "G0", "i", "a", "RewardsCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ClaimRewardActivity extends BaseNewActivity<vp.a> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f51204j = BaseNewActivity.f43389h;

    public static final class b extends androidx.activity.u {
        b() {
            super(true);
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            ClaimRewardActivity.this.finish();
        }
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: F0, reason: merged with bridge method [inline-methods] */
    public vp.a getViewBinding() {
        vp.a aVarC = vp.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    public final void G0() {
        setResult(-1);
        finish();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public String i0() {
        return "";
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void n0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void o0() {
        String stringExtra = getIntent().getStringExtra("prize_id");
        if (stringExtra == null) {
            stringExtra = "";
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        androidx.fragment.app.w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        wVarP.t(R$id.fl_content, ClaimRewardFragment.INSTANCE.a(stringExtra), "ClaimRewardFragment");
        wVarP.j();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void p0() {
        getOnBackPressedDispatcher().i(this, new b());
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void retryLoadData() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void s0() {
    }
}
