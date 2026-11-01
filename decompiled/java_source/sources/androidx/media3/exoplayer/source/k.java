package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.s2;
import androidx.media3.exoplayer.v2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class k implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Uri f12838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g2.z f12839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f12840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f12841d = new AtomicBoolean();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicReference f12842e = new AtomicReference();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.google.common.util.concurrent.r f12843f;

    private final class a implements g2.u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f12844a = 0;

        public a() {
        }

        @Override // g2.u
        public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11) {
            int i12 = this.f12844a;
            if (i12 == 2) {
                decoderInputBuffer.addFlag(4);
                return -4;
            }
            if ((i11 & 2) != 0 || i12 == 0) {
                s2Var.f12570b = k.this.f12839b.b(0).a(0);
                this.f12844a = 1;
                return -5;
            }
            if (!k.this.f12841d.get()) {
                return -3;
            }
            int length = k.this.f12840c.length;
            decoderInputBuffer.addFlag(1);
            decoderInputBuffer.f10920e = 0L;
            if ((i11 & 4) == 0) {
                decoderInputBuffer.b(length);
                decoderInputBuffer.f10918c.put(k.this.f12840c, 0, length);
            }
            if ((i11 & 1) == 0) {
                this.f12844a = 2;
            }
            return -4;
        }

        @Override // g2.u
        public boolean isReady() {
            return k.this.f12841d.get();
        }

        @Override // g2.u
        public void maybeThrowError() throws IOException {
            Throwable th2 = (Throwable) k.this.f12842e.get();
            if (th2 != null) {
                throw new IOException(th2);
            }
        }

        @Override // g2.u
        public int skipData(long j11) {
            return 0;
        }
    }

    public k(Uri uri, String str, j jVar) {
        this.f12838a = uri;
        this.f12839b = new g2.z(new androidx.media3.common.f0(new androidx.media3.common.r.b().u0(str).N()));
        this.f12840c = uri.toString().getBytes(StandardCharsets.UTF_8);
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean a(v2 v2Var) {
        return !this.f12841d.get();
    }

    @Override // androidx.media3.exoplayer.source.q
    public long b(long j11, c4 c4Var) {
        return j11;
    }

    @Override // androidx.media3.exoplayer.source.q
    public void discardBuffer(long j11, boolean z10) {
    }

    @Override // androidx.media3.exoplayer.source.q
    public long e(j2.z[] zVarArr, boolean[] zArr, g2.u[] uVarArr, boolean[] zArr2, long j11) {
        for (int i11 = 0; i11 < zVarArr.length; i11++) {
            if (uVarArr[i11] != null && (zVarArr[i11] == null || !zArr[i11])) {
                uVarArr[i11] = null;
            }
            if (uVarArr[i11] == null && zVarArr[i11] != null) {
                uVarArr[i11] = new a();
                zArr2[i11] = true;
            }
        }
        return j11;
    }

    @Override // androidx.media3.exoplayer.source.q
    public void g(q.a aVar, long j11) {
        aVar.c(this);
        new j.a(this.f12838a);
        throw null;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getBufferedPositionUs() {
        return this.f12841d.get() ? Long.MIN_VALUE : 0L;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public long getNextLoadPositionUs() {
        return this.f12841d.get() ? Long.MIN_VALUE : 0L;
    }

    @Override // androidx.media3.exoplayer.source.q
    public g2.z getTrackGroups() {
        return this.f12839b;
    }

    public void i() {
        com.google.common.util.concurrent.r rVar = this.f12843f;
        if (rVar != null) {
            rVar.cancel(false);
        }
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public boolean isLoading() {
        return !this.f12841d.get();
    }

    @Override // androidx.media3.exoplayer.source.q
    public void maybeThrowPrepareError() {
    }

    @Override // androidx.media3.exoplayer.source.q
    public long readDiscontinuity() {
        return C.TIME_UNSET;
    }

    @Override // androidx.media3.exoplayer.source.q, androidx.media3.exoplayer.source.f0
    public void reevaluateBuffer(long j11) {
    }

    @Override // androidx.media3.exoplayer.source.q
    public long seekToUs(long j11) {
        return j11;
    }
}
