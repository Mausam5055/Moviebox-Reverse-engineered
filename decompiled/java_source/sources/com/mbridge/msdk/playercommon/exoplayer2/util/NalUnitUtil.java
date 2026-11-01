package com.mbridge.msdk.playercommon.exoplayer2.util;

import android.util.Log;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class NalUnitUtil {
    public static final int EXTENDED_SAR = 255;
    private static final int H264_NAL_UNIT_TYPE_SEI = 6;
    private static final int H264_NAL_UNIT_TYPE_SPS = 7;
    private static final int H265_NAL_UNIT_TYPE_PREFIX_SEI = 39;
    private static final String TAG = "NalUnitUtil";
    public static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    public static final float[] ASPECT_RATIO_IDC_VALUES = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object scratchEscapePositionsLock = new Object();
    private static int[] scratchEscapePositions = new int[10];

    public static final class PpsData {
        public final boolean bottomFieldPicOrderInFramePresentFlag;
        public final int picParameterSetId;
        public final int seqParameterSetId;

        public PpsData(int i11, int i12, boolean z10) {
            this.picParameterSetId = i11;
            this.seqParameterSetId = i12;
            this.bottomFieldPicOrderInFramePresentFlag = z10;
        }
    }

    public static final class SpsData {
        public final boolean deltaPicOrderAlwaysZeroFlag;
        public final boolean frameMbsOnlyFlag;
        public final int frameNumLength;
        public final int height;
        public final int picOrderCntLsbLength;
        public final int picOrderCountType;
        public final float pixelWidthAspectRatio;
        public final boolean separateColorPlaneFlag;
        public final int seqParameterSetId;
        public final int width;

        public SpsData(int i11, int i12, int i13, float f11, boolean z10, boolean z11, int i14, int i15, int i16, boolean z12) {
            this.seqParameterSetId = i11;
            this.width = i12;
            this.height = i13;
            this.pixelWidthAspectRatio = f11;
            this.separateColorPlaneFlag = z10;
            this.frameMbsOnlyFlag = z11;
            this.frameNumLength = i14;
            this.picOrderCountType = i15;
            this.picOrderCntLsbLength = i16;
            this.deltaPicOrderAlwaysZeroFlag = z12;
        }
    }

    private NalUnitUtil() {
    }

    public static void clearPrefixFlags(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static void discardToSps(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = i11 + 1;
            if (i13 >= iPosition) {
                byteBuffer.clear();
                return;
            }
            int i14 = byteBuffer.get(i11) & 255;
            if (i12 == 3) {
                if (i14 == 1 && (byteBuffer.get(i13) & 31) == 7) {
                    ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                    byteBufferDuplicate.position(i11 - 3);
                    byteBufferDuplicate.limit(iPosition);
                    byteBuffer.position(0);
                    byteBuffer.put(byteBufferDuplicate);
                    return;
                }
            } else if (i14 == 0) {
                i12++;
            }
            if (i14 != 0) {
                i12 = 0;
            }
            i11 = i13;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x0093, code lost:
    
        r9 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int findNalUnit(byte[] bArr, int i11, int i12, boolean[] zArr) {
        int i13 = i12 - i11;
        Assertions.checkState(i13 >= 0);
        if (i13 == 0) {
            return i12;
        }
        if (zArr != null) {
            if (zArr[0]) {
                clearPrefixFlags(zArr);
                return i11 - 3;
            }
            if (i13 > 1 && zArr[1] && bArr[i11] == 1) {
                clearPrefixFlags(zArr);
                return i11 - 2;
            }
            if (i13 > 2 && zArr[2] && bArr[i11] == 0 && bArr[i11 + 1] == 1) {
                clearPrefixFlags(zArr);
                return i11 - 1;
            }
        }
        int i14 = i12 - 1;
        int i15 = i11 + 2;
        while (i15 < i14) {
            byte b11 = bArr[i15];
            if ((b11 & 254) == 0) {
                int i16 = i15 - 2;
                if (bArr[i16] == 0 && bArr[i15 - 1] == 0 && b11 == 1) {
                    if (zArr != null) {
                        clearPrefixFlags(zArr);
                    }
                    return i16;
                }
                i15 -= 2;
            }
            i15 += 3;
        }
        if (zArr != null) {
            boolean z10 = i13 > 2 ? false : false;
            zArr[0] = z10;
            zArr[1] = i13 <= 1 ? zArr[2] && bArr[i14] == 0 : bArr[i12 + (-2)] == 0 && bArr[i14] == 0;
            zArr[2] = bArr[i14] == 0;
        }
        return i12;
    }

    private static int findNextUnescapeIndex(byte[] bArr, int i11, int i12) {
        while (i11 < i12 - 2) {
            if (bArr[i11] == 0 && bArr[i11 + 1] == 0 && bArr[i11 + 2] == 3) {
                return i11;
            }
            i11++;
        }
        return i12;
    }

    public static int getH265NalUnitType(byte[] bArr, int i11) {
        return (bArr[i11 + 3] & 126) >> 1;
    }

    public static int getNalUnitType(byte[] bArr, int i11) {
        return bArr[i11 + 3] & 31;
    }

    public static boolean isNalUnitSei(String str, byte b11) {
        if (MimeTypes.VIDEO_H264.equals(str) && (b11 & 31) == 6) {
            return true;
        }
        return MimeTypes.VIDEO_H265.equals(str) && ((b11 & 126) >> 1) == 39;
    }

    public static PpsData parsePpsNalUnit(byte[] bArr, int i11, int i12) {
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i11, i12);
        parsableNalUnitBitArray.skipBits(8);
        int unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int unsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.skipBit();
        return new PpsData(unsignedExpGolombCodedInt, unsignedExpGolombCodedInt2, parsableNalUnitBitArray.readBit());
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:63:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:66:0x0100  */
    /* JADX WARN: Code duplicated, block: B:68:0x0104  */
    /* JADX WARN: Code duplicated, block: B:86:0x0158  */
    public static SpsData parseSpsNalUnit(byte[] bArr, int i11, int i12) {
        int unsignedExpGolombCodedInt;
        boolean z10;
        int unsignedExpGolombCodedInt2;
        boolean z11;
        boolean bit;
        int i13;
        int i14;
        int i15;
        float f11;
        float f12;
        int i16;
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i11, i12);
        parsableNalUnitBitArray.skipBits(8);
        int bits = parsableNalUnitBitArray.readBits(8);
        parsableNalUnitBitArray.skipBits(16);
        int unsignedExpGolombCodedInt3 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int i17 = 1;
        if (bits == 100 || bits == 110 || bits == 122 || bits == 244 || bits == 44 || bits == 83 || bits == 86 || bits == 118 || bits == 128 || bits == 138) {
            unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            boolean bit2 = unsignedExpGolombCodedInt == 3 ? parsableNalUnitBitArray.readBit() : false;
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.skipBit();
            if (parsableNalUnitBitArray.readBit()) {
                int i18 = unsignedExpGolombCodedInt != 3 ? 8 : 12;
                int i19 = 0;
                while (i19 < i18) {
                    if (parsableNalUnitBitArray.readBit()) {
                        skipScalingList(parsableNalUnitBitArray, i19 < 6 ? 16 : 64);
                    }
                    i19++;
                }
            }
            z10 = bit2;
        } else {
            unsignedExpGolombCodedInt = 1;
            z10 = false;
        }
        int unsignedExpGolombCodedInt4 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 4;
        int unsignedExpGolombCodedInt5 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        if (unsignedExpGolombCodedInt5 != 0) {
            if (unsignedExpGolombCodedInt5 == 1) {
                boolean bit3 = parsableNalUnitBitArray.readBit();
                parsableNalUnitBitArray.readSignedExpGolombCodedInt();
                parsableNalUnitBitArray.readSignedExpGolombCodedInt();
                long unsignedExpGolombCodedInt6 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                z10 = z10;
                for (int i20 = 0; i20 < unsignedExpGolombCodedInt6; i20++) {
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                }
                z11 = bit3;
                unsignedExpGolombCodedInt2 = 0;
            } else {
                unsignedExpGolombCodedInt2 = 0;
            }
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.skipBit();
            int unsignedExpGolombCodedInt7 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1;
            int unsignedExpGolombCodedInt8 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1;
            bit = parsableNalUnitBitArray.readBit();
            i13 = 2 - (bit ? 1 : 0);
            int i21 = unsignedExpGolombCodedInt8 * i13;
            if (!bit) {
                parsableNalUnitBitArray.skipBit();
            }
            parsableNalUnitBitArray.skipBit();
            i14 = unsignedExpGolombCodedInt7 * 16;
            i15 = i21 * 16;
            if (parsableNalUnitBitArray.readBit()) {
                int unsignedExpGolombCodedInt9 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                int unsignedExpGolombCodedInt10 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                int unsignedExpGolombCodedInt11 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                int unsignedExpGolombCodedInt12 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                if (unsignedExpGolombCodedInt != 0) {
                    if (unsignedExpGolombCodedInt == 3) {
                        i16 = 1;
                    } else {
                        i16 = 2;
                    }
                    i13 *= unsignedExpGolombCodedInt == 1 ? 2 : 1;
                    i17 = i16;
                }
                i14 -= (unsignedExpGolombCodedInt9 + unsignedExpGolombCodedInt10) * i17;
                i15 -= (unsignedExpGolombCodedInt11 + unsignedExpGolombCodedInt12) * i13;
            }
            int i22 = i14;
            int i23 = i15;
            if (parsableNalUnitBitArray.readBit() || !parsableNalUnitBitArray.readBit()) {
                f11 = 1.0f;
                f12 = f11;
            } else {
                int bits2 = parsableNalUnitBitArray.readBits(8);
                if (bits2 == 255) {
                    int bits3 = parsableNalUnitBitArray.readBits(16);
                    int bits4 = parsableNalUnitBitArray.readBits(16);
                    if (bits3 != 0 && bits4 != 0) {
                        f12 = bits3 / bits4;
                    }
                } else {
                    float[] fArr = ASPECT_RATIO_IDC_VALUES;
                    if (bits2 < fArr.length) {
                        f11 = fArr[bits2];
                    } else {
                        Log.w(TAG, "Unexpected aspect_ratio_idc value: " + bits2);
                    }
                    f12 = f11;
                }
                f11 = 1.0f;
                f12 = f11;
            }
            return new SpsData(unsignedExpGolombCodedInt3, i22, i23, f12, z10, bit, unsignedExpGolombCodedInt4, unsignedExpGolombCodedInt5, unsignedExpGolombCodedInt2, z11);
        }
        unsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 4;
        z11 = false;
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.skipBit();
        int unsignedExpGolombCodedInt13 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1;
        int unsignedExpGolombCodedInt14 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt() + 1;
        bit = parsableNalUnitBitArray.readBit();
        i13 = 2 - (bit ? 1 : 0);
        int i24 = unsignedExpGolombCodedInt14 * i13;
        if (!bit) {
            parsableNalUnitBitArray.skipBit();
        }
        parsableNalUnitBitArray.skipBit();
        i14 = unsignedExpGolombCodedInt13 * 16;
        i15 = i24 * 16;
        if (parsableNalUnitBitArray.readBit()) {
            int unsignedExpGolombCodedInt15 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt16 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt17 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt18 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            if (unsignedExpGolombCodedInt != 0) {
                if (unsignedExpGolombCodedInt == 3) {
                    i16 = 1;
                } else {
                    i16 = 2;
                }
                i13 *= unsignedExpGolombCodedInt == 1 ? 2 : 1;
                i17 = i16;
            }
            i14 -= (unsignedExpGolombCodedInt15 + unsignedExpGolombCodedInt16) * i17;
            i15 -= (unsignedExpGolombCodedInt17 + unsignedExpGolombCodedInt18) * i13;
        }
        int i25 = i14;
        int i26 = i15;
        if (parsableNalUnitBitArray.readBit()) {
            f11 = 1.0f;
            f12 = f11;
        } else {
            f11 = 1.0f;
            f12 = f11;
        }
        return new SpsData(unsignedExpGolombCodedInt3, i25, i26, f12, z10, bit, unsignedExpGolombCodedInt4, unsignedExpGolombCodedInt5, unsignedExpGolombCodedInt2, z11);
    }

    private static void skipScalingList(ParsableNalUnitBitArray parsableNalUnitBitArray, int i11) {
        int signedExpGolombCodedInt = 8;
        int i12 = 8;
        for (int i13 = 0; i13 < i11; i13++) {
            if (signedExpGolombCodedInt != 0) {
                signedExpGolombCodedInt = ((parsableNalUnitBitArray.readSignedExpGolombCodedInt() + i12) + 256) % 256;
            }
            if (signedExpGolombCodedInt != 0) {
                i12 = signedExpGolombCodedInt;
            }
        }
    }

    public static int unescapeStream(byte[] bArr, int i11) {
        int i12;
        synchronized (scratchEscapePositionsLock) {
            int iFindNextUnescapeIndex = 0;
            int i13 = 0;
            while (iFindNextUnescapeIndex < i11) {
                try {
                    iFindNextUnescapeIndex = findNextUnescapeIndex(bArr, iFindNextUnescapeIndex, i11);
                    if (iFindNextUnescapeIndex < i11) {
                        int[] iArr = scratchEscapePositions;
                        if (iArr.length <= i13) {
                            scratchEscapePositions = Arrays.copyOf(iArr, iArr.length * 2);
                        }
                        scratchEscapePositions[i13] = iFindNextUnescapeIndex;
                        iFindNextUnescapeIndex += 3;
                        i13++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            i12 = i11 - i13;
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < i13; i16++) {
                int i17 = scratchEscapePositions[i16] - i14;
                System.arraycopy(bArr, i14, bArr, i15, i17);
                int i18 = i15 + i17;
                int i19 = i18 + 1;
                bArr[i18] = 0;
                i15 = i18 + 2;
                bArr[i19] = 0;
                i14 += i17 + 3;
            }
            System.arraycopy(bArr, i14, bArr, i15, i12 - i15);
        }
        return i12;
    }
}
