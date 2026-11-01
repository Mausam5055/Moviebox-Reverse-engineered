package com.mbridge.msdk.playercommon.exoplayer2.util;

import android.net.NetworkInfo;
import android.util.Log;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlaybackException;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.PlaybackParameters;
import com.mbridge.msdk.playercommon.exoplayer2.Timeline;
import com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener;
import com.mbridge.msdk.playercommon.exoplayer2.decoder.DecoderCounters;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.Metadata;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSourceEventListener;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroup;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.MappingTrackSelector;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectionArray;
import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class EventLogger implements AnalyticsListener {
    private static final int MAX_TIMELINE_ITEM_LINES = 3;
    private static final String TAG = "EventLogger";
    private static final NumberFormat TIME_FORMAT;

    @Nullable
    private final MappingTrackSelector trackSelector;
    private final Timeline.Window window = new Timeline.Window();
    private final Timeline.Period period = new Timeline.Period();
    private final long startTimeMs = android.os.SystemClock.elapsedRealtime();

    static {
        NumberFormat numberFormat = NumberFormat.getInstance(Locale.US);
        TIME_FORMAT = numberFormat;
        numberFormat.setMinimumFractionDigits(2);
        numberFormat.setMaximumFractionDigits(2);
        numberFormat.setGroupingUsed(false);
    }

    public EventLogger(@Nullable MappingTrackSelector mappingTrackSelector) {
        this.trackSelector = mappingTrackSelector;
    }

    private static String getAdaptiveSupportString(int i11, int i12) {
        if (i11 < 2) {
            return "N/A";
        }
        if (i12 == 0) {
            return "NO";
        }
        if (i12 != 8) {
            return i12 != 16 ? UrlUtils.QUESTION_MARK : "YES";
        }
        return "YES_NOT_SEAMLESS";
    }

    private static String getDiscontinuityReasonString(int i11) {
        if (i11 == 0) {
            return "PERIOD_TRANSITION";
        }
        if (i11 == 1) {
            return "SEEK";
        }
        if (i11 == 2) {
            return "SEEK_ADJUSTMENT";
        }
        if (i11 != 3) {
            return i11 != 4 ? UrlUtils.QUESTION_MARK : "INTERNAL";
        }
        return "AD_INSERTION";
    }

    private String getEventString(AnalyticsListener.EventTime eventTime, String str) {
        return str + " [" + getEventTimeString(eventTime) + "]";
    }

    private String getEventString(AnalyticsListener.EventTime eventTime, String str, String str2) {
        return str + " [" + getEventTimeString(eventTime) + ", " + str2 + "]";
    }

    private String getEventTimeString(AnalyticsListener.EventTime eventTime) {
        String str = "window=" + eventTime.windowIndex;
        if (eventTime.mediaPeriodId != null) {
            str = str + ", period=" + eventTime.mediaPeriodId.periodIndex;
            if (eventTime.mediaPeriodId.isAd()) {
                str = (str + ", adGroup=" + eventTime.mediaPeriodId.adGroupIndex) + ", ad=" + eventTime.mediaPeriodId.adIndexInAdGroup;
            }
        }
        return getTimeString(eventTime.realtimeMs - this.startTimeMs) + ", " + getTimeString(eventTime.currentPlaybackPositionMs) + ", " + str;
    }

    private static String getFormatSupportString(int i11) {
        if (i11 == 0) {
            return "NO";
        }
        if (i11 == 1) {
            return "NO_UNSUPPORTED_TYPE";
        }
        if (i11 == 2) {
            return "NO_UNSUPPORTED_DRM";
        }
        if (i11 != 3) {
            return i11 != 4 ? UrlUtils.QUESTION_MARK : "YES";
        }
        return "NO_EXCEEDS_CAPABILITIES";
    }

    private static String getRepeatModeString(int i11) {
        if (i11 == 0) {
            return "OFF";
        }
        if (i11 != 1) {
            return i11 != 2 ? UrlUtils.QUESTION_MARK : "ALL";
        }
        return "ONE";
    }

    private static String getStateString(int i11) {
        if (i11 == 1) {
            return CustomSwipeRefreshLayout.IDLE;
        }
        if (i11 == 2) {
            return "BUFFERING";
        }
        if (i11 != 3) {
            return i11 != 4 ? UrlUtils.QUESTION_MARK : "ENDED";
        }
        return "READY";
    }

    private static String getTimeString(long j11) {
        return j11 == C.TIME_UNSET ? UrlUtils.QUESTION_MARK : TIME_FORMAT.format(j11 / 1000.0f);
    }

    private static String getTimelineChangeReasonString(int i11) {
        if (i11 == 0) {
            return "PREPARED";
        }
        if (i11 != 1) {
            return i11 != 2 ? UrlUtils.QUESTION_MARK : "DYNAMIC";
        }
        return "RESET";
    }

    private static String getTrackStatusString(TrackSelection trackSelection, TrackGroup trackGroup, int i11) {
        return getTrackStatusString((trackSelection == null || trackSelection.getTrackGroup() != trackGroup || trackSelection.indexOf(i11) == -1) ? false : true);
    }

    private static String getTrackStatusString(boolean z10) {
        return z10 ? "[X]" : "[ ]";
    }

    private static String getTrackTypeString(int i11) {
        if (i11 == 0) {
            return "default";
        }
        if (i11 == 1) {
            return MimeTypes.BASE_TYPE_AUDIO;
        }
        if (i11 == 2) {
            return "video";
        }
        if (i11 == 3) {
            return MimeTypes.BASE_TYPE_TEXT;
        }
        if (i11 == 4) {
            return TtmlNode.TAG_METADATA;
        }
        if (i11 == 5) {
            return "none";
        }
        if (i11 < 10000) {
            return UrlUtils.QUESTION_MARK;
        }
        return "custom (" + i11 + ")";
    }

    private void logd(AnalyticsListener.EventTime eventTime, String str) {
        logd(getEventString(eventTime, str));
    }

    private void logd(AnalyticsListener.EventTime eventTime, String str, String str2) {
        logd(getEventString(eventTime, str, str2));
    }

    private void loge(AnalyticsListener.EventTime eventTime, String str, String str2, Throwable th2) {
        loge(getEventString(eventTime, str, str2), th2);
    }

    private void loge(AnalyticsListener.EventTime eventTime, String str, Throwable th2) {
        loge(getEventString(eventTime, str), th2);
    }

    private void printInternalError(AnalyticsListener.EventTime eventTime, String str, Exception exc) {
        loge(eventTime, "internalError", str, exc);
    }

    private void printMetadata(Metadata metadata, String str) {
        for (int i11 = 0; i11 < metadata.length(); i11++) {
            logd(str + metadata.get(i11));
        }
    }

    protected void logd(String str) {
    }

    protected void loge(String str, Throwable th2) {
        Log.e(TAG, str, th2);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onAudioSessionId(AnalyticsListener.EventTime eventTime, int i11) {
        logd(eventTime, "audioSessionId", Integer.toString(i11));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onAudioUnderrun(AnalyticsListener.EventTime eventTime, int i11, long j11, long j12) {
        loge(eventTime, "audioTrackUnderrun", i11 + ", " + j11 + ", " + j12 + "]", null);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onBandwidthEstimate(AnalyticsListener.EventTime eventTime, int i11, long j11, long j12) {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onDecoderDisabled(AnalyticsListener.EventTime eventTime, int i11, DecoderCounters decoderCounters) {
        logd(eventTime, "decoderDisabled", getTrackTypeString(i11));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onDecoderEnabled(AnalyticsListener.EventTime eventTime, int i11, DecoderCounters decoderCounters) {
        logd(eventTime, "decoderEnabled", getTrackTypeString(i11));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onDecoderInitialized(AnalyticsListener.EventTime eventTime, int i11, String str, long j11) {
        logd(eventTime, "decoderInitialized", getTrackTypeString(i11) + ", " + str);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onDecoderInputFormatChanged(AnalyticsListener.EventTime eventTime, int i11, Format format) {
        logd(eventTime, "decoderInputFormatChanged", getTrackTypeString(i11) + ", " + Format.toLogString(format));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onDownstreamFormatChanged(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        logd(eventTime, "downstreamFormatChanged", Format.toLogString(mediaLoadData.trackFormat));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onDrmKeysLoaded(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "drmKeysLoaded");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onDrmKeysRemoved(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "drmKeysRemoved");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onDrmKeysRestored(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "drmKeysRestored");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onDrmSessionManagerError(AnalyticsListener.EventTime eventTime, Exception exc) {
        printInternalError(eventTime, "drmSessionManagerError", exc);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onDroppedVideoFrames(AnalyticsListener.EventTime eventTime, int i11, long j11) {
        logd(eventTime, "droppedFrames", Integer.toString(i11));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onLoadCanceled(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onLoadCompleted(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onLoadError(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData, IOException iOException, boolean z10) {
        printInternalError(eventTime, "loadError", iOException);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onLoadStarted(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData) {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onLoadingChanged(AnalyticsListener.EventTime eventTime, boolean z10) {
        logd(eventTime, "loading", Boolean.toString(z10));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onMediaPeriodCreated(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "mediaPeriodCreated");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onMediaPeriodReleased(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "mediaPeriodReleased");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onMetadata(AnalyticsListener.EventTime eventTime, Metadata metadata) {
        logd("metadata [" + getEventTimeString(eventTime) + ", ");
        printMetadata(metadata, "  ");
        logd("]");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onNetworkTypeChanged(AnalyticsListener.EventTime eventTime, @Nullable NetworkInfo networkInfo) {
        logd(eventTime, "networkTypeChanged", networkInfo == null ? "none" : networkInfo.toString());
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onPlaybackParametersChanged(AnalyticsListener.EventTime eventTime, PlaybackParameters playbackParameters) {
        logd(eventTime, "playbackParameters", Util.formatInvariant("speed=%.2f, pitch=%.2f, skipSilence=%s", Float.valueOf(playbackParameters.speed), Float.valueOf(playbackParameters.pitch), Boolean.valueOf(playbackParameters.skipSilence)));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onPlayerError(AnalyticsListener.EventTime eventTime, ExoPlaybackException exoPlaybackException) {
        loge(eventTime, "playerFailed", exoPlaybackException);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onPlayerStateChanged(AnalyticsListener.EventTime eventTime, boolean z10, int i11) {
        logd(eventTime, "state", z10 + ", " + getStateString(i11));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, int i11) {
        logd(eventTime, "positionDiscontinuity", getDiscontinuityReasonString(i11));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onReadingStarted(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "mediaPeriodReadingStarted");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onRenderedFirstFrame(AnalyticsListener.EventTime eventTime, Surface surface) {
        logd(eventTime, "renderedFirstFrame", surface.toString());
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onRepeatModeChanged(AnalyticsListener.EventTime eventTime, int i11) {
        logd(eventTime, "repeatMode", getRepeatModeString(i11));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onSeekProcessed(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "seekProcessed");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onSeekStarted(AnalyticsListener.EventTime eventTime) {
        logd(eventTime, "seekStarted");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onShuffleModeChanged(AnalyticsListener.EventTime eventTime, boolean z10) {
        logd(eventTime, "shuffleModeEnabled", Boolean.toString(z10));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onTimelineChanged(AnalyticsListener.EventTime eventTime, int i11) {
        int periodCount = eventTime.timeline.getPeriodCount();
        int windowCount = eventTime.timeline.getWindowCount();
        logd("timelineChanged [" + getEventTimeString(eventTime) + ", periodCount=" + periodCount + ", windowCount=" + windowCount + ", reason=" + getTimelineChangeReasonString(i11));
        for (int i12 = 0; i12 < Math.min(periodCount, 3); i12++) {
            eventTime.timeline.getPeriod(i12, this.period);
            logd("  period [" + getTimeString(this.period.getDurationMs()) + "]");
        }
        if (periodCount > 3) {
            logd("  ...");
        }
        for (int i13 = 0; i13 < Math.min(windowCount, 3); i13++) {
            eventTime.timeline.getWindow(i13, this.window);
            logd("  window [" + getTimeString(this.window.getDurationMs()) + ", " + this.window.isSeekable + ", " + this.window.isDynamic + "]");
        }
        if (windowCount > 3) {
            logd("  ...");
        }
        logd("]");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onTracksChanged(AnalyticsListener.EventTime eventTime, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        MappingTrackSelector mappingTrackSelector = this.trackSelector;
        MappingTrackSelector.MappedTrackInfo currentMappedTrackInfo = mappingTrackSelector != null ? mappingTrackSelector.getCurrentMappedTrackInfo() : null;
        if (currentMappedTrackInfo == null) {
            logd(eventTime, "tracksChanged", "[]");
            return;
        }
        logd("tracksChanged [" + getEventTimeString(eventTime) + ", ");
        int rendererCount = currentMappedTrackInfo.getRendererCount();
        int i11 = 0;
        while (true) {
            String str = "  ]";
            String str2 = " [";
            if (i11 >= rendererCount) {
                break;
            }
            TrackGroupArray trackGroups = currentMappedTrackInfo.getTrackGroups(i11);
            TrackSelection trackSelection = trackSelectionArray.get(i11);
            if (trackGroups.length > 0) {
                logd("  Renderer:" + i11 + " [");
                int i12 = 0;
                while (i12 < trackGroups.length) {
                    TrackGroup trackGroup = trackGroups.get(i12);
                    TrackGroupArray trackGroupArray2 = trackGroups;
                    String str3 = str;
                    logd("    Group:" + i12 + ", adaptive_supported=" + getAdaptiveSupportString(trackGroup.length, currentMappedTrackInfo.getAdaptiveSupport(i11, i12, false)) + str2);
                    int i13 = 0;
                    while (i13 < trackGroup.length) {
                        logd("      " + getTrackStatusString(trackSelection, trackGroup, i13) + " Track:" + i13 + ", " + Format.toLogString(trackGroup.getFormat(i13)) + ", supported=" + getFormatSupportString(currentMappedTrackInfo.getTrackSupport(i11, i12, i13)));
                        i13++;
                        str2 = str2;
                    }
                    logd("    ]");
                    i12++;
                    trackGroups = trackGroupArray2;
                    str = str3;
                }
                String str4 = str;
                if (trackSelection != null) {
                    for (int i14 = 0; i14 < trackSelection.length(); i14++) {
                        Metadata metadata = trackSelection.getFormat(i14).metadata;
                        if (metadata != null) {
                            logd("    Metadata [");
                            printMetadata(metadata, "      ");
                            logd("    ]");
                            break;
                        }
                    }
                }
                logd(str4);
            }
            i11++;
            rendererCount = rendererCount;
        }
        String str5 = " [";
        TrackGroupArray unmappedTrackGroups = currentMappedTrackInfo.getUnmappedTrackGroups();
        if (unmappedTrackGroups.length > 0) {
            logd("  Renderer:None [");
            int i15 = 0;
            while (i15 < unmappedTrackGroups.length) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("    Group:");
                sb2.append(i15);
                String str6 = str5;
                sb2.append(str6);
                logd(sb2.toString());
                TrackGroup trackGroup2 = unmappedTrackGroups.get(i15);
                for (int i16 = 0; i16 < trackGroup2.length; i16++) {
                    logd("      " + getTrackStatusString(false) + " Track:" + i16 + ", " + Format.toLogString(trackGroup2.getFormat(i16)) + ", supported=" + getFormatSupportString(0));
                }
                logd("    ]");
                i15++;
                str5 = str6;
            }
            logd("  ]");
        }
        logd("]");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onUpstreamDiscarded(AnalyticsListener.EventTime eventTime, MediaSourceEventListener.MediaLoadData mediaLoadData) {
        logd(eventTime, "upstreamDiscarded", Format.toLogString(mediaLoadData.trackFormat));
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, int i11, int i12, int i13, float f11) {
        logd(eventTime, "videoSizeChanged", i11 + ", " + i12);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.analytics.AnalyticsListener
    public void onViewportSizeChange(AnalyticsListener.EventTime eventTime, int i11, int i12) {
        logd(eventTime, "viewportSizeChanged", i11 + ", " + i12);
    }
}
