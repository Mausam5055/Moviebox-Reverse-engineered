package com.mbridge.msdk.playercommon.exoplayer2.trackselection;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroup;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;

/* JADX INFO: loaded from: classes5.dex */
public final class FixedTrackSelection extends BaseTrackSelection {

    @Nullable
    private final Object data;
    private final int reason;

    public static final class Factory implements TrackSelection.Factory {

        @Nullable
        private final Object data;
        private final int reason;

        public Factory() {
            this.reason = 0;
            this.data = null;
        }

        public Factory(int i11, @Nullable Object obj) {
            this.reason = i11;
            this.data = obj;
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection.Factory
        public FixedTrackSelection createTrackSelection(TrackGroup trackGroup, int... iArr) {
            Assertions.checkArgument(iArr.length == 1);
            return new FixedTrackSelection(trackGroup, iArr[0], this.reason, this.data);
        }
    }

    public FixedTrackSelection(TrackGroup trackGroup, int i11) {
        this(trackGroup, i11, 0, null);
    }

    public FixedTrackSelection(TrackGroup trackGroup, int i11, int i12, @Nullable Object obj) {
        super(trackGroup, i11);
        this.reason = i12;
        this.data = obj;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection
    public int getSelectedIndex() {
        return 0;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection
    @Nullable
    public Object getSelectionData() {
        return this.data;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection
    public int getSelectionReason() {
        return this.reason;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection
    public void updateSelectedTrack(long j11, long j12, long j13) {
    }
}
