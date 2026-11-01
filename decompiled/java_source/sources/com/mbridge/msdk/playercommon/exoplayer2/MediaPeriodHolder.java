package com.mbridge.msdk.playercommon.exoplayer2;

import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.source.ClippingMediaPeriod;
import com.mbridge.msdk.playercommon.exoplayer2.source.EmptySampleStream;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaPeriod;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.source.SampleStream;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectionArray;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelector;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectorResult;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;

/* JADX INFO: loaded from: classes5.dex */
final class MediaPeriodHolder {
    private static final String TAG = "MediaPeriodHolder";
    public boolean hasEnabledTracks;
    public MediaPeriodInfo info;
    public final boolean[] mayRetainStreamFlags;
    public final MediaPeriod mediaPeriod;
    private final MediaSource mediaSource;
    public MediaPeriodHolder next;
    private TrackSelectorResult periodTrackSelectorResult;
    public boolean prepared;
    private final RendererCapabilities[] rendererCapabilities;
    public long rendererPositionOffsetUs;
    public final SampleStream[] sampleStreams;
    public TrackGroupArray trackGroups;
    private final TrackSelector trackSelector;
    public TrackSelectorResult trackSelectorResult;
    public final Object uid;

    public MediaPeriodHolder(RendererCapabilities[] rendererCapabilitiesArr, long j11, TrackSelector trackSelector, Allocator allocator, MediaSource mediaSource, Object obj, MediaPeriodInfo mediaPeriodInfo) {
        this.rendererCapabilities = rendererCapabilitiesArr;
        this.rendererPositionOffsetUs = j11 - mediaPeriodInfo.startPositionUs;
        this.trackSelector = trackSelector;
        this.mediaSource = mediaSource;
        this.uid = Assertions.checkNotNull(obj);
        this.info = mediaPeriodInfo;
        this.sampleStreams = new SampleStream[rendererCapabilitiesArr.length];
        this.mayRetainStreamFlags = new boolean[rendererCapabilitiesArr.length];
        MediaPeriod mediaPeriodCreatePeriod = mediaSource.createPeriod(mediaPeriodInfo.f36776id, allocator);
        long j12 = mediaPeriodInfo.endPositionUs;
        this.mediaPeriod = j12 != Long.MIN_VALUE ? new ClippingMediaPeriod(mediaPeriodCreatePeriod, true, 0L, j12) : mediaPeriodCreatePeriod;
    }

    private void associateNoSampleRenderersWithEmptySampleStream(SampleStream[] sampleStreamArr) {
        int i11 = 0;
        while (true) {
            RendererCapabilities[] rendererCapabilitiesArr = this.rendererCapabilities;
            if (i11 >= rendererCapabilitiesArr.length) {
                return;
            }
            if (rendererCapabilitiesArr[i11].getTrackType() == 5 && this.trackSelectorResult.isRendererEnabled(i11)) {
                sampleStreamArr[i11] = new EmptySampleStream();
            }
            i11++;
        }
    }

    private void disableTrackSelectionsInResult(TrackSelectorResult trackSelectorResult) {
        for (int i11 = 0; i11 < trackSelectorResult.length; i11++) {
            boolean zIsRendererEnabled = trackSelectorResult.isRendererEnabled(i11);
            TrackSelection trackSelection = trackSelectorResult.selections.get(i11);
            if (zIsRendererEnabled && trackSelection != null) {
                trackSelection.disable();
            }
        }
    }

    private void disassociateNoSampleRenderersWithEmptySampleStream(SampleStream[] sampleStreamArr) {
        int i11 = 0;
        while (true) {
            RendererCapabilities[] rendererCapabilitiesArr = this.rendererCapabilities;
            if (i11 >= rendererCapabilitiesArr.length) {
                return;
            }
            if (rendererCapabilitiesArr[i11].getTrackType() == 5) {
                sampleStreamArr[i11] = null;
            }
            i11++;
        }
    }

    private void enableTrackSelectionsInResult(TrackSelectorResult trackSelectorResult) {
        for (int i11 = 0; i11 < trackSelectorResult.length; i11++) {
            boolean zIsRendererEnabled = trackSelectorResult.isRendererEnabled(i11);
            TrackSelection trackSelection = trackSelectorResult.selections.get(i11);
            if (zIsRendererEnabled && trackSelection != null) {
                trackSelection.enable();
            }
        }
    }

    private void updatePeriodTrackSelectorResult(TrackSelectorResult trackSelectorResult) {
        TrackSelectorResult trackSelectorResult2 = this.periodTrackSelectorResult;
        if (trackSelectorResult2 != null) {
            disableTrackSelectionsInResult(trackSelectorResult2);
        }
        this.periodTrackSelectorResult = trackSelectorResult;
        if (trackSelectorResult != null) {
            enableTrackSelectionsInResult(trackSelectorResult);
        }
    }

