package com.mbridge.msdk.playercommon.exoplayer2.video;

import com.mbridge.msdk.playercommon.exoplayer2.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.util.NalUnitUtil;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class HevcConfig {
    public final List<byte[]> initializationData;
    public final int nalUnitLengthFieldLength;

    private HevcConfig(List<byte[]> list, int i11) {
        this.initializationData = list;
        this.nalUnitLengthFieldLength = i11;
    }

    public static HevcConfig parse(ParsableByteArray parsableByteArray) throws ParserException {
        try {
            parsableByteArray.skipBytes(21);
            int unsignedByte = parsableByteArray.readUnsignedByte() & 3;
            int unsignedByte2 = parsableByteArray.readUnsignedByte();
            int position = parsableByteArray.getPosition();
            int i11 = 0;
            for (int i12 = 0; i12 < unsignedByte2; i12++) {
                parsableByteArray.skipBytes(1);
                int unsignedShort = parsableByteArray.readUnsignedShort();
                for (int i13 = 0; i13 < unsignedShort; i13++) {
                    int unsignedShort2 = parsableByteArray.readUnsignedShort();
                    i11 += unsignedShort2 + 4;
                    parsableByteArray.skipBytes(unsignedShort2);
                }
            }
            parsableByteArray.setPosition(position);
            byte[] bArr = new byte[i11];
            int i14 = 0;
            for (int i15 = 0; i15 < unsignedByte2; i15++) {
                parsableByteArray.skipBytes(1);
                int unsignedShort3 = parsableByteArray.readUnsignedShort();
                for (int i16 = 0; i16 < unsignedShort3; i16++) {
                    int unsignedShort4 = parsableByteArray.readUnsignedShort();
                    byte[] bArr2 = NalUnitUtil.NAL_START_CODE;
                    System.arraycopy(bArr2, 0, bArr, i14, bArr2.length);
                    int length = i14 + bArr2.length;
                    System.arraycopy(parsableByteArray.data, parsableByteArray.getPosition(), bArr, length, unsignedShort4);
                    i14 = length + unsignedShort4;
                    parsableByteArray.skipBytes(unsignedShort4);
                }
            }
            return new HevcConfig(i11 == 0 ? null : Collections.singletonList(bArr), unsignedByte + 1);
        } catch (ArrayIndexOutOfBoundsException e11) {
            throw new ParserException("Error parsing HEVC config", e11);
        }
    }
}
