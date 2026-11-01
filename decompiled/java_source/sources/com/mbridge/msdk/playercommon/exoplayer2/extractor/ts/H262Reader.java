package com.mbridge.msdk.playercommon.exoplayer2.extractor.ts;

import android.util.Pair;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorOutput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.mbridge.msdk.playercommon.exoplayer2.util.NalUnitUtil;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes5.dex */
public final class H262Reader implements ElementaryStreamReader {
    private static final double[] FRAME_RATE_VALUES = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    private static final int START_EXTENSION = 181;
    private static final int START_GROUP = 184;
    private static final int START_PICTURE = 0;
    private static final int START_SEQUENCE_HEADER = 179;
    private String formatId;
    private long frameDurationUs;
    private boolean hasOutputFormat;
    private TrackOutput output;
    private long pesTimeUs;
    private boolean sampleHasPicture;
    private boolean sampleIsKeyframe;
    private long samplePosition;
    private long sampleTimeUs;
    private boolean startedFirstSample;
    private long totalBytesWritten;
    private final boolean[] prefixFlags = new boolean[4];
    private final CsdBuffer csdBuffer = new CsdBuffer(128);

    private static final class CsdBuffer {
        private static final byte[] START_CODE = {0, 0, 1};
        public byte[] data;
        private boolean isFilling;
        public int length;
        public int sequenceExtensionPosition;

        public CsdBuffer(int i11) {
            this.data = new byte[i11];
        }

        public void onData(byte[] bArr, int i11, int i12) {
            if (this.isFilling) {
                int i13 = i12 - i11;
                byte[] bArr2 = this.data;
                int length = bArr2.length;
                int i14 = this.length + i13;
                if (length < i14) {
                    this.data = Arrays.copyOf(bArr2, i14 * 2);
                }
                System.arraycopy(bArr, i11, this.data, this.length, i13);
                this.length += i13;
            }
        }

        public boolean onStartCode(int i11, int i12) {
            if (this.isFilling) {
                int i13 = this.length - i12;
                this.length = i13;
                if (this.sequenceExtensionPosition != 0 || i11 != H262Reader.START_EXTENSION) {
                    this.isFilling = false;
                    return true;
                }
                this.sequenceExtensionPosition = i13;
            } else if (i11 == H262Reader.START_SEQUENCE_HEADER) {
                this.isFilling = true;
            }
            byte[] bArr = START_CODE;
            onData(bArr, 0, bArr.length);
            return false;
        }

