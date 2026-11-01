package androidx.media3.exoplayer.dash;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.s2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import g2.u;

/* JADX INFO: loaded from: classes2.dex */
final class e implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f11461a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long[] f11463c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f11464d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a2.f f11465e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f11466f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f11467g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w2.c f11462b = new w2.c();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f11468h = C.TIME_UNSET;

    public e(a2.f fVar, r rVar, boolean z10) {
        this.f11461a = rVar;
        this.f11465e = fVar;
        this.f11463c = fVar.f77b;
        d(fVar, z10);
    }

    public String a() {
        return this.f11465e.a();
    }

    public void b(long j11) {
        int iD = a1.d(this.f11463c, j11, true, false);
        this.f11467g = iD;
        if (!this.f11464d || iD != this.f11463c.length) {
            j11 = C.TIME_UNSET;
        }
        this.f11468h = j11;
    }

    @Override // g2.u
    public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        int i12 = this.f11467g;
        boolean z10 = i12 == this.f11463c.length;
        if (z10 && !this.f11464d) {
            decoderInputBuffer.setFlags(4);
            return -4;
        }
        if ((i11 & 2) != 0 || !this.f11466f) {
            s2Var.f12570b = this.f11461a;
            this.f11466f = true;
            return -5;
        }
        if (z10) {
            return -3;
        }
        if ((i11 & 1) == 0) {
            this.f11467g = i12 + 1;
        }
        if ((i11 & 4) == 0) {
            byte[] bArrA = this.f11462b.a(this.f11465e.f76a[i12]);
            decoderInputBuffer.b(bArrA.length);
            decoderInputBuffer.f10918c.put(bArrA);
        }
        decoderInputBuffer.f10920e = this.f11463c[i12];
        decoderInputBuffer.setFlags(1);
        return -4;
    }

    public void d(a2.f fVar, boolean z10) {
        int i11 = this.f11467g;
        long j11 = i11 == 0 ? -9223372036854775807L : this.f11463c[i11 - 1];
        this.f11464d = z10;
        this.f11465e = fVar;
        long[] jArr = fVar.f77b;
        this.f11463c = jArr;
        long j12 = this.f11468h;
        if (j12 != C.TIME_UNSET) {
            b(j12);
        } else if (j11 != C.TIME_UNSET) {
            this.f11467g = a1.d(jArr, j11, false, false);
        }
    }

    @Override // g2.u
    public boolean isReady() {
        return true;
    }

    @Override // g2.u
    public void maybeThrowError() {
    }

    @Override // g2.u
    public int skipData(long j11) {
        int iMax = Math.max(this.f11467g, a1.d(this.f11463c, j11, true, false));
        int i11 = iMax - this.f11467g;
        this.f11467g = iMax;
        return i11;
    }
}
