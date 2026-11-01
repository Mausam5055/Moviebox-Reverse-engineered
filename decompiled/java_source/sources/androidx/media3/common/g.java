package androidx.media3.common;

import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g implements a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final e0.c f9976a = new e0.c();

    protected g() {
    }

    private int b0() {
        int repeatMode = getRepeatMode();
        if (repeatMode == 1) {
            return 0;
        }
        return repeatMode;
    }

    private void c0(int i11) {
        e0(-1, C.TIME_UNSET, i11, false);
    }

    private void d0(int i11) {
        e0(t(), C.TIME_UNSET, i11, true);
    }

    private void f0(long j11, int i11) {
        e0(t(), j11, i11, false);
    }

    private void g0(int i11, int i12) {
        e0(i11, C.TIME_UNSET, i12, false);
    }

    private void h0(int i11) {
        int iZ = Z();
        if (iZ == -1) {
            c0(i11);
        } else if (iZ == t()) {
            d0(i11);
        } else {
            g0(iZ, i11);
        }
    }

    private void i0(long j11, int i11) {
        long currentPosition = getCurrentPosition() + j11;
        long duration = getDuration();
        if (duration != C.TIME_UNSET) {
            currentPosition = Math.min(currentPosition, duration);
        }
        f0(Math.max(currentPosition, 0L), i11);
    }

    private void j0(int i11) {
        int iA0 = a0();
        if (iA0 == -1) {
            c0(i11);
        } else if (iA0 == t()) {
            d0(i11);
        } else {
            g0(iA0, i11);
        }
    }

    @Override // androidx.media3.common.a0
    public final void B() {
        G(0, Integer.MAX_VALUE);
    }

    @Override // androidx.media3.common.a0
    public final void E(int i11) {
        G(i11, i11 + 1);
    }

    @Override // androidx.media3.common.a0
    public final int F() {
        return getCurrentTimeline().p();
    }

    @Override // androidx.media3.common.a0
    public final void H(t tVar) {
        k0(ImmutableList.of(tVar));
    }

    @Override // androidx.media3.common.a0
    public final void J(t tVar) {
        Y(ImmutableList.of(tVar));
    }

    @Override // androidx.media3.common.a0
    public final void N(int i11, t tVar) {
        S(i11, ImmutableList.of(tVar));
    }

    @Override // androidx.media3.common.a0
    public final t O(int i11) {
        return getCurrentTimeline().n(i11, this.f9976a).f9953c;
    }

    public final void P(int i11, t tVar) {
        C(i11, i11 + 1, ImmutableList.of(tVar));
    }

    @Override // androidx.media3.common.a0
    public final long Q() {
        e0 currentTimeline = getCurrentTimeline();
        return currentTimeline.q() ? C.TIME_UNSET : currentTimeline.n(t(), this.f9976a).d();
    }

    public final void Y(List list) {
        S(Integer.MAX_VALUE, list);
    }

    public final int Z() {
        e0 currentTimeline = getCurrentTimeline();
        if (currentTimeline.q()) {
            return -1;
        }
        return currentTimeline.e(t(), b0(), getShuffleModeEnabled());
    }

    @Override // androidx.media3.common.a0
    public final void a(float f11) {
        b(getPlaybackParameters().b(f11));
    }

    public final int a0() {
        e0 currentTimeline = getCurrentTimeline();
        if (currentTimeline.q()) {
            return -1;
        }
        return currentTimeline.l(t(), b0(), getShuffleModeEnabled());
    }

    protected abstract void e0(int i11, long j11, int i12, boolean z10);

    @Override // androidx.media3.common.a0
    public final void f() {
        if (getCurrentTimeline().q() || isPlayingAd()) {
            c0(7);
            return;
        }
        boolean zQ = q();
        if (z() && !s()) {
            if (zQ) {
                j0(7);
                return;
            } else {
                c0(7);
                return;
            }
        }
        if (!zQ || getCurrentPosition() > o()) {
            f0(0L, 7);
        } else {
            j0(7);
        }
    }

    @Override // androidx.media3.common.a0
    public final boolean g() {
        return Z() != -1;
    }

    @Override // androidx.media3.common.a0
    public final boolean h(int i11) {
        return n().b(i11);
    }

    @Override // androidx.media3.common.a0
    public final boolean i() {
        e0 currentTimeline = getCurrentTimeline();
        return !currentTimeline.q() && currentTimeline.n(t(), this.f9976a).f9959i;
    }

    @Override // androidx.media3.common.a0
    public final boolean isPlaying() {
        return getPlaybackState() == 3 && getPlayWhenReady() && j() == 0;
    }

    public final void k0(List list) {
        e(list, true);
    }

    @Override // androidx.media3.common.a0
    public final void m() {
        if (getCurrentTimeline().q() || isPlayingAd()) {
            c0(9);
            return;
        }
        if (g()) {
            h0(9);
        } else if (z() && i()) {
            g0(t(), 9);
        } else {
            c0(9);
        }
    }

    @Override // androidx.media3.common.a0
    public final void pause() {
        setPlayWhenReady(false);
    }

    @Override // androidx.media3.common.a0
    public final void play() {
        setPlayWhenReady(true);
    }

    @Override // androidx.media3.common.a0
    public final boolean q() {
        return a0() != -1;
    }

    @Override // androidx.media3.common.a0
    public final boolean s() {
        e0 currentTimeline = getCurrentTimeline();
        return !currentTimeline.q() && currentTimeline.n(t(), this.f9976a).f9958h;
    }

    @Override // androidx.media3.common.a0
    public final void seekTo(int i11, long j11) {
        e0(i11, j11, 10, false);
    }

    @Override // androidx.media3.common.a0
    public final void seekTo(long j11) {
        f0(j11, 5);
    }

    @Override // androidx.media3.common.a0
    public final void seekToDefaultPosition() {
        g0(t(), 4);
    }

    @Override // androidx.media3.common.a0
    public final void v() {
        i0(r(), 12);
    }

    @Override // androidx.media3.common.a0
    public final void w() {
        i0(-y(), 11);
    }

    @Override // androidx.media3.common.a0
    public final boolean z() {
        e0 currentTimeline = getCurrentTimeline();
        return !currentTimeline.q() && currentTimeline.n(t(), this.f9976a).f();
    }
}
