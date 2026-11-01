package com.transsion.ugcvideodetail.activity;

import android.os.Bundle;
import androidx.core.os.d;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.report.l;
import com.transsion.baseui.activity.BaseNewActivity;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsion.ugcvideodetail.fragment.UGCLocalVideoDetailFragment;
import com.transsion.videofloat.manager.c;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import nh.m;
import ox.e;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\bH\u0014¢\u0006\u0004\b\u0016\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001c\u0010\u0014J\u000f\u0010\u001d\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001d\u0010\u001aJ\u000f\u0010\u001e\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001e\u0010\u001aJ\u000f\u0010\u001f\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001f\u0010\u001aJ\u000f\u0010 \u001a\u00020\u0018H\u0016¢\u0006\u0004\b \u0010\u001aJ\u000f\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\bH\u0016¢\u0006\u0004\b$\u0010\u0005J\u000f\u0010%\u001a\u00020\bH\u0016¢\u0006\u0004\b%\u0010\u0005J\u000f\u0010&\u001a\u00020\bH\u0016¢\u0006\u0004\b&\u0010\u0005J\u000f\u0010'\u001a\u00020\bH\u0016¢\u0006\u0004\b'\u0010\u0005R\u0018\u0010*\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010+\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b,\u0010)R\u0018\u0010/\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b.\u0010)R\u0018\u00101\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b0\u0010)R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00108\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107¨\u00069"}, d2 = {"Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;", "Lcom/transsion/baseui/activity/BaseNewActivity;", "Lqv/a;", "Lcom/transsion/videofloat/manager/c;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "", "category", "G0", "(Ljava/lang/String;)V", "F0", "()Lqv/a;", "t0", "retryLoadData", "getPageName", "()Ljava/lang/String;", "onPause", "onDestroy", "j", "", "isMusicFloatingAttach", "()Z", "isChangeStatusBar", "i0", "r0", "q0", "isTranslucent", "isStatusDark", "", "statusColor", "()I", "o0", "p0", "n0", "s0", "i", "Ljava/lang/String;", "videoId", "resourceId", CampaignEx.JSON_KEY_AD_K, NativeComponentConstants.KEY_COMPONENT_TYPE, "l", "previousPageVideoId", "m", "previousPageTrackId", "Landroidx/fragment/app/Fragment;", "n", "Landroidx/fragment/app/Fragment;", "mFragment", "o", "Z", "hasHandledActivityLimit", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCLocalVideoDetailActivity extends BaseNewActivity<qv.a> implements c {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public String videoId;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    public String resourceId;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    public String type;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    public String previousPageVideoId;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    public String previousPageTrackId;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private Fragment mFragment;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean hasHandledActivityLimit;

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: F0, reason: merged with bridge method [inline-methods] */
    public qv.a getViewBinding() {
        qv.a aVarC = qv.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    public final void G0(String category) {
        if (this.hasHandledActivityLimit) {
            return;
        }
        l.f43359a.x(Intrinsics.c(category, UGCVideoType.MUSIC.getValue()) ? 1 : 3, this);
        this.hasHandledActivityLimit = true;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "/ugc_video/local_detail";
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public String i0() {
        return "";
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean isChangeStatusBar() {
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

    @Override // com.transsion.videofloat.manager.c
    public void j() {
        Fragment fragment = this.mFragment;
        if (fragment instanceof UGCLocalVideoDetailFragment) {
            UGCLocalVideoDetailFragment uGCLocalVideoDetailFragment = fragment instanceof UGCLocalVideoDetailFragment ? (UGCLocalVideoDetailFragment) fragment : null;
            if (uGCLocalVideoDetailFragment != null) {
                uGCLocalVideoDetailFragment.L0();
            }
        }
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void n0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void o0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        TheRouter.l(this);
        super.onCreate(savedInstanceState);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        j();
        e.f72197a.b().i(this);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (isFinishing()) {
            Fragment fragment = this.mFragment;
            if (fragment instanceof UGCLocalVideoDetailFragment) {
                UGCLocalVideoDetailFragment uGCLocalVideoDetailFragment = fragment instanceof UGCLocalVideoDetailFragment ? (UGCLocalVideoDetailFragment) fragment : null;
                if (uGCLocalVideoDetailFragment != null) {
                    uGCLocalVideoDetailFragment.L0();
                }
            }
        }
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void p0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean q0() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public boolean r0() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void retryLoadData() {
        z0();
        if (!m.f70474a.e()) {
            B0();
        } else {
            x0();
            s0();
        }
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void s0() {
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public int statusColor() {
        return R$color.black;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void t0() {
        if (this.mFragment == null) {
            Fragment fragmentK0 = getSupportFragmentManager().k0("VideoDetailFragment");
            this.mFragment = fragmentK0;
            if (fragmentK0 == null) {
                FragmentManager supportFragmentManager = getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                w wVarP = supportFragmentManager.p();
                Intrinsics.g(wVarP, "beginTransaction()");
                UGCLocalVideoDetailFragment uGCLocalVideoDetailFragmentA = UGCLocalVideoDetailFragment.INSTANCE.a();
                uGCLocalVideoDetailFragmentA.setArguments(d.b(TuplesKt.a("id", this.videoId), TuplesKt.a("resource_id", this.resourceId), TuplesKt.a("ugcCategory", this.type), TuplesKt.a("parent_video_id", this.previousPageVideoId), TuplesKt.a("parent_track_id", this.previousPageTrackId)));
                wVarP.t(R$id.container, uGCLocalVideoDetailFragmentA, "VideoDetailFragment");
                this.mFragment = uGCLocalVideoDetailFragmentA;
                wVarP.j();
            }
        }
    }
}
