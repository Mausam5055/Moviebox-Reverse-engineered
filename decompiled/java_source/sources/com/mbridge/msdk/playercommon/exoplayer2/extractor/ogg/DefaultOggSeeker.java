package com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekPoint;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
final class DefaultOggSeeker implements OggSeeker {
    private static final int DEFAULT_OFFSET = 30000;
    public static final int MATCH_BYTE_RANGE = 100000;
    public static final int MATCH_RANGE = 72000;
    private static final int STATE_IDLE = 3;
    private static final int STATE_READ_LAST_PAGE = 1;
    private static final int STATE_SEEK = 2;
    private static final int STATE_SEEK_TO_END = 0;
    private long end;
    private long endGranule;
    private final long endPosition;
    private final OggPageHeader pageHeader = new OggPageHeader();
    private long positionBeforeSeekToEnd;
    private long start;
    private long startGranule;
    private final long startPosition;
    private int state;
    private final StreamReader streamReader;
    private long targetGranule;
    private long totalGranules;

    private class OggSeekMap implements SeekMap {
        private OggSeekMap() {
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
        public long getDurationUs() {
            return DefaultOggSeeker.this.streamReader.convertGranuleToTime(DefaultOggSeeker.this.totalGranules);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j11) {
            if (j11 == 0) {
                return new SeekMap.SeekPoints(new SeekPoint(0L, DefaultOggSeeker.this.startPosition));
            }
            long jConvertTimeToGranule = DefaultOggSeeker.this.streamReader.convertTimeToGranule(j11);
            DefaultOggSeeker defaultOggSeeker = DefaultOggSeeker.this;
            return new SeekMap.SeekPoints(new SeekPoint(j11, defaultOggSeeker.getEstimatedPosition(defaultOggSeeker.startPosition, jConvertTimeToGranule, 30000L)));
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }
    }

