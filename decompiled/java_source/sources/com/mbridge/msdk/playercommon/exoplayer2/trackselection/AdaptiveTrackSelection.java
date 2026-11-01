package com.mbridge.msdk.playercommon.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroup;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.MediaChunk;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.BandwidthMeter;
import com.mbridge.msdk.playercommon.exoplayer2.util.Clock;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class AdaptiveTrackSelection extends BaseTrackSelection {
    public static final float DEFAULT_BANDWIDTH_FRACTION = 0.75f;
    public static final float DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE = 0.75f;
    public static final int DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS = 25000;
    public static final int DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS = 10000;
    public static final int DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS = 25000;
    public static final long DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS = 2000;
    private final float bandwidthFraction;
    private final BandwidthMeter bandwidthMeter;
    private final float bufferedFractionToLiveEdgeForQualityIncrease;
    private final Clock clock;
    private long lastBufferEvaluationMs;
    private final long maxDurationForQualityDecreaseUs;
    private final long minDurationForQualityIncreaseUs;
    private final long minDurationToRetainAfterDiscardUs;
    private final long minTimeBetweenBufferReevaluationMs;
    private float playbackSpeed;
    private int reason;
    private int selectedIndex;

    public static final class Factory implements TrackSelection.Factory {
        private final float bandwidthFraction;
        private final BandwidthMeter bandwidthMeter;
        private final float bufferedFractionToLiveEdgeForQualityIncrease;
        private final Clock clock;
        private final int maxDurationForQualityDecreaseMs;
        private final int minDurationForQualityIncreaseMs;
        private final int minDurationToRetainAfterDiscardMs;
        private final long minTimeBetweenBufferReevaluationMs;

        public Factory(BandwidthMeter bandwidthMeter) {
            this(bandwidthMeter, 10000, 25000, 25000, 0.75f, 0.75f, 2000L, Clock.DEFAULT);
        }

        public Factory(BandwidthMeter bandwidthMeter, int i11, int i12, int i13, float f11) {
            this(bandwidthMeter, i11, i12, i13, f11, 0.75f, 2000L, Clock.DEFAULT);
        }

        public Factory(BandwidthMeter bandwidthMeter, int i11, int i12, int i13, float f11, float f12, long j11, Clock clock) {
            this.bandwidthMeter = bandwidthMeter;
            this.minDurationForQualityIncreaseMs = i11;
            this.maxDurationForQualityDecreaseMs = i12;
            this.minDurationToRetainAfterDiscardMs = i13;
            this.bandwidthFraction = f11;
            this.bufferedFractionToLiveEdgeForQualityIncrease = f12;
            this.minTimeBetweenBufferReevaluationMs = j11;
            this.clock = clock;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection.Factory
        public AdaptiveTrackSelection createTrackSelection(TrackGroup trackGroup, int... iArr) {
            return new AdaptiveTrackSelection(trackGroup, iArr, this.bandwidthMeter, this.minDurationForQualityIncreaseMs, this.maxDurationForQualityDecreaseMs, this.minDurationToRetainAfterDiscardMs, this.bandwidthFraction, this.bufferedFractionToLiveEdgeForQualityIncrease, this.minTimeBetweenBufferReevaluationMs, this.clock);
        }
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, BandwidthMeter bandwidthMeter) {
        this(trackGroup, iArr, bandwidthMeter, 10000L, 25000L, 25000L, 0.75f, 0.75f, 2000L, Clock.DEFAULT);
    }

    public AdaptiveTrackSelection(TrackGroup trackGroup, int[] iArr, BandwidthMeter bandwidthMeter, long j11, long j12, long j13, float f11, float f12, long j14, Clock clock) {
        super(trackGroup, iArr);
        this.bandwidthMeter = bandwidthMeter;
        this.minDurationForQualityIncreaseUs = j11 * 1000;
        this.maxDurationForQualityDecreaseUs = j12 * 1000;
        this.minDurationToRetainAfterDiscardUs = j13 * 1000;
        this.bandwidthFraction = f11;
        this.bufferedFractionToLiveEdgeForQualityIncrease = f12;
        this.minTimeBetweenBufferReevaluationMs = j14;
        this.clock = clock;
        this.playbackSpeed = 1.0f;
        this.reason = 1;
        this.lastBufferEvaluationMs = C.TIME_UNSET;
        this.selectedIndex = determineIdealSelectedIndex(Long.MIN_VALUE);
    }

    private int determineIdealSelectedIndex(long j11) {
        long bitrateEstimate = (long) (this.bandwidthMeter.getBitrateEstimate() * this.bandwidthFraction);
        int i11 = 0;
        for (int i12 = 0; i12 < this.length; i12++) {
            if (j11 == Long.MIN_VALUE || !isBlacklisted(i12, j11)) {
                if (Math.round(getFormat(i12).bitrate * this.playbackSpeed) <= bitrateEstimate) {
                    return i12;
                }
                i11 = i12;
            }
        }
        return i11;
    }

    private long minDurationForQualityIncreaseUs(long j11) {
        return (j11 == C.TIME_UNSET || j11 > this.minDurationForQualityIncreaseUs) ? this.minDurationForQualityIncreaseUs : (long) (j11 * this.bufferedFractionToLiveEdgeForQualityIncrease);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.BaseTrackSelection, com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection
    public void enable() {
        this.lastBufferEvaluationMs = C.TIME_UNSET;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.BaseTrackSelection, com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection
    public int evaluateQueueSize(long j11, List<? extends MediaChunk> list) {
        int i11;
        int i12;
        long jElapsedRealtime = this.clock.elapsedRealtime();
        long j12 = this.lastBufferEvaluationMs;
        if (j12 != C.TIME_UNSET && jElapsedRealtime - j12 < this.minTimeBetweenBufferReevaluationMs) {
            return list.size();
        }
        this.lastBufferEvaluationMs = jElapsedRealtime;
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        if (Util.getPlayoutDurationForMediaDuration(list.get(size - 1).startTimeUs - j11, this.playbackSpeed) < this.minDurationToRetainAfterDiscardUs) {
            return size;
        }
        Format format = getFormat(determineIdealSelectedIndex(jElapsedRealtime));
        for (int i13 = 0; i13 < size; i13++) {
            MediaChunk mediaChunk = list.get(i13);
            Format format2 = mediaChunk.trackFormat;
            if (Util.getPlayoutDurationForMediaDuration(mediaChunk.startTimeUs - j11, this.playbackSpeed) >= this.minDurationToRetainAfterDiscardUs && format2.bitrate < format.bitrate && (i11 = format2.height) != -1 && i11 < 720 && (i12 = format2.width) != -1 && i12 < 1280 && i11 < format.height) {
                return i13;
            }
        }
        return size;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection
    public int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection
    @Nullable
    public Object getSelectionData() {
        return null;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection
    public int getSelectionReason() {
        return this.reason;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.BaseTrackSelection, com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection
    public void onPlaybackSpeed(float f11) {
        this.playbackSpeed = f11;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection
    public void updateSelectedTrack(long j11, long j12, long j13) {
        long jElapsedRealtime = this.clock.elapsedRealtime();
        int i11 = this.selectedIndex;
        int iDetermineIdealSelectedIndex = determineIdealSelectedIndex(jElapsedRealtime);
        this.selectedIndex = iDetermineIdealSelectedIndex;
        if (iDetermineIdealSelectedIndex == i11) {
            return;
        }
        if (!isBlacklisted(i11, jElapsedRealtime)) {
            Format format = getFormat(i11);
            Format format2 = getFormat(this.selectedIndex);
            if (format2.bitrate > format.bitrate && j12 < minDurationForQualityIncreaseUs(j13)) {
                this.selectedIndex = i11;
            } else if (format2.bitrate < format.bitrate && j12 >= this.maxDurationForQualityDecreaseUs) {
                this.selectedIndex = i11;
            }
        }
        if (this.selectedIndex != i11) {
            this.reason = 3;
        }
    }
}
