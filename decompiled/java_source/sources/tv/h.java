package tv;

import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import kotlin.jvm.internal.Intrinsics;
import qv.r;

/* JADX INFO: loaded from: classes7.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f76391a;

    /* JADX INFO: loaded from: classes6.dex */
    public interface a {
        r a();

        UGCImmVideoDetailViewModel b();

        void c(boolean z10);

        void d();

        n e();

        com.transsion.ugcvideodetail.hepler.a f();

        UGCImmVideo getData();

        String getLogTag();

        com.transsion.player.orplayer.g getOrPlayer();

        void showLoading();
    }

    public h(a host) {
        Intrinsics.h(host, "host");
        this.f76391a = host;
    }

    public final void a(long j11, long j12) {
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelB = this.f76391a.b();
        if (uGCImmVideoDetailViewModelB != null) {
            uGCImmVideoDetailViewModelB.f1(this.f76391a.getData(), j12, j11);
        }
    }

    public final void b(long j11, boolean z10) {
        com.transsion.player.orplayer.g orPlayer;
        if (z10) {
            return;
        }
        long maxProgress = this.f76391a.a().f73877y.getMaxProgress();
        if (maxProgress <= 0 || maxProgress == 100 || (orPlayer = this.f76391a.getOrPlayer()) == null || maxProgress != orPlayer.getDuration()) {
            com.transsion.player.orplayer.g orPlayer2 = this.f76391a.getOrPlayer();
            long duration = orPlayer2 != null ? orPlayer2.getDuration() : 0L;
            if (duration <= 0) {
                lg.a.C0828a.f(lg.a.f68839a, this.f76391a.getLogTag(), "onProgress- duration <= 0, return", false, 4, null);
                return;
            }
            h(duration);
        }
        com.transsion.ugcvideodetail.hepler.a aVarF = this.f76391a.f();
        if (aVarF != null) {
            aVarF.l(j11);
        }
        this.f76391a.e().q(j11);
        g(j11);
        f(false);
    }

    public final void c() {
        com.transsion.ugcvideodetail.hepler.a aVarF = this.f76391a.f();
        if (aVarF != null) {
            aVarF.n();
        }
        AppCompatImageView ivUgcImmPlayStatus = this.f76391a.a().f73866n;
        Intrinsics.g(ivUgcImmPlayStatus, "ivUgcImmPlayStatus");
        jg.c.k(ivUgcImmPlayStatus);
        this.f76391a.e().p(false);
        this.f76391a.c(false);
    }

    public final void d() {
        com.transsion.ugcvideodetail.hepler.a aVarF = this.f76391a.f();
        if (aVarF != null) {
            aVarF.o();
        }
        this.f76391a.e().p(true);
        f(false);
        this.f76391a.c(true);
        AppCompatImageView ivUgcImmPlayStatus = this.f76391a.a().f73866n;
        Intrinsics.g(ivUgcImmPlayStatus, "ivUgcImmPlayStatus");
        jg.c.g(ivUgcImmPlayStatus);
    }

    public final void e() {
        com.transsion.player.orplayer.g orPlayer;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, this.f76391a.getLogTag(), "playVideo data:" + this.f76391a.getData() + " orPlayer:" + this.f76391a.getOrPlayer(), false, 4, null);
        UGCImmVideo data = this.f76391a.getData();
        if (data == null || (orPlayer = this.f76391a.getOrPlayer()) == null) {
            return;
        }
        if (!data.isFree()) {
            lg.a.C0828a.f(c0828a, this.f76391a.getLogTag(), "player- no free now, show pay dialog", false, 4, null);
            f(false);
        } else {
            if (orPlayer.isComplete()) {
                orPlayer.seekTo(0L);
            }
            orPlayer.play();
            lg.a.C0828a.f(c0828a, this.f76391a.getLogTag(), "player- startplay", false, 4, null);
        }
    }

    public final void f(boolean z10) {
        if (z10) {
            this.f76391a.showLoading();
        } else {
            this.f76391a.d();
        }
    }

    public final void g(long j11) {
        this.f76391a.a().f73877y.setProgress(j11);
        this.f76391a.a().f73874v.setProgress(j11);
    }

    public final void h(long j11) {
        this.f76391a.a().f73877y.setMax(j11);
        this.f76391a.a().f73874v.setMax(j11);
        lg.a.C0828a.f(lg.a.f68839a, this.f76391a.getLogTag(), "updateProgressMax: " + j11, false, 4, null);
    }
}
