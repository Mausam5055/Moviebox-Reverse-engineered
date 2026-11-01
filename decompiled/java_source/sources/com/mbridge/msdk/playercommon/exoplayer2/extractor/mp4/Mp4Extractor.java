package com.mbridge.msdk.playercommon.exoplayer2.extractor.mp4;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.Extractor;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorOutput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorsFactory;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.GaplessInfoHolder;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.PositionHolder;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekPoint;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.Metadata;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.NalUnitUtil;
import com.mbridge.msdk.playercommon.exoplayer2.util.ParsableByteArray;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class Mp4Extractor implements Extractor, SeekMap {
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 1;
    private static final long MAXIMUM_READ_AHEAD_BYTES_STREAM = 10485760;
    private static final long RELOAD_MINIMUM_SEEK_DISTANCE = 262144;
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private long[][] accumulatedSampleSizes;
    private ParsableByteArray atomData;
    private final ParsableByteArray atomHeader;
    private int atomHeaderBytesRead;
    private long atomSize;
    private int atomType;
    private final ArrayDeque<Atom.ContainerAtom> containerAtoms;
    private long durationUs;
    private ExtractorOutput extractorOutput;
    private int firstVideoTrackIndex;
    private final int flags;
    private boolean isQuickTime;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private int parserState;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private int sampleTrackIndex;
    private Mp4Track[] tracks;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: com.mbridge.msdk.playercommon.exoplayer2.extractor.mp4.Mp4Extractor.1
        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorsFactory
        public Extractor[] createExtractors() {
            return new Extractor[]{new Mp4Extractor()};
        }
    };
    private static final int BRAND_QUICKTIME = Util.getIntegerCodeForString("qt  ");

    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    private static final class Mp4Track {
        public int sampleIndex;
        public final TrackSampleTable sampleTable;
        public final Track track;
        public final TrackOutput trackOutput;

        public Mp4Track(Track track, TrackSampleTable trackSampleTable, TrackOutput trackOutput) {
            this.track = track;
            this.sampleTable = trackSampleTable;
            this.trackOutput = trackOutput;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    private @interface State {
    }

    public Mp4Extractor() {
        this(0);
    }

    public Mp4Extractor(int i11) {
        this.flags = i11;
        this.atomHeader = new ParsableByteArray(16);
        this.containerAtoms = new ArrayDeque<>();
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
        this.sampleTrackIndex = -1;
    }

    private static long[][] calculateAccumulatedSampleSizes(Mp4Track[] mp4TrackArr) {
        long[][] jArr = new long[mp4TrackArr.length][];
        int[] iArr = new int[mp4TrackArr.length];
        long[] jArr2 = new long[mp4TrackArr.length];
        boolean[] zArr = new boolean[mp4TrackArr.length];
        for (int i11 = 0; i11 < mp4TrackArr.length; i11++) {
            jArr[i11] = new long[mp4TrackArr[i11].sampleTable.sampleCount];
            jArr2[i11] = mp4TrackArr[i11].sampleTable.timestampsUs[0];
        }
        long j11 = 0;
        int i12 = 0;
        while (i12 < mp4TrackArr.length) {
            long j12 = Long.MAX_VALUE;
            int i13 = -1;
            for (int i14 = 0; i14 < mp4TrackArr.length; i14++) {
                if (!zArr[i14]) {
                    long j13 = jArr2[i14];
                    if (j13 <= j12) {
                        i13 = i14;
                        j12 = j13;
                    }
                }
            }
            int i15 = iArr[i13];
            long[] jArr3 = jArr[i13];
            jArr3[i15] = j11;
            TrackSampleTable trackSampleTable = mp4TrackArr[i13].sampleTable;
            j11 += (long) trackSampleTable.sizes[i15];
            int i16 = i15 + 1;
            iArr[i13] = i16;
            if (i16 < jArr3.length) {
                jArr2[i13] = trackSampleTable.timestampsUs[i16];
            } else {
                zArr[i13] = true;
                i12++;
            }
        }
        return jArr;
    }

    private void enterReadingAtomHeaderState() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    private static int getSynchronizationSampleIndex(TrackSampleTable trackSampleTable, long j11) {
        int indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j11);
        return indexOfEarlierOrEqualSynchronizationSample == -1 ? trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j11) : indexOfEarlierOrEqualSynchronizationSample;
    }

    private int getTrackIndexOfNextReadSample(long j11) {
        int i11 = -1;
        int i12 = -1;
        int i13 = 0;
        long j12 = Long.MAX_VALUE;
        boolean z10 = true;
        long j13 = Long.MAX_VALUE;
        boolean z11 = true;
        long j14 = Long.MAX_VALUE;
        while (true) {
            Mp4Track[] mp4TrackArr = this.tracks;
            if (i13 >= mp4TrackArr.length) {
                break;
            }
            Mp4Track mp4Track = mp4TrackArr[i13];
            int i14 = mp4Track.sampleIndex;
            TrackSampleTable trackSampleTable = mp4Track.sampleTable;
            if (i14 != trackSampleTable.sampleCount) {
                long j15 = trackSampleTable.offsets[i14];
                long j16 = this.accumulatedSampleSizes[i13][i14];
                long j17 = j15 - j11;
                boolean z12 = j17 < 0 || j17 >= 262144;
                if ((!z12 && z11) || (z12 == z11 && j17 < j14)) {
                    z11 = z12;
                    j14 = j17;
                    i12 = i13;
                    j13 = j16;
                }
                if (j16 < j12) {
                    z10 = z12;
                    i11 = i13;
                    j12 = j16;
                }
            }
            i13++;
        }
        return (j12 == Long.MAX_VALUE || !z10 || j13 < j12 + MAXIMUM_READ_AHEAD_BYTES_STREAM) ? i12 : i11;
    }

    private ArrayList<TrackSampleTable> getTrackSampleTables(Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder, boolean z10) throws ParserException {
        Track trak;
        ArrayList<TrackSampleTable> arrayList = new ArrayList<>();
        for (int i11 = 0; i11 < containerAtom.containerChildren.size(); i11++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i11);
            if (containerAtom2.type == Atom.TYPE_trak && (trak = AtomParsers.parseTrak(containerAtom2, containerAtom.getLeafAtomOfType(Atom.TYPE_mvhd), C.TIME_UNSET, null, z10, this.isQuickTime)) != null) {
                TrackSampleTable stbl = AtomParsers.parseStbl(trak, containerAtom2.getContainerAtomOfType(Atom.TYPE_mdia).getContainerAtomOfType(Atom.TYPE_minf).getContainerAtomOfType(Atom.TYPE_stbl), gaplessInfoHolder);
                if (stbl.sampleCount != 0) {
                    arrayList.add(stbl);
                }
            }
        }
        return arrayList;
    }

    private static long maybeAdjustSeekOffset(TrackSampleTable trackSampleTable, long j11, long j12) {
        int synchronizationSampleIndex = getSynchronizationSampleIndex(trackSampleTable, j11);
        return synchronizationSampleIndex == -1 ? j12 : Math.min(trackSampleTable.offsets[synchronizationSampleIndex], j12);
    }

    private void processAtomEnded(long j11) throws ParserException {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j11) {
            Atom.ContainerAtom containerAtomPop = this.containerAtoms.pop();
            if (containerAtomPop.type == Atom.TYPE_moov) {
                processMoovAtom(containerAtomPop);
                this.containerAtoms.clear();
                this.parserState = 2;
            } else if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().add(containerAtomPop);
            }
        }
        if (this.parserState != 2) {
            enterReadingAtomHeaderState();
        }
    }

    private static boolean processFtypAtom(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(8);
        if (parsableByteArray.readInt() == BRAND_QUICKTIME) {
            return true;
        }
        parsableByteArray.skipBytes(4);
        while (parsableByteArray.bytesLeft() > 0) {
            if (parsableByteArray.readInt() == BRAND_QUICKTIME) {
                return true;
            }
        }
        return false;
    }

    private void processMoovAtom(Atom.ContainerAtom containerAtom) throws ParserException {
        Metadata udta;
        ArrayList<TrackSampleTable> trackSampleTables;
        ArrayList arrayList = new ArrayList();
        GaplessInfoHolder gaplessInfoHolder = new GaplessInfoHolder();
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_udta);
        if (leafAtomOfType != null) {
            udta = AtomParsers.parseUdta(leafAtomOfType, this.isQuickTime);
            if (udta != null) {
                gaplessInfoHolder.setFromMetadata(udta);
            }
        } else {
            udta = null;
        }
        int i11 = 1;
        int i12 = 0;
        try {
            trackSampleTables = getTrackSampleTables(containerAtom, gaplessInfoHolder, (this.flags & 1) != 0);
        } catch (AtomParsers.UnhandledEditListException unused) {
            gaplessInfoHolder = new GaplessInfoHolder();
            trackSampleTables = getTrackSampleTables(containerAtom, gaplessInfoHolder, true);
        }
        int size = trackSampleTables.size();
        long jMax = C.TIME_UNSET;
        int size2 = -1;
        while (i12 < size) {
            TrackSampleTable trackSampleTable = trackSampleTables.get(i12);
            Track track = trackSampleTable.track;
            Mp4Track mp4Track = new Mp4Track(track, trackSampleTable, this.extractorOutput.track(i12, track.type));
            Format formatCopyWithMaxInputSize = track.format.copyWithMaxInputSize(trackSampleTable.maximumSize + 30);
            if (track.type == i11) {
                if (gaplessInfoHolder.hasGaplessInfo()) {
                    formatCopyWithMaxInputSize = formatCopyWithMaxInputSize.copyWithGaplessInfo(gaplessInfoHolder.encoderDelay, gaplessInfoHolder.encoderPadding);
                }
                if (udta != null) {
                    formatCopyWithMaxInputSize = formatCopyWithMaxInputSize.copyWithMetadata(udta);
                }
            }
            mp4Track.trackOutput.format(formatCopyWithMaxInputSize);
            long j11 = track.durationUs;
            if (j11 == C.TIME_UNSET) {
                j11 = trackSampleTable.durationUs;
            }
            jMax = Math.max(jMax, j11);
            if (track.type == 2 && size2 == -1) {
                size2 = arrayList.size();
            }
            arrayList.add(mp4Track);
            i12++;
            i11 = 1;
        }
        this.firstVideoTrackIndex = size2;
        this.durationUs = jMax;
        Mp4Track[] mp4TrackArr = (Mp4Track[]) arrayList.toArray(new Mp4Track[arrayList.size()]);
        this.tracks = mp4TrackArr;
        this.accumulatedSampleSizes = calculateAccumulatedSampleSizes(mp4TrackArr);
        this.extractorOutput.endTracks();
        this.extractorOutput.seekMap(this);
    }

    private boolean readAtomHeader(ExtractorInput extractorInput) throws InterruptedException, IOException {
        if (this.atomHeaderBytesRead == 0) {
            if (!extractorInput.readFully(this.atomHeader.data, 0, 8, true)) {
                return false;
            }
            this.atomHeaderBytesRead = 8;
            this.atomHeader.setPosition(0);
            this.atomSize = this.atomHeader.readUnsignedInt();
            this.atomType = this.atomHeader.readInt();
        }
        long j11 = this.atomSize;
        if (j11 == 1) {
            extractorInput.readFully(this.atomHeader.data, 8, 8);
            this.atomHeaderBytesRead += 8;
            this.atomSize = this.atomHeader.readUnsignedLongToLong();
        } else if (j11 == 0) {
            long length = extractorInput.getLength();
            if (length == -1 && !this.containerAtoms.isEmpty()) {
                length = this.containerAtoms.peek().endPosition;
            }
            if (length != -1) {
                this.atomSize = (length - extractorInput.getPosition()) + ((long) this.atomHeaderBytesRead);
            }
        }
        if (this.atomSize < this.atomHeaderBytesRead) {
            throw new ParserException("Atom size less than header length (unsupported).");
        }
        if (shouldParseContainerAtom(this.atomType)) {
            long position = (extractorInput.getPosition() + this.atomSize) - ((long) this.atomHeaderBytesRead);
            this.containerAtoms.push(new Atom.ContainerAtom(this.atomType, position));
            if (this.atomSize == this.atomHeaderBytesRead) {
                processAtomEnded(position);
            } else {
                enterReadingAtomHeaderState();
            }
        } else if (shouldParseLeafAtom(this.atomType)) {
            Assertions.checkState(this.atomHeaderBytesRead == 8);
            Assertions.checkState(this.atomSize <= 2147483647L);
            ParsableByteArray parsableByteArray = new ParsableByteArray((int) this.atomSize);
            this.atomData = parsableByteArray;
            System.arraycopy(this.atomHeader.data, 0, parsableByteArray.data, 0, 8);
            this.parserState = 1;
        } else {
            this.atomData = null;
            this.parserState = 1;
        }
        return true;
    }

    private boolean readAtomPayload(ExtractorInput extractorInput, PositionHolder positionHolder) throws InterruptedException, IOException {
        boolean z10;
        long j11 = this.atomSize - ((long) this.atomHeaderBytesRead);
        long position = extractorInput.getPosition() + j11;
        ParsableByteArray parsableByteArray = this.atomData;
        if (parsableByteArray == null) {
            if (j11 < 262144) {
                extractorInput.skipFully((int) j11);
            } else {
                positionHolder.position = extractorInput.getPosition() + j11;
                z10 = true;
            }
            processAtomEnded(position);
            return (z10 || this.parserState == 2) ? false : true;
        }
        extractorInput.readFully(parsableByteArray.data, this.atomHeaderBytesRead, (int) j11);
        if (this.atomType == Atom.TYPE_ftyp) {
            this.isQuickTime = processFtypAtom(this.atomData);
        } else if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().add(new Atom.LeafAtom(this.atomType, this.atomData));
        }
        z10 = false;
        processAtomEnded(position);
        if (z10) {
        }
    }

    private int readSample(ExtractorInput extractorInput, PositionHolder positionHolder) throws InterruptedException, IOException {
        long position = extractorInput.getPosition();
        if (this.sampleTrackIndex == -1) {
            int trackIndexOfNextReadSample = getTrackIndexOfNextReadSample(position);
            this.sampleTrackIndex = trackIndexOfNextReadSample;
            if (trackIndexOfNextReadSample == -1) {
                return -1;
            }
        }
        Mp4Track mp4Track = this.tracks[this.sampleTrackIndex];
        TrackOutput trackOutput = mp4Track.trackOutput;
        int i11 = mp4Track.sampleIndex;
        TrackSampleTable trackSampleTable = mp4Track.sampleTable;
        long j11 = trackSampleTable.offsets[i11];
        int i12 = trackSampleTable.sizes[i11];
        long j12 = (j11 - position) + ((long) this.sampleBytesWritten);
        if (j12 < 0 || j12 >= 262144) {
            positionHolder.position = j11;
            return 1;
        }
        if (mp4Track.track.sampleTransformation == 1) {
            j12 += 8;
            i12 -= 8;
        }
        extractorInput.skipFully((int) j12);
        int i13 = mp4Track.track.nalUnitLengthFieldLength;
        if (i13 == 0) {
            while (true) {
                int i14 = this.sampleBytesWritten;
                if (i14 >= i12) {
                    break;
                }
                int iSampleData = trackOutput.sampleData(extractorInput, i12 - i14, false);
                this.sampleBytesWritten += iSampleData;
                this.sampleCurrentNalBytesRemaining -= iSampleData;
            }
        } else {
            byte[] bArr = this.nalLength.data;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i15 = 4 - i13;
            while (this.sampleBytesWritten < i12) {
                int i16 = this.sampleCurrentNalBytesRemaining;
                if (i16 == 0) {
                    extractorInput.readFully(this.nalLength.data, i15, i13);
                    this.nalLength.setPosition(0);
                    this.sampleCurrentNalBytesRemaining = this.nalLength.readUnsignedIntToInt();
                    this.nalStartCode.setPosition(0);
                    trackOutput.sampleData(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                    i12 += i15;
                } else {
                    int iSampleData2 = trackOutput.sampleData(extractorInput, i16, false);
                    this.sampleBytesWritten += iSampleData2;
                    this.sampleCurrentNalBytesRemaining -= iSampleData2;
                }
            }
        }
        int i17 = i12;
        TrackSampleTable trackSampleTable2 = mp4Track.sampleTable;
        trackOutput.sampleMetadata(trackSampleTable2.timestampsUs[i11], trackSampleTable2.flags[i11], i17, 0, null);
        mp4Track.sampleIndex++;
        this.sampleTrackIndex = -1;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        return 0;
    }

    private static boolean shouldParseContainerAtom(int i11) {
        return i11 == Atom.TYPE_moov || i11 == Atom.TYPE_trak || i11 == Atom.TYPE_mdia || i11 == Atom.TYPE_minf || i11 == Atom.TYPE_stbl || i11 == Atom.TYPE_edts;
    }

    private static boolean shouldParseLeafAtom(int i11) {
        return i11 == Atom.TYPE_mdhd || i11 == Atom.TYPE_mvhd || i11 == Atom.TYPE_hdlr || i11 == Atom.TYPE_stsd || i11 == Atom.TYPE_stts || i11 == Atom.TYPE_stss || i11 == Atom.TYPE_ctts || i11 == Atom.TYPE_elst || i11 == Atom.TYPE_stsc || i11 == Atom.TYPE_stsz || i11 == Atom.TYPE_stz2 || i11 == Atom.TYPE_stco || i11 == Atom.TYPE_co64 || i11 == Atom.TYPE_tkhd || i11 == Atom.TYPE_ftyp || i11 == Atom.TYPE_udta;
    }

    private void updateSampleIndices(long j11) {
        for (Mp4Track mp4Track : this.tracks) {
            TrackSampleTable trackSampleTable = mp4Track.sampleTable;
            int indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfEarlierOrEqualSynchronizationSample(j11);
            if (indexOfEarlierOrEqualSynchronizationSample == -1) {
                indexOfEarlierOrEqualSynchronizationSample = trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j11);
            }
            mp4Track.sampleIndex = indexOfEarlierOrEqualSynchronizationSample;
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j11) {
        long j12;
        long j13;
        int indexOfLaterOrEqualSynchronizationSample;
        Mp4Track[] mp4TrackArr = this.tracks;
        if (mp4TrackArr.length == 0) {
            return new SeekMap.SeekPoints(SeekPoint.START);
        }
        int i11 = this.firstVideoTrackIndex;
        long jMaybeAdjustSeekOffset = -1;
        if (i11 != -1) {
            TrackSampleTable trackSampleTable = mp4TrackArr[i11].sampleTable;
            int synchronizationSampleIndex = getSynchronizationSampleIndex(trackSampleTable, j11);
            if (synchronizationSampleIndex == -1) {
                return new SeekMap.SeekPoints(SeekPoint.START);
            }
            long j14 = trackSampleTable.timestampsUs[synchronizationSampleIndex];
            j12 = trackSampleTable.offsets[synchronizationSampleIndex];
            if (j14 >= j11 || synchronizationSampleIndex >= trackSampleTable.sampleCount - 1 || (indexOfLaterOrEqualSynchronizationSample = trackSampleTable.getIndexOfLaterOrEqualSynchronizationSample(j11)) == -1 || indexOfLaterOrEqualSynchronizationSample == synchronizationSampleIndex) {
                j13 = -9223372036854775807L;
            } else {
                j13 = trackSampleTable.timestampsUs[indexOfLaterOrEqualSynchronizationSample];
                jMaybeAdjustSeekOffset = trackSampleTable.offsets[indexOfLaterOrEqualSynchronizationSample];
            }
            j11 = j14;
        } else {
            j12 = Long.MAX_VALUE;
            j13 = -9223372036854775807L;
        }
        int i12 = 0;
        while (true) {
            Mp4Track[] mp4TrackArr2 = this.tracks;
            if (i12 >= mp4TrackArr2.length) {
                break;
            }
            if (i12 != this.firstVideoTrackIndex) {
                TrackSampleTable trackSampleTable2 = mp4TrackArr2[i12].sampleTable;
                long jMaybeAdjustSeekOffset2 = maybeAdjustSeekOffset(trackSampleTable2, j11, j12);
                if (j13 != C.TIME_UNSET) {
                    jMaybeAdjustSeekOffset = maybeAdjustSeekOffset(trackSampleTable2, j13, jMaybeAdjustSeekOffset);
                }
                j12 = jMaybeAdjustSeekOffset2;
            }
            i12++;
        }
        SeekPoint seekPoint = new SeekPoint(j11, j12);
        return j13 == C.TIME_UNSET ? new SeekMap.SeekPoints(seekPoint) : new SeekMap.SeekPoints(seekPoint, new SeekPoint(j13, jMaybeAdjustSeekOffset));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws InterruptedException, IOException {
        while (true) {
            int i11 = this.parserState;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        return readSample(extractorInput, positionHolder);
                    }
                    throw new IllegalStateException();
                }
                if (readAtomPayload(extractorInput, positionHolder)) {
                    return 1;
                }
            } else if (!readAtomHeader(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.Extractor
    public void seek(long j11, long j12) {
        this.containerAtoms.clear();
        this.atomHeaderBytesRead = 0;
        this.sampleTrackIndex = -1;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        if (j11 == 0) {
            enterReadingAtomHeaderState();
        } else if (this.tracks != null) {
            updateSampleIndices(j12);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) throws InterruptedException, IOException {
        return Sniffer.sniffUnfragmented(extractorInput);
    }
}
