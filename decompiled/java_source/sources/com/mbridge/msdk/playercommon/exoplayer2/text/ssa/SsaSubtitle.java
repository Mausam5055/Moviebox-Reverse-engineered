package com.mbridge.msdk.playercommon.exoplayer2.text.ssa;

import com.mbridge.msdk.playercommon.exoplayer2.text.Cue;
import com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class SsaSubtitle implements Subtitle {
    private final long[] cueTimesUs;
    private final Cue[] cues;

    public SsaSubtitle(Cue[] cueArr, long[] jArr) {
        this.cues = cueArr;
        this.cueTimesUs = jArr;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public List<Cue> getCues(long j11) {
        Cue cue;
        int iBinarySearchFloor = Util.binarySearchFloor(this.cueTimesUs, j11, true, false);
        return (iBinarySearchFloor == -1 || (cue = this.cues[iBinarySearchFloor]) == null) ? Collections.emptyList() : Collections.singletonList(cue);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public long getEventTime(int i11) {
        Assertions.checkArgument(i11 >= 0);
        Assertions.checkArgument(i11 < this.cueTimesUs.length);
        return this.cueTimesUs[i11];
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.cueTimesUs.length;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j11) {
        int iBinarySearchCeil = Util.binarySearchCeil(this.cueTimesUs, j11, false, false);
        if (iBinarySearchCeil < this.cueTimesUs.length) {
            return iBinarySearchCeil;
        }
        return -1;
    }
}
