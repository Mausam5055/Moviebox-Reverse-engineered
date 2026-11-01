package h2;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k extends e {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private byte[] f64343j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile boolean f64344k;

    public k(androidx.media3.datasource.a aVar, w1.h hVar, int i11, r rVar, int i12, Object obj, byte[] bArr) {
        super(aVar, hVar, i11, rVar, i12, obj, C.TIME_UNSET, C.TIME_UNSET);
        this.f64343j = bArr == null ? a1.f10355f : bArr;
    }

    private void g(int i11) {
        byte[] bArr = this.f64343j;
        if (bArr.length < i11 + 16384) {
            this.f64343j = Arrays.copyOf(bArr, bArr.length + 16384);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.d
    public final void cancelLoad() {
        this.f64344k = true;
    }

    protected abstract void e(byte[] bArr, int i11);

    public byte[] f() {
        return this.f64343j;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.d
    public final void load() {
        try {
            this.f64304i.a(this.f64297b);
            int i11 = 0;
            int i12 = 0;
            while (i11 != -1 && !this.f64344k) {
                g(i12);
                i11 = this.f64304i.read(this.f64343j, i12, 16384);
                if (i11 != -1) {
                    i12 += i11;
                }
            }
            if (!this.f64344k) {
                e(this.f64343j, i12);
            }
        } finally {
            w1.g.a(this.f64304i);
        }
    }
}
