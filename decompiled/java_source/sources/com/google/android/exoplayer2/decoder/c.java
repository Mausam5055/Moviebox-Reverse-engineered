package com.google.android.exoplayer2.decoder;

import android.media.MediaCodec;
import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f24863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f24864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f24865c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f24866d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f24867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f24868f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f24869g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f24870h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final MediaCodec.CryptoInfo f24871i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b f24872j;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final MediaCodec.CryptoInfo f24873a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final MediaCodec.CryptoInfo.Pattern f24874b;

        private b(MediaCodec.CryptoInfo cryptoInfo) {
            this.f24873a = cryptoInfo;
            this.f24874b = androidx.media3.decoder.d.a(0, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(int i11, int i12) {
            this.f24874b.set(i11, i12);
            this.f24873a.setPattern(this.f24874b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f24871i = cryptoInfo;
        this.f24872j = p0.f27626a >= 24 ? new b(cryptoInfo) : null;
    }

    public MediaCodec.CryptoInfo a() {
        return this.f24871i;
    }

    public void b(int i11) {
        if (i11 == 0) {
            return;
        }
        if (this.f24866d == null) {
            int[] iArr = new int[1];
            this.f24866d = iArr;
            this.f24871i.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.f24866d;
        iArr2[0] = iArr2[0] + i11;
    }

    public void c(int i11, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i12, int i13, int i14) {
        this.f24868f = i11;
        this.f24866d = iArr;
        this.f24867e = iArr2;
        this.f24864b = bArr;
        this.f24863a = bArr2;
        this.f24865c = i12;
        this.f24869g = i13;
        this.f24870h = i14;
        MediaCodec.CryptoInfo cryptoInfo = this.f24871i;
        cryptoInfo.numSubSamples = i11;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i12;
        if (p0.f27626a >= 24) {
            ((b) com.google.android.exoplayer2.util.a.e(this.f24872j)).b(i13, i14);
        }
    }
}
