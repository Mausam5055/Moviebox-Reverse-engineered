package com.mbridge.msdk.playercommon.exoplayer2.trackselection;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroup;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public final class RandomTrackSelection extends BaseTrackSelection {
    private final Random random;
    private int selectedIndex;

    public static final class Factory implements TrackSelection.Factory {
        private final Random random;

        public Factory() {
            this.random = new Random();
        }

        public Factory(int i11) {
            this.random = new Random(i11);
        }

        @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection.Factory
        public RandomTrackSelection createTrackSelection(TrackGroup trackGroup, int... iArr) {
            return new RandomTrackSelection(trackGroup, iArr, this.random);
        }
    }

    public RandomTrackSelection(TrackGroup trackGroup, int... iArr) {
        super(trackGroup, iArr);
        Random random = new Random();
        this.random = random;
        this.selectedIndex = random.nextInt(this.length);
    }

    public RandomTrackSelection(TrackGroup trackGroup, int[] iArr, long j11) {
        this(trackGroup, iArr, new Random(j11));
    }

    public RandomTrackSelection(TrackGroup trackGroup, int[] iArr, Random random) {
        super(trackGroup, iArr);
        this.random = random;
        this.selectedIndex = random.nextInt(this.length);
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
        return 3;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelection
    public void updateSelectedTrack(long j11, long j12, long j13) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i11 = 0;
        for (int i12 = 0; i12 < this.length; i12++) {
            if (!isBlacklisted(i12, jElapsedRealtime)) {
                i11++;
            }
        }
        this.selectedIndex = this.random.nextInt(i11);
        if (i11 != this.length) {
            int i13 = 0;
            for (int i14 = 0; i14 < this.length; i14++) {
                if (!isBlacklisted(i14, jElapsedRealtime)) {
                    int i15 = i13 + 1;
                    if (this.selectedIndex == i13) {
                        this.selectedIndex = i14;
                        return;
                    }
                    i13 = i15;
                }
            }
        }
    }
}
