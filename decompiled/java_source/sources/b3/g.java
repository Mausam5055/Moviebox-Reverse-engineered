package b3;

import androidx.media3.common.util.j0;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16210a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16211b;

    private g(long j11, long j12) {
        this.f16210a = j11;
        this.f16211b = j12;
    }

    static g b(j0 j0Var, long j11, p0 p0Var) {
        long jC = c(j0Var, j11);
        return new g(jC, p0Var.b(jC));
    }

    static long c(j0 j0Var, long j11) {
        long jH = j0Var.H();
        return (128 & jH) != 0 ? 8589934591L & ((((jH & 1) << 32) | j0Var.J()) + j11) : C.TIME_UNSET;
    }

    @Override // b3.b
    public String toString() {
        return "SCTE-35 TimeSignalCommand { ptsTime=" + this.f16210a + ", playbackPositionUs= " + this.f16211b + " }";
    }
}
