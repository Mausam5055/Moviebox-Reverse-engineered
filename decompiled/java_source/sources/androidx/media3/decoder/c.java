package androidx.media3.decoder;

import android.media.MediaCodec;
import androidx.media3.common.util.a1;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f10947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f10948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10949c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f10950d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f10951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10952f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f10953g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10954h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final MediaCodec.CryptoInfo f10955i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b f10956j;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final MediaCodec.CryptoInfo f10957a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final MediaCodec.CryptoInfo.Pattern f10958b;

        private b(MediaCodec.CryptoInfo cryptoInfo) {
            this.f10957a = cryptoInfo;
            this.f10958b = d.a(0, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(int i11, int i12) {
            this.f10958b.set(i11, i12);
            this.f10957a.setPattern(this.f10958b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f10955i = cryptoInfo;
        this.f10956j = a1.f10350a >= 24 ? new b(cryptoInfo) : null;
    }

    public MediaCodec.CryptoInfo a() {
        return this.f10955i;
    }

    public void b(int i11) {
        if (i11 == 0) {
            return;
        }
        if (this.f10950d == null) {
            int[] iArr = new int[1];
            this.f10950d = iArr;
            this.f10955i.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.f10950d;
        iArr2[0] = iArr2[0] + i11;
    }

    public void c(int i11, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i12, int i13, int i14) {
        this.f10952f = i11;
        this.f10950d = iArr;
        this.f10951e = iArr2;
        this.f10948b = bArr;
        this.f10947a = bArr2;
        this.f10949c = i12;
        this.f10953g = i13;
        this.f10954h = i14;
        MediaCodec.CryptoInfo cryptoInfo = this.f10955i;
        cryptoInfo.numSubSamples = i11;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i12;
        if (a1.f10350a >= 24) {
            ((b) androidx.media3.common.util.a.e(this.f10956j)).b(i13, i14);
        }
    }
}