    public DefaultOggSeeker(long j11, long j12, StreamReader streamReader, int i11, long j13) {
        Assertions.checkArgument(j11 >= 0 && j12 > j11);
        this.streamReader = streamReader;
        this.startPosition = j11;
        this.endPosition = j12;
        if (i11 != j12 - j11) {
            this.state = 0;
        } else {
            this.totalGranules = j13;
            this.state = 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getEstimatedPosition(long j11, long j12, long j13) {
        long j14 = this.endPosition;
        long j15 = this.startPosition;
        long j16 = j11 + (((j12 * (j14 - j15)) / this.totalGranules) - j13);
        if (j16 >= j15) {
            j15 = j16;
        }
        return j15 >= j14 ? j14 - 1 : j15;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggSeeker
    public OggSeekMap createSeekMap() {
        if (this.totalGranules != 0) {
            return new OggSeekMap();
        }
        return null;
    }

    public long getNextSeekPosition(long j11, ExtractorInput extractorInput) throws InterruptedException, IOException {
        if (this.start == this.end) {
            return -(this.startGranule + 2);
        }
        long position = extractorInput.getPosition();
        if (!skipToNextPage(extractorInput, this.end)) {
            long j12 = this.start;
            if (j12 != position) {
                return j12;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.pageHeader.populate(extractorInput, false);
        extractorInput.resetPeekPosition();
        OggPageHeader oggPageHeader = this.pageHeader;
        long j13 = oggPageHeader.granulePosition;
        long j14 = j11 - j13;
        int i11 = oggPageHeader.headerSize + oggPageHeader.bodySize;
        if (j14 >= 0 && j14 <= 72000) {
            extractorInput.skipFully(i11);
            return -(this.pageHeader.granulePosition + 2);
        }
        if (j14 < 0) {
            this.end = position;
            this.endGranule = j13;
        } else {
            long j15 = i11;
            long position2 = extractorInput.getPosition() + j15;
            this.start = position2;
            this.startGranule = this.pageHeader.granulePosition;
            if ((this.end - position2) + j15 < 100000) {
                extractorInput.skipFully(i11);
                return -(this.startGranule + 2);
            }
        }
        long j16 = this.end;
        long j17 = this.start;
        if (j16 - j17 < 100000) {
            this.end = j17;
            return j17;
        }
        long j18 = i11;
        long j19 = j14 > 0 ? 1L : 2L;
        long position3 = extractorInput.getPosition();
        long j20 = this.end;
        long j21 = this.start;
        return Math.min(Math.max((position3 - (j18 * j19)) + ((j14 * (j20 - j21)) / (this.endGranule - this.startGranule)), j21), this.end - 1);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggSeeker
    public long read(ExtractorInput extractorInput) throws InterruptedException, IOException {
        int i11 = this.state;
        if (i11 == 0) {
            long position = extractorInput.getPosition();
            this.positionBeforeSeekToEnd = position;
            this.state = 1;
            long j11 = this.endPosition - 65307;
            if (j11 > position) {
                return j11;
            }
        } else if (i11 != 1) {
            if (i11 != 2) {
                if (i11 == 3) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            long j12 = this.targetGranule;
            long jSkipToPageOfGranule = 0;
            if (j12 != 0) {
                long nextSeekPosition = getNextSeekPosition(j12, extractorInput);
                if (nextSeekPosition >= 0) {
                    return nextSeekPosition;
                }
                jSkipToPageOfGranule = skipToPageOfGranule(extractorInput, this.targetGranule, -(nextSeekPosition + 2));
            }
            this.state = 3;
            return -(jSkipToPageOfGranule + 2);
        }
        this.totalGranules = readGranuleOfLastPage(extractorInput);
        this.state = 3;
        return this.positionBeforeSeekToEnd;
    }

    long readGranuleOfLastPage(ExtractorInput extractorInput) throws InterruptedException, IOException {
        skipToNextPage(extractorInput);
        this.pageHeader.reset();
        while ((this.pageHeader.type & 4) != 4 && extractorInput.getPosition() < this.endPosition) {
            this.pageHeader.populate(extractorInput, false);
            OggPageHeader oggPageHeader = this.pageHeader;
            extractorInput.skipFully(oggPageHeader.headerSize + oggPageHeader.bodySize);
        }
        return this.pageHeader.granulePosition;
    }

    public void resetSeeking() {
        this.start = this.startPosition;
        this.end = this.endPosition;
        this.startGranule = 0L;
        this.endGranule = this.totalGranules;
    }

    void skipToNextPage(ExtractorInput extractorInput) throws InterruptedException, IOException {
        if (!skipToNextPage(extractorInput, this.endPosition)) {
            throw new EOFException();
        }
    }

    boolean skipToNextPage(ExtractorInput extractorInput, long j11) throws InterruptedException, IOException {
        int i11;
        long jMin = Math.min(j11 + 3, this.endPosition);
        int position = 2048;
        byte[] bArr = new byte[2048];
        while (true) {
            int i12 = 0;
            if (extractorInput.getPosition() + ((long) position) > jMin && (position = (int) (jMin - extractorInput.getPosition())) < 4) {
                return false;
            }
            extractorInput.peekFully(bArr, 0, position, false);
            while (true) {
                i11 = position - 3;
                if (i12 < i11) {
                    if (bArr[i12] == 79 && bArr[i12 + 1] == 103 && bArr[i12 + 2] == 103 && bArr[i12 + 3] == 83) {
                        extractorInput.skipFully(i12);
                        return true;
                    }
                    i12++;
                }
            }
            extractorInput.skipFully(i11);
        }
    }

    long skipToPageOfGranule(ExtractorInput extractorInput, long j11, long j12) throws InterruptedException, IOException {
        this.pageHeader.populate(extractorInput, false);
        while (true) {
            OggPageHeader oggPageHeader = this.pageHeader;
            if (oggPageHeader.granulePosition >= j11) {
                extractorInput.resetPeekPosition();
                return j12;
            }
            extractorInput.skipFully(oggPageHeader.headerSize + oggPageHeader.bodySize);
            OggPageHeader oggPageHeader2 = this.pageHeader;
            long j13 = oggPageHeader2.granulePosition;
            oggPageHeader2.populate(extractorInput, false);
            j12 = j13;
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggSeeker
    public long startSeek(long j11) {
        int i11 = this.state;
        Assertions.checkArgument(i11 == 3 || i11 == 2);
        this.targetGranule = j11 != 0 ? this.streamReader.convertTimeToGranule(j11) : 0L;
        this.state = 2;
        resetSeeking();
        return this.targetGranule;
    }
}
