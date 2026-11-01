package v9;

import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class l extends f {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private byte[] f77177j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile boolean f77178k;

    public l(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, int i11, o1 o1Var, int i12, Object obj, byte[] bArr) {
        super(kVar, nVar, i11, o1Var, i12, obj, C.TIME_UNSET, C.TIME_UNSET);
        this.f77177j = bArr == null ? p0.f27631f : bArr;
    }

    private void g(int i11) {
        byte[] bArr = this.f77177j;
        if (bArr.length < i11 + 16384) {
            this.f77177j = Arrays.copyOf(bArr, bArr.length + 16384);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.d
    public final void cancelLoad() {
        this.f77178k = true;
    }

    protected abstract void e(byte[] bArr, int i11);

    public byte[] f() {
        return this.f77177j;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.d
    public final void load() {
        try {
            this.f77140i.a(this.f77133b);
            int i11 = 0;
            int i12 = 0;
            while (i11 != -1 && !this.f77178k) {
                g(i12);
                i11 = this.f77140i.read(this.f77177j, i12, 16384);
                if (i11 != -1) {
                    i12 += i11;
                }
            }
            if (!this.f77178k) {
                e(this.f77177j, i12);
            }
        } finally {
            com.google.android.exoplayer2.upstream.m.a(this.f77140i);
        }
    }
}
