package com.transsion.rewardscenter.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.rewardscenter.R$id;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\b\u0005*\u0001\u001d\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\u0004R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lcom/transsion/rewardscenter/ui/RewardsCenterActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lvp/b;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "F0", "()Lvp/b;", "", "i0", "()Ljava/lang/String;", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "o0", "p0", "n0", "s0", "retryLoadData", "i", "Ljava/lang/String;", EventConstants.KEY_SOURCE, "j", "sceneId", "com/transsion/rewardscenter/ui/RewardsCenterActivity$a", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/rewardscenter/ui/RewardsCenterActivity$a;", "onBackPress", "RewardsCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RewardsCenterActivity extends BaseNewActivity<vp.b> {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String source;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String sceneId;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final a onBackPress = new a();

    public static final class a extends androidx.activity.u {
        a() {
            super(true);
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            RewardsCenterActivity.this.finish();
        }
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: F0, reason: merged with bridge method [inline-methods] */
    public vp.b getViewBinding() {
        vp.b bVarC = vp.b.c(getLayoutInflater());
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
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
        String stringExtra = getIntent().getStringExtra(EventConstants.KEY_SOURCE);
        String queryParameter = null;
        if (stringExtra == null) {
            Uri data = getIntent().getData();
            stringExtra = data != null ? data.getQueryParameter(EventConstants.KEY_SOURCE) : null;
        }
        this.source = stringExtra;
        String stringExtra2 = getIntent().getStringExtra("scene_id");
        if (stringExtra2 == null) {
            Uri data2 = getIntent().getData();
            if (data2 != null) {
                queryParameter = data2.getQueryParameter("sceneId");
            }
        } else {
            queryParameter = stringExtra2;
        }
        this.sceneId = queryParameter;
        Uri data3 = getIntent().getData();
        boolean z10 = false;
        if (data3 != null && Intrinsics.c(data3.getHost(), "member") && Intrinsics.c(data3.getPath(), "/adtask")) {
            z10 = true;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        androidx.fragment.app.w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        RewardsCenterFragment rewardsCenterFragment = new RewardsCenterFragment();
        Bundle bundle = new Bundle();
        bundle.putString(EventConstants.KEY_SOURCE, this.source);
        bundle.putString("scene_id", this.sceneId);
        bundle.putBoolean("is_from_ad_task", z10);
        rewardsCenterFragment.setArguments(bundle);
        wVarP.t(R$id.fl_content, rewardsCenterFragment, "RewardsCenter");
        wVarP.j();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "RewardsCenterActivity --> onCreate() --> source: " + this.source + ", sceneId: " + this.sceneId, false, 4, null);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        setIntent(intent);
        Fragment fragmentK0 = getSupportFragmentManager().k0("RewardsCenter");
        RewardsCenterFragment rewardsCenterFragment = fragmentK0 instanceof RewardsCenterFragment ? (RewardsCenterFragment) fragmentK0 : null;
        if (rewardsCenterFragment != null) {
            rewardsCenterFragment.A1();
        }
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void p0() {
        getOnBackPressedDispatcher().i(this, this.onBackPress);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void retryLoadData() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void s0() {
    }
}