        public void reset() {
            this.isFilling = false;
            this.length = 0;
            this.sequenceExtensionPosition = 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0067  */
    /* JADX WARN: Code duplicated, block: B:17:0x006c  */
    /* JADX WARN: Code duplicated, block: B:19:0x007b  */
    /* JADX WARN: Code duplicated, block: B:21:0x008c  */
    private static Pair<Format, Long> parseCsdBuffer(CsdBuffer csdBuffer, String str) {
        float f11;
        int i11;
        float f12;
        int i12;
        long j11;
        double[] dArr;
        double d11;
        int i13;
        int i14;
        byte[] bArrCopyOf = Arrays.copyOf(csdBuffer.data, csdBuffer.length);
        int i15 = bArrCopyOf[4] & 255;
        byte b11 = bArrCopyOf[5];
        int i16 = (i15 << 4) | ((b11 & 255) >> 4);
        int i17 = ((b11 & 15) << 8) | (bArrCopyOf[6] & 255);
        int i18 = (bArrCopyOf[7] & 240) >> 4;
        if (i18 == 2) {
            f11 = i17 * 4;
            i11 = i16 * 3;
        } else {
            if (i18 != 3) {
                if (i18 != 4) {
                    f12 = 1.0f;
                } else {
                    f11 = i17 * Sdk$SDKError.Reason.TPAT_ERROR_VALUE;
                    i11 = i16 * 100;
                }
                Format formatCreateVideoSampleFormat = Format.createVideoSampleFormat(str, MimeTypes.VIDEO_MPEG2, null, -1, -1, i16, i17, -1.0f, Collections.singletonList(bArrCopyOf), -1, f12, null);
                i12 = (bArrCopyOf[7] & 15) - 1;
                if (i12 >= 0) {
                    dArr = FRAME_RATE_VALUES;
                    if (i12 < dArr.length) {
                        d11 = dArr[i12];
                        byte b12 = bArrCopyOf[csdBuffer.sequenceExtensionPosition + 9];
                        i13 = (b12 & 96) >> 5;
                        i14 = b12 & 31;
                        if (i13 != i14) {
                            d11 *= (((double) i13) + 1.0d) / ((double) (i14 + 1));
                        }
                        j11 = (long) (1000000.0d / d11);
                    } else {
                        j11 = 0;
                    }
                } else {
                    j11 = 0;
                }
                return Pair.create(formatCreateVideoSampleFormat, Long.valueOf(j11));
            }
            f11 = i17 * 16;
            i11 = i16 * 9;
        }
        f12 = f11 / i11;
        Format formatCreateVideoSampleFormat2 = Format.createVideoSampleFormat(str, MimeTypes.VIDEO_MPEG2, null, -1, -1, i16, i17, -1.0f, Collections.singletonList(bArrCopyOf), -1, f12, null);
        i12 = (bArrCopyOf[7] & 15) - 1;
        if (i12 >= 0) {
            dArr = FRAME_RATE_VALUES;
            if (i12 < dArr.length) {
                d11 = dArr[i12];
                byte b13 = bArrCopyOf[csdBuffer.sequenceExtensionPosition + 9];
                i13 = (b13 & 96) >> 5;
                i14 = b13 & 31;
                if (i13 != i14) {
                    d11 *= (((double) i13) + 1.0d) / ((double) (i14 + 1));
                }
                j11 = (long) (1000000.0d / d11);
            } else {
                j11 = 0;
            }
        } else {
            j11 = 0;
        }
        return Pair.create(formatCreateVideoSampleFormat2, Long.valueOf(j11));
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        boolean z10;
        boolean z11;
        int position = parsableByteArray.getPosition();
        int iLimit = parsableByteArray.limit();
        byte[] bArr = parsableByteArray.data;
        this.totalBytesWritten += (long) parsableByteArray.bytesLeft();
        this.output.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
        while (true) {
            int iFindNalUnit = NalUnitUtil.findNalUnit(bArr, position, iLimit, this.prefixFlags);
            if (iFindNalUnit == iLimit) {
                break;
            }
            int i11 = iFindNalUnit + 3;
            int i12 = parsableByteArray.data[i11] & 255;
            if (!this.hasOutputFormat) {
                int i13 = iFindNalUnit - position;
                if (i13 > 0) {
                    this.csdBuffer.onData(bArr, position, iFindNalUnit);
                }
                if (this.csdBuffer.onStartCode(i12, i13 < 0 ? -i13 : 0)) {
                    Pair<Format, Long> csdBuffer = parseCsdBuffer(this.csdBuffer, this.formatId);
                    this.output.format((Format) csdBuffer.first);
                    this.frameDurationUs = ((Long) csdBuffer.second).longValue();
                    this.hasOutputFormat = true;
                }
            }
            if (i12 == 0 || i12 == START_SEQUENCE_HEADER) {
                int i14 = iLimit - iFindNalUnit;
                if (this.startedFirstSample && this.sampleHasPicture && this.hasOutputFormat) {
                    this.output.sampleMetadata(this.sampleTimeUs, this.sampleIsKeyframe ? 1 : 0, ((int) (this.totalBytesWritten - this.samplePosition)) - i14, i14, null);
                }
                boolean z12 = this.startedFirstSample;
                if (!z12 || this.sampleHasPicture) {
                    this.samplePosition = this.totalBytesWritten - ((long) i14);
                    long j11 = this.pesTimeUs;
                    if (j11 == C.TIME_UNSET) {
                        j11 = z12 ? this.sampleTimeUs + this.frameDurationUs : 0L;
                    }
                    this.sampleTimeUs = j11;
                    z10 = false;
                    this.sampleIsKeyframe = false;
                    this.pesTimeUs = C.TIME_UNSET;
                    z11 = true;
                    this.startedFirstSample = true;
                } else {
                    z10 = false;
                    z11 = true;
                }
                this.sampleHasPicture = i12 == 0 ? z11 : z10;
            } else if (i12 == START_GROUP) {
                this.sampleIsKeyframe = true;
            }
            position = i11;
        }
        if (this.hasOutputFormat) {
            return;
        }
        this.csdBuffer.onData(bArr, position, iLimit);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 2);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetStarted(long j11, boolean z10) {
        this.pesTimeUs = j11;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.ElementaryStreamReader
    public void seek() {
        NalUnitUtil.clearPrefixFlags(this.prefixFlags);
        this.csdBuffer.reset();
        this.totalBytesWritten = 0L;
        this.startedFirstSample = false;
    }
}