    public long applyTrackSelection(long j11, boolean z10) {
        return applyTrackSelection(j11, z10, new boolean[this.rendererCapabilities.length]);
    }

    public long applyTrackSelection(long j11, boolean z10, boolean[] zArr) {
        int i11 = 0;
        while (true) {
            TrackSelectorResult trackSelectorResult = this.trackSelectorResult;
            boolean z11 = true;
            if (i11 >= trackSelectorResult.length) {
                break;
            }
            boolean[] zArr2 = this.mayRetainStreamFlags;
            if (z10 || !trackSelectorResult.isEquivalent(this.periodTrackSelectorResult, i11)) {
                z11 = false;
            }
            zArr2[i11] = z11;
            i11++;
        }
        disassociateNoSampleRenderersWithEmptySampleStream(this.sampleStreams);
        updatePeriodTrackSelectorResult(this.trackSelectorResult);
        TrackSelectionArray trackSelectionArray = this.trackSelectorResult.selections;
        long jSelectTracks = this.mediaPeriod.selectTracks(trackSelectionArray.getAll(), this.mayRetainStreamFlags, this.sampleStreams, zArr, j11);
        associateNoSampleRenderersWithEmptySampleStream(this.sampleStreams);
        this.hasEnabledTracks = false;
        int i12 = 0;
        while (true) {
            SampleStream[] sampleStreamArr = this.sampleStreams;
            if (i12 >= sampleStreamArr.length) {
                return jSelectTracks;
            }
            if (sampleStreamArr[i12] != null) {
                Assertions.checkState(this.trackSelectorResult.isRendererEnabled(i12));
                if (this.rendererCapabilities[i12].getTrackType() != 5) {
                    this.hasEnabledTracks = true;
                }
            } else {
                Assertions.checkState(trackSelectionArray.get(i12) == null);
            }
            i12++;
        }
    }

    public void continueLoading(long j11) {
        this.mediaPeriod.continueLoading(toPeriodTime(j11));
    }

    public long getBufferedPositionUs(boolean z10) {
        if (!this.prepared) {
            return this.info.startPositionUs;
        }
        long bufferedPositionUs = this.mediaPeriod.getBufferedPositionUs();
        return (bufferedPositionUs == Long.MIN_VALUE && z10) ? this.info.durationUs : bufferedPositionUs;
    }

    public long getDurationUs() {
        return this.info.durationUs;
    }

    public long getNextLoadPositionUs() {
        if (this.prepared) {
            return this.mediaPeriod.getNextLoadPositionUs();
        }
        return 0L;
    }

    public long getRendererOffset() {
        return this.rendererPositionOffsetUs;
    }

    public void handlePrepared(float f11) throws ExoPlaybackException {
        this.prepared = true;
        this.trackGroups = this.mediaPeriod.getTrackGroups();
        selectTracks(f11);
        long jApplyTrackSelection = applyTrackSelection(this.info.startPositionUs, false);
        long j11 = this.rendererPositionOffsetUs;
        MediaPeriodInfo mediaPeriodInfo = this.info;
        this.rendererPositionOffsetUs = j11 + (mediaPeriodInfo.startPositionUs - jApplyTrackSelection);
        this.info = mediaPeriodInfo.copyWithStartPositionUs(jApplyTrackSelection);
    }

    public boolean isFullyBuffered() {
        return this.prepared && (!this.hasEnabledTracks || this.mediaPeriod.getBufferedPositionUs() == Long.MIN_VALUE);
    }

    public void reevaluateBuffer(long j11) {
        if (this.prepared) {
            this.mediaPeriod.reevaluateBuffer(toPeriodTime(j11));
        }
    }

    public void release() {
        updatePeriodTrackSelectorResult(null);
        try {
            if (this.info.endPositionUs != Long.MIN_VALUE) {
                this.mediaSource.releasePeriod(((ClippingMediaPeriod) this.mediaPeriod).mediaPeriod);
            } else {
                this.mediaSource.releasePeriod(this.mediaPeriod);
            }
        } catch (RuntimeException e11) {
            Log.e(TAG, "Period release failed.", e11);
        }
    }

    public boolean selectTracks(float f11) throws ExoPlaybackException {
        TrackSelectorResult trackSelectorResultSelectTracks = this.trackSelector.selectTracks(this.rendererCapabilities, this.trackGroups);
        if (trackSelectorResultSelectTracks.isEquivalent(this.periodTrackSelectorResult)) {
            return false;
        }
        this.trackSelectorResult = trackSelectorResultSelectTracks;
        for (TrackSelection trackSelection : trackSelectorResultSelectTracks.selections.getAll()) {
            if (trackSelection != null) {
                trackSelection.onPlaybackSpeed(f11);
            }
        }
        return true;
    }

    public long toPeriodTime(long j11) {
        return j11 - getRendererOffset();
    }

    public long toRendererTime(long j11) {
        return j11 + getRendererOffset();
    }
}
