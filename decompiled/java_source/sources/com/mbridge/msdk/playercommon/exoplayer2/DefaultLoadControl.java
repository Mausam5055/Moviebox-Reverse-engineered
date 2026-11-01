package com.mbridge.msdk.playercommon.exoplayer2;

import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectionArray;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.Allocator;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DefaultAllocator;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.PriorityTaskManager;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultLoadControl implements LoadControl {
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS = 5000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_MS = 2500;
    public static final int DEFAULT_MAX_BUFFER_MS = 50000;
    public static final int DEFAULT_MIN_BUFFER_MS = 15000;
    public static final boolean DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS = true;
    public static final int DEFAULT_TARGET_BUFFER_BYTES = -1;
    private final DefaultAllocator allocator;
    private final long bufferForPlaybackAfterRebufferUs;
    private final long bufferForPlaybackUs;
    private boolean isBuffering;
    private final long maxBufferUs;
    private final long minBufferUs;
    private final boolean prioritizeTimeOverSizeThresholds;
    private final PriorityTaskManager priorityTaskManager;
    private final int targetBufferBytesOverwrite;
    private int targetBufferSize;

    public static final class Builder {
        private DefaultAllocator allocator = null;
        private int minBufferMs = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
        private int maxBufferMs = DefaultLoadControl.DEFAULT_MAX_BUFFER_MS;
        private int bufferForPlaybackMs = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS;
        private int bufferForPlaybackAfterRebufferMs = 5000;
        private int targetBufferBytes = -1;
        private boolean prioritizeTimeOverSizeThresholds = true;
        private PriorityTaskManager priorityTaskManager = null;

        public DefaultLoadControl createDefaultLoadControl() {
            if (this.allocator == null) {
                this.allocator = new DefaultAllocator(true, 65536);
            }
            return new DefaultLoadControl(this.allocator, this.minBufferMs, this.maxBufferMs, this.bufferForPlaybackMs, this.bufferForPlaybackAfterRebufferMs, this.targetBufferBytes, this.prioritizeTimeOverSizeThresholds, this.priorityTaskManager);
        }

        public Builder setAllocator(DefaultAllocator defaultAllocator) {
            this.allocator = defaultAllocator;
            return this;
        }

        public Builder setBufferDurationsMs(int i11, int i12, int i13, int i14) {
            this.minBufferMs = i11;
            this.maxBufferMs = i12;
            this.bufferForPlaybackMs = i13;
            this.bufferForPlaybackAfterRebufferMs = i14;
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholds(boolean z10) {
            this.prioritizeTimeOverSizeThresholds = z10;
            return this;
        }

        public Builder setPriorityTaskManager(PriorityTaskManager priorityTaskManager) {
            this.priorityTaskManager = priorityTaskManager;
            return this;
        }

        public Builder setTargetBufferBytes(int i11) {
            this.targetBufferBytes = i11;
            return this;
        }
    }

    public DefaultLoadControl() {
        this(new DefaultAllocator(true, 65536));
    }

    @Deprecated
    public DefaultLoadControl(DefaultAllocator defaultAllocator) {
        this(defaultAllocator, DEFAULT_MIN_BUFFER_MS, DEFAULT_MAX_BUFFER_MS, DEFAULT_BUFFER_FOR_PLAYBACK_MS, 5000, -1, true);
    }

    @Deprecated
    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i11, int i12, int i13, int i14, int i15, boolean z10) {
        this(defaultAllocator, i11, i12, i13, i14, i15, z10, null);
    }

    @Deprecated
    public DefaultLoadControl(DefaultAllocator defaultAllocator, int i11, int i12, int i13, int i14, int i15, boolean z10, PriorityTaskManager priorityTaskManager) {
        assertGreaterOrEqual(i13, 0, "bufferForPlaybackMs", "0");
        assertGreaterOrEqual(i14, 0, "bufferForPlaybackAfterRebufferMs", "0");
        assertGreaterOrEqual(i11, i13, "minBufferMs", "bufferForPlaybackMs");
        assertGreaterOrEqual(i11, i14, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        assertGreaterOrEqual(i12, i11, "maxBufferMs", "minBufferMs");
        this.allocator = defaultAllocator;
        this.minBufferUs = ((long) i11) * 1000;
        this.maxBufferUs = ((long) i12) * 1000;
        this.bufferForPlaybackUs = ((long) i13) * 1000;
        this.bufferForPlaybackAfterRebufferUs = ((long) i14) * 1000;
        this.targetBufferBytesOverwrite = i15;
        this.prioritizeTimeOverSizeThresholds = z10;
        this.priorityTaskManager = priorityTaskManager;
    }

    private static void assertGreaterOrEqual(int i11, int i12, String str, String str2) {
        Assertions.checkArgument(i11 >= i12, str + " cannot be less than " + str2);
    }

    private void reset(boolean z10) {
        this.targetBufferSize = 0;
        PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
        if (priorityTaskManager != null && this.isBuffering) {
            priorityTaskManager.remove(0);
        }
        this.isBuffering = false;
        if (z10) {
            this.allocator.reset();
        }
    }

    protected int calculateTargetBufferSize(Renderer[] rendererArr, TrackSelectionArray trackSelectionArray) {
        int defaultBufferSize = 0;
        for (int i11 = 0; i11 < rendererArr.length; i11++) {
            if (trackSelectionArray.get(i11) != null) {
                defaultBufferSize += Util.getDefaultBufferSize(rendererArr[i11].getTrackType());
            }
        }
        return defaultBufferSize;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.LoadControl
    public Allocator getAllocator() {
        return this.allocator;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.LoadControl
    public long getBackBufferDurationUs() {
        return 0L;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.LoadControl
    public void onPrepared() {
        reset(false);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.LoadControl
    public void onReleased() {
        reset(true);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.LoadControl
    public void onStopped() {
        reset(true);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.LoadControl
    public void onTracksSelected(Renderer[] rendererArr, TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        int iCalculateTargetBufferSize = this.targetBufferBytesOverwrite;
        if (iCalculateTargetBufferSize == -1) {
            iCalculateTargetBufferSize = calculateTargetBufferSize(rendererArr, trackSelectionArray);
        }
        this.targetBufferSize = iCalculateTargetBufferSize;
        this.allocator.setTargetBufferSize(iCalculateTargetBufferSize);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.LoadControl
    public boolean retainBackBufferFromKeyframe() {
        return false;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.LoadControl
    public boolean shouldContinueLoading(long j11, float f11) {
        boolean z10;
        boolean z11 = true;
        boolean z12 = this.allocator.getTotalBytesAllocated() >= this.targetBufferSize;
        boolean z13 = this.isBuffering;
        long jMin = this.minBufferUs;
        if (f11 > 1.0f) {
            jMin = Math.min(Util.getMediaDurationForPlayoutDuration(jMin, f11), this.maxBufferUs);
        }
        if (j11 < jMin) {
            if (!this.prioritizeTimeOverSizeThresholds && z12) {
                z11 = false;
            }
            this.isBuffering = z11;
        } else if (j11 > this.maxBufferUs || z12) {
            this.isBuffering = false;
        }
        PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
        if (priorityTaskManager != null && (z10 = this.isBuffering) != z13) {
            if (z10) {
                priorityTaskManager.add(0);
            } else {
                priorityTaskManager.remove(0);
            }
        }
        return this.isBuffering;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.LoadControl
    public boolean shouldStartPlayback(long j11, float f11, boolean z10) {
        long playoutDurationForMediaDuration = Util.getPlayoutDurationForMediaDuration(j11, f11);
        long j12 = z10 ? this.bufferForPlaybackAfterRebufferUs : this.bufferForPlaybackUs;
        return j12 <= 0 || playoutDurationForMediaDuration >= j12 || (!this.prioritizeTimeOverSizeThresholds && this.allocator.getTotalBytesAllocated() >= this.targetBufferSize);
    }
}
