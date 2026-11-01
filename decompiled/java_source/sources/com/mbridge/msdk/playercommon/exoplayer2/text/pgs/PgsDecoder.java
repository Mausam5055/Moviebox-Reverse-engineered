package com.mbridge.msdk.playercommon.exoplayer2.text.pgs;

import android.graphics.Bitmap;
import com.mbridge.msdk.playercommon.exoplayer2.text.Cue;
import com.mbridge.msdk.playercommon.exoplayer2.text.SimpleSubtitleDecoder;
import com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle;
import com.mbridge.msdk.playercommon.exoplayer2.text.SubtitleDecoderException;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes5.dex */
public final class PgsDecoder extends SimpleSubtitleDecoder {
    private static final byte INFLATE_HEADER = 120;
    private static final int SECTION_TYPE_BITMAP_PICTURE = 21;
    private static final int SECTION_TYPE_END = 128;
    private static final int SECTION_TYPE_IDENTIFIER = 22;
    private static final int SECTION_TYPE_PALETTE = 20;
    private final ParsableByteArray buffer;
    private final CueBuilder cueBuilder;
    private byte[] inflatedData;
    private int inflatedDataSize;
    private Inflater inflater;

    private static final class CueBuilder {
        private int bitmapHeight;
        private int bitmapWidth;
        private int bitmapX;
        private int bitmapY;
        private boolean colorsSet;
        private int planeHeight;
        private int planeWidth;
        private final ParsableByteArray bitmapData = new ParsableByteArray();
        private final int[] colors = new int[256];

