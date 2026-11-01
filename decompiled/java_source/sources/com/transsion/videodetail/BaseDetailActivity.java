package com.transsion.videodetail;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.memberapi.IMemberApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\n\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\n\u0010\bJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\bJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\bJ\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\bJ\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0016\u0010\bJ\u000f\u0010\u0017\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0014H\u0014¢\u0006\u0004\b\u0018\u0010\u0005J\u0019\u0010\u001b\u001a\u00020\u00142\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001f\u0010\u0005R\u0018\u0010\"\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010$\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b#\u0010!R\u0016\u0010'\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010)\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b(\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b*\u0010!R\u0018\u0010-\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b,\u0010!R\u0016\u00100\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00102\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b1\u0010/R\u0016\u00104\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b3\u0010/R\u0016\u00106\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b5\u0010&R\u0016\u00108\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b7\u0010&R$\u0010@\u001a\u0004\u0018\u0001098\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?¨\u0006A"}, d2 = {"Lcom/transsion/videodetail/BaseDetailActivity;", "Lg4/a;", "T", "Lcom/transsion/baseui/activity/BaseNewActivity;", "<init>", "()V", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "", "statusColor", "()I", "isMusicFloatingAttach", "", "i0", "()Ljava/lang/String;", "r0", "q0", "", "o0", "isMonitorNetworkState", "retryLoadData", "setView", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "p0", "n0", "s0", "i", "Ljava/lang/String;", "id", "j", "ops", CampaignEx.JSON_KEY_AD_K, "Z", "autoDownload", "l", "autoPlay", "m", "autoPlayResourceId", "n", "moduleName", "o", "I", "preloadId", TtmlNode.TAG_P, "curSeason", CampaignEx.JSON_KEY_AD_Q, "targetEp", CampaignEx.JSON_KEY_AD_R, "isMusicLikedFragment", "s", "isMusicFloatViewClick", "Landroidx/fragment/app/Fragment;", "t", "Landroidx/fragment/app/Fragment;", "G0", "()Landroidx/fragment/app/Fragment;", "H0", "(Landroidx/fragment/app/Fragment;)V", "mFragment", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseDetailActivity<T extends g4.a> extends BaseNewActivity<T> {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public String id;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    public String ops;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public boolean autoDownload;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    public boolean autoPlay;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    public String autoPlayResourceId;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    public String moduleName;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    public int preloadId;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public int curSeason;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    public int targetEp;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    public boolean isMusicLikedFragment;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    public boolean isMusicFloatViewClick;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private Fragment mFragment;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0() {
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            iMemberApi.x(0.0f);
        }
    }

    /* JADX INFO: renamed from: G0, reason: from getter */
    protected final Fragment getMFragment() {
        return this.mFragment;
    }

    protected final void H0(Fragment fragment) {
        this.mFragment = fragment;
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

    @Override // com.transsion.baseui.activity.BaseMusicFloatActivity
    public boolean isMusicFloatingAttach() {
        return false;
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

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void o0() {
        v0();
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void p0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean q0() {
        return true;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean r0() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void retryLoadData() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void s0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity
    protected void setView() {
        super.setView();
        getMViewBinding().getRoot().post(new Runnable() { // from class: com.transsion.videodetail.a
            @Override // java.lang.Runnable
            public final void run() {
                BaseDetailActivity.I0();
            }
        });
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public int statusColor() {
        return com.tn.lib.widget.R$color.black;
    }
}
