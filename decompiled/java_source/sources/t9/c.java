package t9;

import com.google.android.exoplayer2.source.b0;

/* JADX INFO: loaded from: classes4.dex */
public class c implements b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final b0[] f76097a;

    public c(b0[] b0VarArr) {
        this.f76097a = b0VarArr;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public boolean continueLoading(long j11) {
        boolean zContinueLoading;
        boolean z10 = false;
        do {
            long nextLoadPositionUs = getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                break;
            }
            zContinueLoading = false;
            for (b0 b0Var : this.f76097a) {
                long nextLoadPositionUs2 = b0Var.getNextLoadPositionUs();
                boolean z11 = nextLoadPositionUs2 != Long.MIN_VALUE && nextLoadPositionUs2 <= j11;
                if (nextLoadPositionUs2 == nextLoadPositionUs || z11) {
                    zContinueLoading |= b0Var.continueLoading(j11);
                }
            }
            z10 |= zContinueLoading;
        } while (zContinueLoading);
        return z10;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public final long getBufferedPositionUs() {
        long jMin = Long.MAX_VALUE;
        for (b0 b0Var : this.f76097a) {
            long bufferedPositionUs = b0Var.getBufferedPositionUs();
            if (bufferedPositionUs != Long.MIN_VALUE) {
                jMin = Math.min(jMin, bufferedPositionUs);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public final long getNextLoadPositionUs() {
        long jMin = Long.MAX_VALUE;
        for (b0 b0Var : this.f76097a) {
            long nextLoadPositionUs = b0Var.getNextLoadPositionUs();
            if (nextLoadPositionUs != Long.MIN_VALUE) {
                jMin = Math.min(jMin, nextLoadPositionUs);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public boolean isLoading() {
        for (b0 b0Var : this.f76097a) {
            if (b0Var.isLoading()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.b0
    public final void reevaluateBuffer(long j11) {
        for (b0 b0Var : this.f76097a) {
            b0Var.reevaluateBuffer(j11);
        }
    }
}
