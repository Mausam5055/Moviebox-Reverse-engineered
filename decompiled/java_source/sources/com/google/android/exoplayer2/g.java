package com.google.android.exoplayer2;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class g implements o2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final k3.d f25094a = new k3.d();

    protected g() {
    }

    private int H() {
        int repeatMode = getRepeatMode();
        if (repeatMode == 1) {
            return 0;
        }
        return repeatMode;
    }

    private void L(long j11) {
        long currentPosition = getCurrentPosition() + j11;
        long duration = getDuration();
        if (duration != C.TIME_UNSET) {
            currentPosition = Math.min(currentPosition, duration);
        }
        seekTo(Math.max(currentPosition, 0L));
    }

    @Override // com.google.android.exoplayer2.o2
    public final void B(v1 v1Var) {
        N(Collections.singletonList(v1Var));
    }

    public final long E() {
        k3 currentTimeline = getCurrentTimeline();
        return currentTimeline.u() ? C.TIME_UNSET : currentTimeline.r(t(), this.f25094a).g();
    }

    public final int F() {
        k3 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -1;
        }
        return currentTimeline.i(t(), H(), getShuffleModeEnabled());
    }

    public final int G() {
        k3 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -1;
        }
        return currentTimeline.p(t(), H(), getShuffleModeEnabled());
    }

    public final void I() {
        J(t());
    }

    public final void J(int i11) {
        seekTo(i11, C.TIME_UNSET);
    }

    public final void K() {
        int iF = F();
        if (iF != -1) {
            J(iF);
        }
    }

    public final void M() {
        int iG = G();
        if (iG != -1) {
            J(iG);
        }
    }

    public final void N(List list) {
        e(list, true);
    }

    @Override // com.google.android.exoplayer2.o2
    public final void f() {
        if (getCurrentTimeline().u() || isPlayingAd()) {
            return;
        }
        boolean zQ = q();
        if (z() && !s()) {
            if (zQ) {
                M();
            }
        } else if (!zQ || getCurrentPosition() > o()) {
            seekTo(0L);
        } else {
            M();
        }
    }

    @Override // com.google.android.exoplayer2.o2
    public final boolean g() {
        return F() != -1;
    }

    @Override // com.google.android.exoplayer2.o2
    public final boolean h(int i11) {
        return n().c(i11);
    }

    @Override // com.google.android.exoplayer2.o2
    public final boolean i() {
        k3 currentTimeline = getCurrentTimeline();
        return !currentTimeline.u() && currentTimeline.r(t(), this.f25094a).f25177i;
    }

    @Override // com.google.android.exoplayer2.o2
    public final boolean isPlaying() {
        return getPlaybackState() == 3 && getPlayWhenReady() && j() == 0;
    }

    @Override // com.google.android.exoplayer2.o2
    public final void m() {
        if (getCurrentTimeline().u() || isPlayingAd()) {
            return;
        }
        if (g()) {
            K();
        } else if (z() && i()) {
            I();
        }
    }

    @Override // com.google.android.exoplayer2.o2
    public final void pause() {
        setPlayWhenReady(false);
    }

    @Override // com.google.android.exoplayer2.o2
    public final void play() {
        setPlayWhenReady(true);
    }

    @Override // com.google.android.exoplayer2.o2
    public final boolean q() {
        return G() != -1;
    }

    @Override // com.google.android.exoplayer2.o2
    public final boolean s() {
        k3 currentTimeline = getCurrentTimeline();
        return !currentTimeline.u() && currentTimeline.r(t(), this.f25094a).f25176h;
    }

    @Override // com.google.android.exoplayer2.o2
    public final void seekTo(long j11) {
        seekTo(t(), j11);
    }

    @Override // com.google.android.exoplayer2.o2
    public final void v() {
        L(r());
    }

    @Override // com.google.android.exoplayer2.o2
    public final void w() {
        L(-y());
    }

    @Override // com.google.android.exoplayer2.o2
    public final boolean z() {
        k3 currentTimeline = getCurrentTimeline();
        return !currentTimeline.u() && currentTimeline.r(t(), this.f25094a).i();
    }
}
