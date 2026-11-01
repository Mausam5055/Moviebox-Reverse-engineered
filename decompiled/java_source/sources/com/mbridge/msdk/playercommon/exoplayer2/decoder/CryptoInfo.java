package com.mbridge.msdk.playercommon.exoplayer2.decoder;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import androidx.media3.decoder.d;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes5.dex */
public final class CryptoInfo {
    public int clearBlocks;
    public int encryptedBlocks;
    private final MediaCodec.CryptoInfo frameworkCryptoInfo;

    /* JADX INFO: renamed from: iv, reason: collision with root package name */
    public byte[] f36778iv;
    public byte[] key;
    public int mode;
    public int[] numBytesOfClearData;
    public int[] numBytesOfEncryptedData;
    public int numSubSamples;
    private final PatternHolderV24 patternHolder;

    @TargetApi(24)
    private static final class PatternHolderV24 {
        private final MediaCodec.CryptoInfo frameworkCryptoInfo;
        private final MediaCodec.CryptoInfo.Pattern pattern;

        private PatternHolderV24(MediaCodec.CryptoInfo cryptoInfo) {
            this.frameworkCryptoInfo = cryptoInfo;
            this.pattern = d.a(0, 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void set(int i11, int i12) {
            this.pattern.set(i11, i12);
            this.frameworkCryptoInfo.setPattern(this.pattern);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CryptoInfo() {
        int i11 = Util.SDK_INT;
        Object[] objArr = 0;
        MediaCodec.CryptoInfo cryptoInfoNewFrameworkCryptoInfoV16 = i11 >= 16 ? newFrameworkCryptoInfoV16() : null;
        this.frameworkCryptoInfo = cryptoInfoNewFrameworkCryptoInfoV16;
        this.patternHolder = i11 >= 24 ? new PatternHolderV24(cryptoInfoNewFrameworkCryptoInfoV16) : null;
    }

    @TargetApi(16)
    private MediaCodec.CryptoInfo newFrameworkCryptoInfoV16() {
        return new MediaCodec.CryptoInfo();
    }

    @TargetApi(16)
    private void updateFrameworkCryptoInfoV16() {
        MediaCodec.CryptoInfo cryptoInfo = this.frameworkCryptoInfo;
        cryptoInfo.numSubSamples = this.numSubSamples;
        cryptoInfo.numBytesOfClearData = this.numBytesOfClearData;
        cryptoInfo.numBytesOfEncryptedData = this.numBytesOfEncryptedData;
        cryptoInfo.key = this.key;
        cryptoInfo.iv = this.f36778iv;
        cryptoInfo.mode = this.mode;
        if (Util.SDK_INT >= 24) {
            this.patternHolder.set(this.encryptedBlocks, this.clearBlocks);
        }
    }

    @TargetApi(16)
    public MediaCodec.CryptoInfo getFrameworkCryptoInfoV16() {
        return this.frameworkCryptoInfo;
    }

    public void set(int i11, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i12, int i13, int i14) {
        this.numSubSamples = i11;
        this.numBytesOfClearData = iArr;
        this.numBytesOfEncryptedData = iArr2;
        this.key = bArr;
        this.f36778iv = bArr2;
        this.mode = i12;
        this.encryptedBlocks = i13;
        this.clearBlocks = i14;
        if (Util.SDK_INT >= 16) {
            updateFrameworkCryptoInfoV16();
        }
    }
}
