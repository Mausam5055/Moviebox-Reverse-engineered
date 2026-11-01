package com.mbridge.msdk.playercommon.exoplayer2.source.chunk;

import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.DummyTrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.source.SampleQueue;

/* JADX INFO: loaded from: classes5.dex */
public final class BaseMediaChunkOutput implements ChunkExtractorWrapper.TrackOutputProvider {
    private static final String TAG = "BaseMediaChunkOutput";
    private final SampleQueue[] sampleQueues;
    private final int[] trackTypes;

    public BaseMediaChunkOutput(int[] iArr, SampleQueue[] sampleQueueArr) {
        this.trackTypes = iArr;
        this.sampleQueues = sampleQueueArr;
    }

    public int[] getWriteIndices() {
        int[] iArr = new int[this.sampleQueues.length];
        int i11 = 0;
        while (true) {
            SampleQueue[] sampleQueueArr = this.sampleQueues;
            if (i11 >= sampleQueueArr.length) {
                return iArr;
            }
            SampleQueue sampleQueue = sampleQueueArr[i11];
            if (sampleQueue != null) {
                iArr[i11] = sampleQueue.getWriteIndex();
            }
            i11++;
        }
    }

    public void setSampleOffsetUs(long j11) {
        for (SampleQueue sampleQueue : this.sampleQueues) {
            if (sampleQueue != null) {
                sampleQueue.setSampleOffsetUs(j11);
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkExtractorWrapper.TrackOutputProvider
    public TrackOutput track(int i11, int i12) {
        int i13 = 0;
        while (true) {
            int[] iArr = this.trackTypes;
            if (i13 >= iArr.length) {
                Log.e(TAG, "Unmatched track of type: " + i12);
                return new DummyTrackOutput();
            }
            if (i12 == iArr[i13]) {
                return this.sampleQueues[i13];
            }
            i13++;
        }
    }
}
