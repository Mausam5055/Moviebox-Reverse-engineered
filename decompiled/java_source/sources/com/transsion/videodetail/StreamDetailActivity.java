package com.transsion.videodetail;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u0000 \u001d2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u001eB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\u0005J\u000f\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/transsion/videodetail/StreamDetailActivity;", "Lcom/transsion/videodetail/BaseDetailActivity;", "Lcn/a;", "Lcom/transsion/videofloat/manager/c;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "s0", "retryLoadData", "J0", "()Lcn/a;", "", "getPageName", "()Ljava/lang/String;", "onResume", "onPause", "j", "", "isChangeStatusBar", "()Z", "isShowMemberPushViewTip", "", TmcStartParams.KEY_URL_SHORT, "J", "tsEnter", "v", "a", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class StreamDetailActivity extends BaseDetailActivity<cn.a> implements com.transsion.videofloat.manager.c {

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    public long tsEnter;

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: J0, reason: merged with bridge method [inline-methods] */
    public cn.a getViewBinding() {
        cn.a aVarC = cn.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override // com.transsion.baseui.activity.BaseCommonActivity
    public String getPageName() {
        return "subjectdetail";
    }

    @Override // com.transsion.videodetail.BaseDetailActivity, com.transsion.baseui.activity.BaseNewActivity
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseMusicFloatActivity
    public boolean isShowMemberPushViewTip() {
        return true;
    }

    @Override // com.transsion.videofloat.manager.c
    public void j() {
        Fragment mFragment = getMFragment();
        StreamDetailFragment streamDetailFragment = mFragment instanceof StreamDetailFragment ? (StreamDetailFragment) mFragment : null;
        if (streamDetailFragment != null) {
            streamDetailFragment.Y1();
        }
    }

    @Override // com.transsion.videodetail.BaseDetailActivity, com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        super.onCreate(savedInstanceState);
        com.transsion.baselib.report.l.f43359a.x(3, this);
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (isFinishing()) {
            Fragment mFragment = getMFragment();
            StreamDetailFragment streamDetailFragment = mFragment instanceof StreamDetailFragment ? (StreamDetailFragment) mFragment : null;
            if (streamDetailFragment != null) {
                streamDetailFragment.Y1();
            }
            ox.e.f72197a.b().i(this);
        }
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseMusicFloatActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // com.transsion.videodetail.BaseDetailActivity, com.transsion.baseui.activity.BaseNewActivity
    public void retryLoadData() {
        z0();
        if (!nh.m.f70474a.e()) {
            B0();
        } else {
            x0();
            s0();
        }
    }

    @Override // com.transsion.videodetail.BaseDetailActivity, com.transsion.baseui.activity.BaseNewActivity
    public void s0() {
        if (getMFragment() == null) {
            H0(getSupportFragmentManager().k0("VideoDetailFragment"));
            if (getMFragment() == null) {
                FragmentManager supportFragmentManager = getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                androidx.fragment.app.w wVarP = supportFragmentManager.p();
                Intrinsics.g(wVarP, "beginTransaction()");
                StreamDetailFragment streamDetailFragmentA = StreamDetailFragment.INSTANCE.a();
                Bundle bundle = new Bundle();
                bundle.putString("id", this.id);
                bundle.putString("ops", this.ops);
                bundle.putBoolean("auto_download", this.autoDownload);
                bundle.putBoolean("auto_play", this.autoPlay);
                bundle.putString("auto_play_resource_id", this.autoPlayResourceId);
                bundle.putString("module_name", this.moduleName);
                bundle.putInt("yy_preload_id", this.preloadId);
                bundle.putInt("season", this.curSeason);
                bundle.putInt("episode", this.targetEp);
                bundle.putLong("ts_enter", this.tsEnter);
                streamDetailFragmentA.setArguments(bundle);
                wVarP.t(com.transsion.moviedetail.R$id.container, streamDetailFragmentA, "VideoDetailFragment");
                H0(streamDetailFragmentA);
                wVarP.j();
            }
        }
    }
}
