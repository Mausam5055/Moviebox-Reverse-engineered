package com.mbridge.msdk.playercommon.exoplayer2.upstream.crypto;

import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public final class AesFlushingCipher {
    private final int blockSize;
    private final Cipher cipher;
    private final byte[] flushedBlock;
    private int pendingXorBytes;
    private final byte[] zerosBlock;

    public AesFlushingCipher(int i11, byte[] bArr, long j11, long j12) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
            this.cipher = cipher;
            int blockSize = cipher.getBlockSize();
            this.blockSize = blockSize;
            this.zerosBlock = new byte[blockSize];
            this.flushedBlock = new byte[blockSize];
            long j13 = blockSize;
            long j14 = j12 / j13;
            int i12 = (int) (j12 % j13);
            cipher.init(i11, new SecretKeySpec(bArr, Util.splitAtFirst(cipher.getAlgorithm(), "/")[0]), new IvParameterSpec(getInitializationVector(j11, j14)));
            if (i12 != 0) {
                updateInPlace(new byte[i12], 0, i12);
            }
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e11) {
            throw new RuntimeException(e11);
        }
    }

    private byte[] getInitializationVector(long j11, long j12) {
        return ByteBuffer.allocate(16).putLong(j11).putLong(j12).array();
    }

    private int nonFlushingUpdate(byte[] bArr, int i11, int i12, byte[] bArr2, int i13) {
        try {
            return this.cipher.update(bArr, i11, i12, bArr2, i13);
        } catch (ShortBufferException e11) {
            throw new RuntimeException(e11);
        }
    }

    public void update(byte[] bArr, int i11, int i12, byte[] bArr2, int i13) {
        int i14 = i11;
        do {
            int i15 = this.pendingXorBytes;
            if (i15 <= 0) {
                int iNonFlushingUpdate = nonFlushingUpdate(bArr, i14, i12, bArr2, i13);
                if (i12 == iNonFlushingUpdate) {
                    return;
                }
                int i16 = i12 - iNonFlushingUpdate;
                int i17 = 0;
                Assertions.checkState(i16 < this.blockSize);
                int i18 = i13 + iNonFlushingUpdate;
                int i19 = this.blockSize - i16;
                this.pendingXorBytes = i19;
                Assertions.checkState(nonFlushingUpdate(this.zerosBlock, 0, i19, this.flushedBlock, 0) == this.blockSize);
                while (i17 < i16) {
                    bArr2[i18] = this.flushedBlock[i17];
                    i17++;
                    i18++;
                }
                return;
            }
            bArr2[i13] = (byte) (bArr[i14] ^ this.flushedBlock[this.blockSize - i15]);
            i13++;
            i14++;
            this.pendingXorBytes = i15 - 1;
            i12--;
        } while (i12 != 0);
    }

    public void updateInPlace(byte[] bArr, int i11, int i12) {
        update(bArr, i11, i12, bArr, i11);
    }
}
