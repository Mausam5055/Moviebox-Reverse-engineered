package com.mbridge.msdk.playercommon.exoplayer2.source;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.FormatHolder;
import com.mbridge.msdk.playercommon.exoplayer2.SeekParameters;
import com.mbridge.msdk.playercommon.exoplayer2.decoder.DecoderInputBuffer;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class ClippingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {
    private MediaPeriod.Callback callback;
    long endUs;
    public final MediaPeriod mediaPeriod;
    private long pendingInitialDiscontinuityPositionUs;
    private ClippingSampleStream[] sampleStreams = new ClippingSampleStream[0];
    long startUs;

    private final class ClippingSampleStream implements SampleStream {
        public final SampleStream childStream;
        private boolean sentEos;

        public ClippingSampleStream(SampleStream sampleStream) {
            this.childStream = sampleStream;
        }

        public void clearSentEos() {
            this.sentEos = false;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.SampleStream
        public boolean isReady() {
            return !ClippingMediaPeriod.this.isPendingInitialDiscontinuity() && this.childStream.isReady();
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.SampleStream
        public void maybeThrowError() throws IOException {
            this.childStream.maybeThrowError();
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z10) {
            if (ClippingMediaPeriod.this.isPendingInitialDiscontinuity()) {
                return -3;
            }
            if (this.sentEos) {
                decoderInputBuffer.setFlags(4);
                return -4;
            }
            int data = this.childStream.readData(formatHolder, decoderInputBuffer, z10);
            if (data == -5) {
                Format format = formatHolder.format;
                int i11 = format.encoderDelay;
                if (i11 != 0 || format.encoderPadding != 0) {
                    ClippingMediaPeriod clippingMediaPeriod = ClippingMediaPeriod.this;
                    if (clippingMediaPeriod.startUs != 0) {
                        i11 = 0;
                    }
                    formatHolder.format = format.copyWithGaplessInfo(i11, clippingMediaPeriod.endUs == Long.MIN_VALUE ? format.encoderPadding : 0);
                }
                return -5;
            }
            ClippingMediaPeriod clippingMediaPeriod2 = ClippingMediaPeriod.this;
            long j11 = clippingMediaPeriod2.endUs;
            if (j11 == Long.MIN_VALUE || ((data != -4 || decoderInputBuffer.timeUs < j11) && !(data == -3 && clippingMediaPeriod2.getBufferedPositionUs() == Long.MIN_VALUE))) {
                return data;
            }
            decoderInputBuffer.clear();
            decoderInputBuffer.setFlags(4);
            this.sentEos = true;
            return -4;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.source.SampleStream
        public int skipData(long j11) {
            if (ClippingMediaPeriod.this.isPendingInitialDiscontinuity()) {
                return -3;
            }
            return this.childStream.skipData(j11);
        }
    }

    public ClippingMediaPeriod(MediaPeriod mediaPeriod, boolean z10, long j11, long j12) {
        this.mediaPeriod = mediaPeriod;
        this.pendingInitialDiscontinuityPositionUs = z10 ? j11 : C.TIME_UNSET;
        this.startUs = j11;
        this.endUs = j12;
    }

    private SeekParameters clipSeekParameters(long j11, SeekParameters seekParameters) {
        long jConstrainValue = Util.constrainValue(seekParameters.toleranceBeforeUs, 0L, j11 - this.startUs);
        long j12 = seekParameters.toleranceAfterUs;
        long j13 = this.endUs;
        long jConstrainValue2 = Util.constrainValue(j12, 0L, j13 == Long.MIN_VALUE ? Long.MAX_VALUE : j13 - j11);
        return (jConstrainValue == seekParameters.toleranceBeforeUs && jConstrainValue2 == seekParameters.toleranceAfterUs) ? seekParameters : new SeekParameters(jConstrainValue, jConstrainValue2);
    }

    private static boolean shouldKeepInitialDiscontinuity(long j11, TrackSelection[] trackSelectionArr) {
        if (j11 != 0) {
            for (TrackSelection trackSelection : trackSelectionArr) {
                if (trackSelection != null && !MimeTypes.isAudio(trackSelection.getSelectedFormat().sampleMimeType)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod, com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j11) {
        return this.mediaPeriod.continueLoading(j11);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j11, boolean z10) {
        this.mediaPeriod.discardBuffer(j11, z10);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j11, SeekParameters seekParameters) {
        long j12 = this.startUs;
        if (j11 == j12) {
            return j12;
        }
        return this.mediaPeriod.getAdjustedSeekPositionUs(j11, clipSeekParameters(j11, seekParameters));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod, com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.mediaPeriod.getBufferedPositionUs();
        if (bufferedPositionUs != Long.MIN_VALUE) {
            long j11 = this.endUs;
            if (j11 == Long.MIN_VALUE || bufferedPositionUs < j11) {
                return bufferedPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod, com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.mediaPeriod.getNextLoadPositionUs();
        if (nextLoadPositionUs != Long.MIN_VALUE) {
            long j11 = this.endUs;
            if (j11 == Long.MIN_VALUE || nextLoadPositionUs < j11) {
                return nextLoadPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public TrackGroupArray getTrackGroups() {
        return this.mediaPeriod.getTrackGroups();
    }

    boolean isPendingInitialDiscontinuity() {
        return this.pendingInitialDiscontinuityPositionUs != C.TIME_UNSET;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws IOException {
        this.mediaPeriod.maybeThrowPrepareError();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
        this.callback.onContinueLoadingRequested(this);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod.Callback
    public void onPrepared(MediaPeriod mediaPeriod) {
        this.callback.onPrepared(this);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public void prepare(MediaPeriod.Callback callback, long j11) {
        this.callback = callback;
        this.mediaPeriod.prepare(this, j11);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        if (isPendingInitialDiscontinuity()) {
            long j11 = this.pendingInitialDiscontinuityPositionUs;
            this.pendingInitialDiscontinuityPositionUs = C.TIME_UNSET;
            long discontinuity = readDiscontinuity();
            return discontinuity != C.TIME_UNSET ? discontinuity : j11;
        }
        long discontinuity2 = this.mediaPeriod.readDiscontinuity();
        if (discontinuity2 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        Assertions.checkState(discontinuity2 >= this.startUs);
        long j12 = this.endUs;
        Assertions.checkState(j12 == Long.MIN_VALUE || discontinuity2 <= j12);
        return discontinuity2;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod, com.mbridge.msdk.playercommon.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j11) {
        this.mediaPeriod.reevaluateBuffer(j11);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public long seekToUs(long j11) {
        this.pendingInitialDiscontinuityPositionUs = C.TIME_UNSET;
        boolean z10 = false;
        for (ClippingSampleStream clippingSampleStream : this.sampleStreams) {
            if (clippingSampleStream != null) {
                clippingSampleStream.clearSentEos();
            }
        }
        long jSeekToUs = this.mediaPeriod.seekToUs(j11);
        if (jSeekToUs == j11) {
            z10 = true;
        } else if (jSeekToUs >= this.startUs) {
            long j12 = this.endUs;
            if (j12 == Long.MIN_VALUE || jSeekToUs <= j12) {
                z10 = true;
            }
        }
        Assertions.checkState(z10);
        return jSeekToUs;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    /* JADX WARN: Code duplicated, block: B:27:0x0063  */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod
    public long selectTracks(TrackSelection[] trackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j11) {
        long j12;
        boolean z10;
        this.sampleStreams = new ClippingSampleStream[sampleStreamArr.length];
        SampleStream[] sampleStreamArr2 = new SampleStream[sampleStreamArr.length];
        int i11 = 0;
        while (true) {
            SampleStream sampleStream = null;
            if (i11 >= sampleStreamArr.length) {
                break;
            }
            ClippingSampleStream[] clippingSampleStreamArr = this.sampleStreams;
            ClippingSampleStream clippingSampleStream = (ClippingSampleStream) sampleStreamArr[i11];
            clippingSampleStreamArr[i11] = clippingSampleStream;
            if (clippingSampleStream != null) {
                sampleStream = clippingSampleStream.childStream;
            }
            sampleStreamArr2[i11] = sampleStream;
            i11++;
        }
        long jSelectTracks = this.mediaPeriod.selectTracks(trackSelectionArr, zArr, sampleStreamArr2, zArr2, j11);
        if (isPendingInitialDiscontinuity()) {
            long j13 = this.startUs;
            if (j11 == j13 && shouldKeepInitialDiscontinuity(j13, trackSelectionArr)) {
                j12 = jSelectTracks;
            } else {
                j12 = C.TIME_UNSET;
            }
        } else {
            j12 = C.TIME_UNSET;
        }
        this.pendingInitialDiscontinuityPositionUs = j12;
        if (jSelectTracks != j11) {
            if (jSelectTracks >= this.startUs) {
                long j14 = this.endUs;
                z10 = j14 == Long.MIN_VALUE || jSelectTracks <= j14;
            }
        }
        Assertions.checkState(z10);
        for (int i12 = 0; i12 < sampleStreamArr.length; i12++) {
            SampleStream sampleStream2 = sampleStreamArr2[i12];
            if (sampleStream2 == null) {
                this.sampleStreams[i12] = null;
            } else if (sampleStreamArr[i12] == null || this.sampleStreams[i12].childStream != sampleStream2) {
                this.sampleStreams[i12] = new ClippingSampleStream(sampleStream2);
            }
            sampleStreamArr[i12] = this.sampleStreams[i12];
        }
        return jSelectTracks;
    }

    public void updateClipping(long j11, long j12) {
        this.startUs = j11;
        this.endUs = j12;
    }
}
