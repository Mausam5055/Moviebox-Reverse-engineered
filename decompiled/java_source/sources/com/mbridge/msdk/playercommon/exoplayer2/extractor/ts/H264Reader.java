package com.mbridge.msdk.playercommon.exoplayer2.extractor.ts;

import android.util.SparseArray;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorOutput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.mbridge.msdk.playercommon.exoplayer2.util.NalUnitUtil;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableNalUnitBitArray;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class H264Reader implements ElementaryStreamReader {
    private static final int NAL_UNIT_TYPE_PPS = 8;
    private static final int NAL_UNIT_TYPE_SEI = 6;
    private static final int NAL_UNIT_TYPE_SPS = 7;
    private final boolean allowNonIdrKeyframes;
    private final boolean detectAccessUnits;
    private String formatId;
    private boolean hasOutputFormat;
    private TrackOutput output;
    private long pesTimeUs;
    private SampleReader sampleReader;
    private final SeiReader seiReader;
    private long totalBytesWritten;
    private final boolean[] prefixFlags = new boolean[3];
    private final NalUnitTargetBuffer sps = new NalUnitTargetBuffer(7, 128);
    private final NalUnitTargetBuffer pps = new NalUnitTargetBuffer(8, 128);
    private final NalUnitTargetBuffer sei = new NalUnitTargetBuffer(6, 128);
    private final ParsableByteArray seiWrapper = new ParsableByteArray();

    private static final class SampleReader {
        private static final int DEFAULT_BUFFER_SIZE = 128;
        private static final int NAL_UNIT_TYPE_AUD = 9;
        private static final int NAL_UNIT_TYPE_IDR = 5;
        private static final int NAL_UNIT_TYPE_NON_IDR = 1;
        private static final int NAL_UNIT_TYPE_PARTITION_A = 2;
        private final boolean allowNonIdrKeyframes;
        private final ParsableNalUnitBitArray bitArray;
        private byte[] buffer;
        private int bufferLength;
        private final boolean detectAccessUnits;
        private boolean isFilling;
        private long nalUnitStartPosition;
        private long nalUnitTimeUs;
        private int nalUnitType;
        private final TrackOutput output;
        private SliceHeaderData previousSliceHeader;
        private boolean readingSample;
        private boolean sampleIsKeyframe;
        private long samplePosition;
        private long sampleTimeUs;
        private SliceHeaderData sliceHeader;
        private final SparseArray<NalUnitUtil.SpsData> sps = new SparseArray<>();
        private final SparseArray<NalUnitUtil.PpsData> pps = new SparseArray<>();

        private static final class SliceHeaderData {
            private static final int SLICE_TYPE_ALL_I = 7;
            private static final int SLICE_TYPE_I = 2;
            private boolean bottomFieldFlag;
            private boolean bottomFieldFlagPresent;
            private int deltaPicOrderCnt0;
            private int deltaPicOrderCnt1;
            private int deltaPicOrderCntBottom;
            private boolean fieldPicFlag;
            private int frameNum;
            private boolean hasSliceType;
            private boolean idrPicFlag;
            private int idrPicId;
            private boolean isComplete;
            private int nalRefIdc;
            private int picOrderCntLsb;
            private int picParameterSetId;
            private int sliceType;
            private NalUnitUtil.SpsData spsData;

            private SliceHeaderData() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean isFirstVclNalUnitOfPicture(SliceHeaderData sliceHeaderData) {
                boolean z10;
                boolean z11;
                if (this.isComplete) {
                    if (!sliceHeaderData.isComplete || this.frameNum != sliceHeaderData.frameNum || this.picParameterSetId != sliceHeaderData.picParameterSetId || this.fieldPicFlag != sliceHeaderData.fieldPicFlag) {
                        return true;
                    }
                    if (this.bottomFieldFlagPresent && sliceHeaderData.bottomFieldFlagPresent && this.bottomFieldFlag != sliceHeaderData.bottomFieldFlag) {
                        return true;
                    }
                    int i11 = this.nalRefIdc;
                    int i12 = sliceHeaderData.nalRefIdc;
                    if (i11 != i12 && (i11 == 0 || i12 == 0)) {
                        return true;
                    }
                    int i13 = this.spsData.picOrderCountType;
                    if (i13 == 0 && sliceHeaderData.spsData.picOrderCountType == 0 && (this.picOrderCntLsb != sliceHeaderData.picOrderCntLsb || this.deltaPicOrderCntBottom != sliceHeaderData.deltaPicOrderCntBottom)) {
                        return true;
                    }
                    if ((i13 == 1 && sliceHeaderData.spsData.picOrderCountType == 1 && (this.deltaPicOrderCnt0 != sliceHeaderData.deltaPicOrderCnt0 || this.deltaPicOrderCnt1 != sliceHeaderData.deltaPicOrderCnt1)) || (z10 = this.idrPicFlag) != (z11 = sliceHeaderData.idrPicFlag)) {
                        return true;
                    }
                    if (z10 && z11 && this.idrPicId != sliceHeaderData.idrPicId) {
                        return true;
                    }
                }
                return false;
            }

            public void clear() {
                this.hasSliceType = false;
                this.isComplete = false;
            }

            public boolean isISlice() {
                int i11;
                return this.hasSliceType && ((i11 = this.sliceType) == 7 || i11 == 2);
            }

            public void setAll(NalUnitUtil.SpsData spsData, int i11, int i12, int i13, int i14, boolean z10, boolean z11, boolean z12, boolean z13, int i15, int i16, int i17, int i18, int i19) {
                this.spsData = spsData;
                this.nalRefIdc = i11;
                this.sliceType = i12;
                this.frameNum = i13;
                this.picParameterSetId = i14;
                this.fieldPicFlag = z10;
                this.bottomFieldFlagPresent = z11;
                this.bottomFieldFlag = z12;
                this.idrPicFlag = z13;
                this.idrPicId = i15;
                this.picOrderCntLsb = i16;
                this.deltaPicOrderCntBottom = i17;
                this.deltaPicOrderCnt0 = i18;
                this.deltaPicOrderCnt1 = i19;
                this.isComplete = true;
                this.hasSliceType = true;
            }

            public void setSliceType(int i11) {
                this.sliceType = i11;
                this.hasSliceType = true;
            }
        }

        public SampleReader(TrackOutput trackOutput, boolean z10, boolean z11) {
            this.output = trackOutput;
            this.allowNonIdrKeyframes = z10;
            this.detectAccessUnits = z11;
            this.previousSliceHeader = new SliceHeaderData();
            this.sliceHeader = new SliceHeaderData();
            byte[] bArr = new byte[128];
            this.buffer = bArr;
            this.bitArray = new ParsableNalUnitBitArray(bArr, 0, 0);
            reset();
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
        private void outputSample(int i11) {
            boolean z10 = this.sampleIsKeyframe;
            this.output.sampleMetadata(this.sampleTimeUs, z10 ? 1 : 0, (int) (this.nalUnitStartPosition - this.samplePosition), i11, null);
        }

        /* JADX WARN: Code duplicated, block: B:53:0x00fc  */
        /* JADX WARN: Code duplicated, block: B:54:0x00ff  */
        /* JADX WARN: Code duplicated, block: B:56:0x0103  */
        /* JADX WARN: Code duplicated, block: B:58:0x010b A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:59:0x010c  */
        /* JADX WARN: Code duplicated, block: B:60:0x0115  */
        /* JADX WARN: Code duplicated, block: B:63:0x011b  */
        /* JADX WARN: Code duplicated, block: B:65:0x0125 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:66:0x0126  */
        /* JADX WARN: Code duplicated, block: B:76:0x0153  */
        public void appendToNalUnit(byte[] bArr, int i11, int i12) {
            boolean z10;
            boolean z11;
            boolean bit;
            boolean z12;
            int unsignedExpGolombCodedInt;
            int i13;
            int i14;
            int signedExpGolombCodedInt;
            int i15;
            int signedExpGolombCodedInt2;
            int bits;
            if (this.isFilling) {
                int i16 = i12 - i11;
                byte[] bArr2 = this.buffer;
                int length = bArr2.length;
                int i17 = this.bufferLength + i16;
                if (length < i17) {
                    this.buffer = Arrays.copyOf(bArr2, i17 * 2);
                }
                System.arraycopy(bArr, i11, this.buffer, this.bufferLength, i16);
                int i18 = this.bufferLength + i16;
                this.bufferLength = i18;
                this.bitArray.reset(this.buffer, 0, i18);
                if (this.bitArray.canReadBits(8)) {
                    this.bitArray.skipBit();
                    int bits2 = this.bitArray.readBits(2);
                    this.bitArray.skipBits(5);
                    if (this.bitArray.canReadExpGolombCodedNum()) {
                        this.bitArray.readUnsignedExpGolombCodedInt();
                        if (this.bitArray.canReadExpGolombCodedNum()) {
                            int unsignedExpGolombCodedInt2 = this.bitArray.readUnsignedExpGolombCodedInt();
                            if (!this.detectAccessUnits) {
                                this.isFilling = false;
                                this.sliceHeader.setSliceType(unsignedExpGolombCodedInt2);
                                return;
                            }
                            if (this.bitArray.canReadExpGolombCodedNum()) {
                                int unsignedExpGolombCodedInt3 = this.bitArray.readUnsignedExpGolombCodedInt();
                                if (this.pps.indexOfKey(unsignedExpGolombCodedInt3) < 0) {
                                    this.isFilling = false;
                                    return;
                                }
                                NalUnitUtil.PpsData ppsData = this.pps.get(unsignedExpGolombCodedInt3);
                                NalUnitUtil.SpsData spsData = this.sps.get(ppsData.seqParameterSetId);
                                if (spsData.separateColorPlaneFlag) {
                                    if (!this.bitArray.canReadBits(2)) {
                                        return;
                                    } else {
                                        this.bitArray.skipBits(2);
                                    }
                                }
                                if (this.bitArray.canReadBits(spsData.frameNumLength)) {
                                    int bits3 = this.bitArray.readBits(spsData.frameNumLength);
                                    if (!spsData.frameMbsOnlyFlag) {
                                        if (this.bitArray.canReadBits(1)) {
                                            boolean bit2 = this.bitArray.readBit();
                                            if (!bit2) {
                                                z10 = bit2;
                                                z11 = false;
                                            } else {
                                                if (!this.bitArray.canReadBits(1)) {
                                                    return;
                                                }
                                                z10 = bit2;
                                                z11 = true;
                                                bit = this.bitArray.readBit();
                                            }
                                            if (this.nalUnitType == 5) {
                                                z12 = true;
                                            } else {
                                                z12 = false;
                                            }
                                            if (z12) {
                                                unsignedExpGolombCodedInt = 0;
                                            } else if (!this.bitArray.canReadExpGolombCodedNum()) {
                                                return;
                                            } else {
                                                unsignedExpGolombCodedInt = this.bitArray.readUnsignedExpGolombCodedInt();
                                            }
                                            i13 = spsData.picOrderCountType;
                                            if (i13 != 0) {
                                                if (this.bitArray.canReadBits(spsData.picOrderCntLsbLength)) {
                                                    bits = this.bitArray.readBits(spsData.picOrderCntLsbLength);
                                                    if (ppsData.bottomFieldPicOrderInFramePresentFlag || z10) {
                                                        i14 = bits;
                                                        signedExpGolombCodedInt = 0;
                                                    } else {
                                                        if (!this.bitArray.canReadExpGolombCodedNum()) {
                                                            return;
                                                        }
                                                        signedExpGolombCodedInt = this.bitArray.readSignedExpGolombCodedInt();
                                                        i14 = bits;
                                                        i15 = 0;
                                                    }
                                                    signedExpGolombCodedInt2 = i15;
                                                    this.sliceHeader.setAll(spsData, bits2, unsignedExpGolombCodedInt2, bits3, unsignedExpGolombCodedInt3, z10, z11, bit, z12, unsignedExpGolombCodedInt, i14, signedExpGolombCodedInt, i15, signedExpGolombCodedInt2);
                                                    this.isFilling = false;
                                                }
                                                return;
                                            }
                                            if (i13 == 1 || spsData.deltaPicOrderAlwaysZeroFlag) {
                                                i14 = 0;
                                                signedExpGolombCodedInt = 0;
                                            } else {
                                                if (!this.bitArray.canReadExpGolombCodedNum()) {
                                                    return;
                                                }
                                                int signedExpGolombCodedInt3 = this.bitArray.readSignedExpGolombCodedInt();
                                                if (!ppsData.bottomFieldPicOrderInFramePresentFlag || z10) {
                                                    i15 = signedExpGolombCodedInt3;
                                                    i14 = 0;
                                                    signedExpGolombCodedInt = 0;
                                                    signedExpGolombCodedInt2 = 0;
                                                } else {
                                                    if (!this.bitArray.canReadExpGolombCodedNum()) {
                                                        return;
                                                    }
                                                    signedExpGolombCodedInt2 = this.bitArray.readSignedExpGolombCodedInt();
                                                    i15 = signedExpGolombCodedInt3;
                                                    i14 = 0;
                                                    signedExpGolombCodedInt = 0;
                                                }
                                            }
                                            this.sliceHeader.setAll(spsData, bits2, unsignedExpGolombCodedInt2, bits3, unsignedExpGolombCodedInt3, z10, z11, bit, z12, unsignedExpGolombCodedInt, i14, signedExpGolombCodedInt, i15, signedExpGolombCodedInt2);
                                            this.isFilling = false;
                                            i15 = signedExpGolombCodedInt;
                                            signedExpGolombCodedInt2 = i15;
                                            this.sliceHeader.setAll(spsData, bits2, unsignedExpGolombCodedInt2, bits3, unsignedExpGolombCodedInt3, z10, z11, bit, z12, unsignedExpGolombCodedInt, i14, signedExpGolombCodedInt, i15, signedExpGolombCodedInt2);
                                            this.isFilling = false;
                                        }
                                        return;
                                    }
                                    z10 = false;
                                    z11 = false;
                                    bit = z11;
                                    if (this.nalUnitType == 5) {
                                        z12 = true;
                                    } else {
                                        z12 = false;
                                    }
                                    if (z12) {
                                        unsignedExpGolombCodedInt = 0;
                                    } else if (!this.bitArray.canReadExpGolombCodedNum()) {
                                        return;
                                    } else {
                                        unsignedExpGolombCodedInt = this.bitArray.readUnsignedExpGolombCodedInt();
                                    }
                                    i13 = spsData.picOrderCountType;
                                    if (i13 != 0) {
                                        if (i13 == 1) {
                                        }
                                        i14 = 0;
                                        signedExpGolombCodedInt = 0;
                                    } else {
                                        if (this.bitArray.canReadBits(spsData.picOrderCntLsbLength)) {
                                            return;
                                        }
                                        bits = this.bitArray.readBits(spsData.picOrderCntLsbLength);
                                        if (ppsData.bottomFieldPicOrderInFramePresentFlag) {
                                        }
                                        i14 = bits;
                                        signedExpGolombCodedInt = 0;
                                    }
                                    i15 = signedExpGolombCodedInt;
                                    signedExpGolombCodedInt2 = i15;
                                    this.sliceHeader.setAll(spsData, bits2, unsignedExpGolombCodedInt2, bits3, unsignedExpGolombCodedInt3, z10, z11, bit, z12, unsignedExpGolombCodedInt, i14, signedExpGolombCodedInt, i15, signedExpGolombCodedInt2);
                                    this.isFilling = false;
                                }
                            }
                        }
                    }
                }
            }
        }

        public void endNalUnit(long j11, int i11) {
            boolean z10 = false;
            if (this.nalUnitType == 9 || (this.detectAccessUnits && this.sliceHeader.isFirstVclNalUnitOfPicture(this.previousSliceHeader))) {
                if (this.readingSample) {
                    outputSample(i11 + ((int) (j11 - this.nalUnitStartPosition)));
                }
                this.samplePosition = this.nalUnitStartPosition;
                this.sampleTimeUs = this.nalUnitTimeUs;
                this.sampleIsKeyframe = false;
                this.readingSample = true;
            }
            boolean z11 = this.sampleIsKeyframe;
            int i12 = this.nalUnitType;
            if (i12 == 5 || (this.allowNonIdrKeyframes && i12 == 1 && this.sliceHeader.isISlice())) {
                z10 = true;
            }
            this.sampleIsKeyframe = z11 | z10;
        }

        public boolean needsSpsPps() {
            return this.detectAccessUnits;
        }

        public void putPps(NalUnitUtil.PpsData ppsData) {
            this.pps.append(ppsData.picParameterSetId, ppsData);
        }

        public void putSps(NalUnitUtil.SpsData spsData) {
            this.sps.append(spsData.seqParameterSetId, spsData);
        }

        public void reset() {
            this.isFilling = false;
            this.readingSample = false;
            this.sliceHeader.clear();
        }

        public void startNalUnit(long j11, int i11, long j12) {
            this.nalUnitType = i11;
            this.nalUnitTimeUs = j12;
            this.nalUnitStartPosition = j11;
            if (!this.allowNonIdrKeyframes || i11 != 1) {
                if (!this.detectAccessUnits) {
                    return;
                }
                if (i11 != 5 && i11 != 1 && i11 != 2) {
                    return;
                }
            }
            SliceHeaderData sliceHeaderData = this.previousSliceHeader;
            this.previousSliceHeader = this.sliceHeader;
            this.sliceHeader = sliceHeaderData;
            sliceHeaderData.clear();
            this.bufferLength = 0;
            this.isFilling = true;
        }
    }

    public H264Reader(SeiReader seiReader, boolean z10, boolean z11) {
        this.seiReader = seiReader;
        this.allowNonIdrKeyframes = z10;
        this.detectAccessUnits = z11;
    }

    private void endNalUnit(long j11, int i11, int i12, long j12) {
        if (!this.hasOutputFormat || this.sampleReader.needsSpsPps()) {
            this.sps.endNalUnit(i12);
            this.pps.endNalUnit(i12);
            if (this.hasOutputFormat) {
                if (this.sps.isCompleted()) {
                    NalUnitTargetBuffer nalUnitTargetBuffer = this.sps;
                    this.sampleReader.putSps(NalUnitUtil.parseSpsNalUnit(nalUnitTargetBuffer.nalData, 3, nalUnitTargetBuffer.nalLength));
                    this.sps.reset();
                } else if (this.pps.isCompleted()) {
                    NalUnitTargetBuffer nalUnitTargetBuffer2 = this.pps;
                    this.sampleReader.putPps(NalUnitUtil.parsePpsNalUnit(nalUnitTargetBuffer2.nalData, 3, nalUnitTargetBuffer2.nalLength));
                    this.pps.reset();
                }
            } else if (this.sps.isCompleted() && this.pps.isCompleted()) {
                ArrayList arrayList = new ArrayList();
                NalUnitTargetBuffer nalUnitTargetBuffer3 = this.sps;
                arrayList.add(Arrays.copyOf(nalUnitTargetBuffer3.nalData, nalUnitTargetBuffer3.nalLength));
                NalUnitTargetBuffer nalUnitTargetBuffer4 = this.pps;
                arrayList.add(Arrays.copyOf(nalUnitTargetBuffer4.nalData, nalUnitTargetBuffer4.nalLength));
                NalUnitTargetBuffer nalUnitTargetBuffer5 = this.sps;
                NalUnitUtil.SpsData spsNalUnit = NalUnitUtil.parseSpsNalUnit(nalUnitTargetBuffer5.nalData, 3, nalUnitTargetBuffer5.nalLength);
                NalUnitTargetBuffer nalUnitTargetBuffer6 = this.pps;
                NalUnitUtil.PpsData ppsNalUnit = NalUnitUtil.parsePpsNalUnit(nalUnitTargetBuffer6.nalData, 3, nalUnitTargetBuffer6.nalLength);
                this.output.format(Format.createVideoSampleFormat(this.formatId, MimeTypes.VIDEO_H264, null, -1, -1, spsNalUnit.width, spsNalUnit.height, -1.0f, arrayList, -1, spsNalUnit.pixelWidthAspectRatio, null));
                this.hasOutputFormat = true;
                this.sampleReader.putSps(spsNalUnit);
                this.sampleReader.putPps(ppsNalUnit);
                this.sps.reset();
                this.pps.reset();
            }
        }
        if (this.sei.endNalUnit(i12)) {
            NalUnitTargetBuffer nalUnitTargetBuffer7 = this.sei;
            this.seiWrapper.reset(this.sei.nalData, NalUnitUtil.unescapeStream(nalUnitTargetBuffer7.nalData, nalUnitTargetBuffer7.nalLength));
            this.seiWrapper.setPosition(4);
            this.seiReader.consume(j12, this.seiWrapper);
        }
        this.sampleReader.endNalUnit(j11, i11);
    }

    private void nalUnitData(byte[] bArr, int i11, int i12) {
        if (!this.hasOutputFormat || this.sampleReader.needsSpsPps()) {
            this.sps.appendToNalUnit(bArr, i11, i12);
            this.pps.appendToNalUnit(bArr, i11, i12);
        }
        this.sei.appendToNalUnit(bArr, i11, i12);
        this.sampleReader.appendToNalUnit(bArr, i11, i12);
    }

    private void startNalUnit(long j11, int i11, long j12) {
        if (!this.hasOutputFormat || this.sampleReader.needsSpsPps()) {
            this.sps.startNalUnit(i11);
            this.pps.startNalUnit(i11);
        }
        this.sei.startNalUnit(i11);
        this.sampleReader.startNalUnit(j11, i11, j12);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.ElementaryStreamReader
    public void consume(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        int iLimit = parsableByteArray.limit();
        byte[] bArr = parsableByteArray.data;
        this.totalBytesWritten += (long) parsableByteArray.bytesLeft();
        this.output.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
        while (true) {
            int iFindNalUnit = NalUnitUtil.findNalUnit(bArr, position, iLimit, this.prefixFlags);
            if (iFindNalUnit == iLimit) {
                nalUnitData(bArr, position, iLimit);
                return;
            }
            int nalUnitType = NalUnitUtil.getNalUnitType(bArr, iFindNalUnit);
            int i11 = iFindNalUnit - position;
            if (i11 > 0) {
                nalUnitData(bArr, position, iFindNalUnit);
            }
            int i12 = iLimit - iFindNalUnit;
            long j11 = this.totalBytesWritten - ((long) i12);
            endNalUnit(j11, i12, i11 < 0 ? -i11 : 0, this.pesTimeUs);
            startNalUnit(j11, nalUnitType, this.pesTimeUs);
            position = iFindNalUnit + 3;
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.ElementaryStreamReader
    public void createTracks(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.getTrackId(), 2);
        this.output = trackOutputTrack;
        this.sampleReader = new SampleReader(trackOutputTrack, this.allowNonIdrKeyframes, this.detectAccessUnits);
        this.seiReader.createTracks(extractorOutput, trackIdGenerator);
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
        this.sps.reset();
        this.pps.reset();
        this.sei.reset();
        this.sampleReader.reset();
        this.totalBytesWritten = 0L;
    }
}
