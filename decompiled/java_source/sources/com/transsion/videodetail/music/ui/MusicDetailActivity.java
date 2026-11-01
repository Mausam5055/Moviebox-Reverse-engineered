package com.transsion.videodetail.music.ui;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.transsion.moviedetail.R$id;
import com.transsion.videodetail.BaseDetailActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000f\u0010\u0004¨\u0006\u0010"}, d2 = {"Lcom/transsion/videodetail/music/ui/MusicDetailActivity;", "Lcom/transsion/videodetail/BaseDetailActivity;", "Lcn/a;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "", "q0", "()Z", "J0", "()Lcn/a;", "t0", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MusicDetailActivity extends BaseDetailActivity<cn.a> {
    @Override // com.transsion.baseui.activity.BaseCommonActivity
    /* JADX INFO: renamed from: J0, reason: merged with bridge method [inline-methods] */
    public cn.a getViewBinding() {
        cn.a aVarC = cn.a.c(getLayoutInflater());
        Intrinsics.g(aVarC, "inflate(...)");
        return aVarC;
    }

    @Override // com.transsion.videodetail.BaseDetailActivity, com.transsion.baseui.activity.BaseNewActivity, com.transsion.baseui.activity.BaseCommonActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        super.onCreate(savedInstanceState);
        com.transsion.baselib.report.l.f43359a.x(1, this);
        kx.a.f68401a.c("MusicDetailActivity --> onCreate() --> 音乐详情页单独处理");
        ox.c.f72196a.a();
    }

    @Override // com.transsion.videodetail.BaseDetailActivity, com.transsion.baseui.activity.BaseNewActivity
    public boolean q0() {
        return false;
    }

    @Override // com.transsion.baseui.activity.BaseNewActivity
    public void t0() {
        super.t0();
        if (getMFragment() == null) {
            H0(getSupportFragmentManager().k0("MusicDetailFragment"));
            if (getMFragment() == null) {
                FragmentManager supportFragmentManager = getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                androidx.fragment.app.w wVarP = supportFragmentManager.p();
                Intrinsics.g(wVarP, "beginTransaction()");
                MusicDetailFragment musicDetailFragmentA = MusicDetailFragment.INSTANCE.a();
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
                bundle.putBoolean("is_music_liked_fragment", this.isMusicLikedFragment);
                bundle.putBoolean("is_music_float_view_click", this.isMusicFloatViewClick);
                kx.a.f68401a.c(musicDetailFragmentA.getClassTag() + " --> loadDefaultData() --> isMusicLikedFragment = " + this.isMusicLikedFragment);
                musicDetailFragmentA.setArguments(bundle);
                wVarP.t(R$id.container, musicDetailFragmentA, "MusicDetailFragment");
                H0(musicDetailFragmentA);
                wVarP.j();
            }
        }
    }
}