        /* JADX INFO: Access modifiers changed from: private */
        public void parseBitmapSection(ParsableByteArray parsableByteArray, int i11) {
            int unsignedInt24;
            if (i11 < 4) {
                return;
            }
            parsableByteArray.skipBytes(3);
            int i12 = i11 - 4;
            if ((parsableByteArray.readUnsignedByte() & 128) != 0) {
                if (i12 < 7 || (unsignedInt24 = parsableByteArray.readUnsignedInt24()) < 4) {
                    return;
                }
                this.bitmapWidth = parsableByteArray.readUnsignedShort();
                this.bitmapHeight = parsableByteArray.readUnsignedShort();
                this.bitmapData.reset(unsignedInt24 - 4);
                i12 = i11 - 11;
            }
            int position = this.bitmapData.getPosition();
            int iLimit = this.bitmapData.limit();
            if (position >= iLimit || i12 <= 0) {
                return;
            }
            int iMin = Math.min(i12, iLimit - position);
            parsableByteArray.readBytes(this.bitmapData.data, position, iMin);
            this.bitmapData.setPosition(position + iMin);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void parseIdentifierSection(ParsableByteArray parsableByteArray, int i11) {
            if (i11 < 19) {
                return;
            }
            this.planeWidth = parsableByteArray.readUnsignedShort();
            this.planeHeight = parsableByteArray.readUnsignedShort();
            parsableByteArray.skipBytes(11);
            this.bitmapX = parsableByteArray.readUnsignedShort();
            this.bitmapY = parsableByteArray.readUnsignedShort();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void parsePaletteSection(ParsableByteArray parsableByteArray, int i11) {
            if (i11 % 5 != 2) {
                return;
            }
            parsableByteArray.skipBytes(2);
            Arrays.fill(this.colors, 0);
            int i12 = i11 / 5;
            for (int i13 = 0; i13 < i12; i13++) {
                int unsignedByte = parsableByteArray.readUnsignedByte();
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                int unsignedByte3 = parsableByteArray.readUnsignedByte();
                int unsignedByte4 = parsableByteArray.readUnsignedByte();
                double d11 = unsignedByte2;
                double d12 = unsignedByte3 - 128;
                double d13 = unsignedByte4 - 128;
                this.colors[unsignedByte] = (Util.constrainValue((int) ((d11 - (0.34414d * d13)) - (d12 * 0.71414d)), 0, 255) << 8) | (parsableByteArray.readUnsignedByte() << 24) | (Util.constrainValue((int) ((1.402d * d12) + d11), 0, 255) << 16) | Util.constrainValue((int) (d11 + (d13 * 1.772d)), 0, 255);
            }
            this.colorsSet = true;
        }

        public Cue build() {
            int unsignedByte;
            if (this.planeWidth == 0 || this.planeHeight == 0 || this.bitmapWidth == 0 || this.bitmapHeight == 0 || this.bitmapData.limit() == 0 || this.bitmapData.getPosition() != this.bitmapData.limit() || !this.colorsSet) {
                return null;
            }
            this.bitmapData.setPosition(0);
            int i11 = this.bitmapWidth * this.bitmapHeight;
            int[] iArr = new int[i11];
            int i12 = 0;
            while (i12 < i11) {
                int unsignedByte2 = this.bitmapData.readUnsignedByte();
                if (unsignedByte2 != 0) {
                    unsignedByte = i12 + 1;
                    iArr[i12] = this.colors[unsignedByte2];
                } else {
                    int unsignedByte3 = this.bitmapData.readUnsignedByte();
                    if (unsignedByte3 != 0) {
                        unsignedByte = ((unsignedByte3 & 64) == 0 ? unsignedByte3 & 63 : ((unsignedByte3 & 63) << 8) | this.bitmapData.readUnsignedByte()) + i12;
                        Arrays.fill(iArr, i12, unsignedByte, (unsignedByte3 & 128) == 0 ? 0 : this.colors[this.bitmapData.readUnsignedByte()]);
                    }
                }
                i12 = unsignedByte;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, this.bitmapWidth, this.bitmapHeight, Bitmap.Config.ARGB_8888);
            float f11 = this.bitmapX;
            float f12 = this.planeWidth;
            float f13 = f11 / f12;
            float f14 = this.bitmapY;
            float f15 = this.planeHeight;
            return new Cue(bitmapCreateBitmap, f13, 0, f14 / f15, 0, this.bitmapWidth / f12, this.bitmapHeight / f15);
        }

        public void reset() {
            this.planeWidth = 0;
            this.planeHeight = 0;
            this.bitmapX = 0;
            this.bitmapY = 0;
            this.bitmapWidth = 0;
            this.bitmapHeight = 0;
            this.bitmapData.reset(0);
            this.colorsSet = false;
        }
    }

    public PgsDecoder() {
        super("PgsDecoder");
        this.buffer = new ParsableByteArray();
        this.cueBuilder = new CueBuilder();
    }

    private boolean maybeInflateData(byte[] bArr, int i11) {
        if (i11 != 0 && bArr[0] == 120) {
            if (this.inflater == null) {
                this.inflater = new Inflater();
                this.inflatedData = new byte[i11];
            }
            this.inflatedDataSize = 0;
            this.inflater.setInput(bArr, 0, i11);
            while (!this.inflater.finished() && !this.inflater.needsDictionary() && !this.inflater.needsInput()) {
                try {
                    int i12 = this.inflatedDataSize;
                    byte[] bArr2 = this.inflatedData;
                    if (i12 == bArr2.length) {
                        this.inflatedData = Arrays.copyOf(bArr2, bArr2.length * 2);
                    }
                    int i13 = this.inflatedDataSize;
                    Inflater inflater = this.inflater;
                    byte[] bArr3 = this.inflatedData;
                    this.inflatedDataSize = i13 + inflater.inflate(bArr3, i13, bArr3.length - i13);
                } catch (DataFormatException unused) {
                    this.inflater.reset();
                } catch (Throwable th2) {
                    this.inflater.reset();
                    throw th2;
                }
            }
            boolean zFinished = this.inflater.finished();
            this.inflater.reset();
            return zFinished;
        }
        return false;
    }

    private static Cue readNextSection(ParsableByteArray parsableByteArray, CueBuilder cueBuilder) {
        int iLimit = parsableByteArray.limit();
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int position = parsableByteArray.getPosition() + unsignedShort;
        Cue cueBuild = null;
        if (position > iLimit) {
            parsableByteArray.setPosition(iLimit);
            return null;
        }
        if (unsignedByte != 128) {
            switch (unsignedByte) {
                case 20:
                    cueBuilder.parsePaletteSection(parsableByteArray, unsignedShort);
                    break;
                case 21:
                    cueBuilder.parseBitmapSection(parsableByteArray, unsignedShort);
                    break;
                case 22:
                    cueBuilder.parseIdentifierSection(parsableByteArray, unsignedShort);
                    break;
            }
        } else {
            cueBuild = cueBuilder.build();
            cueBuilder.reset();
        }
        parsableByteArray.setPosition(position);
        return cueBuild;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.SimpleSubtitleDecoder
    protected Subtitle decode(byte[] bArr, int i11, boolean z10) throws SubtitleDecoderException {
        if (maybeInflateData(bArr, i11)) {
            this.buffer.reset(this.inflatedData, this.inflatedDataSize);
        } else {
            this.buffer.reset(bArr, i11);
        }
        this.cueBuilder.reset();
        ArrayList arrayList = new ArrayList();
        while (this.buffer.bytesLeft() >= 3) {
            Cue nextSection = readNextSection(this.buffer, this.cueBuilder);
            if (nextSection != null) {
                arrayList.add(nextSection);
            }
        }
        return new PgsSubtitle(Collections.unmodifiableList(arrayList));
    }
}
