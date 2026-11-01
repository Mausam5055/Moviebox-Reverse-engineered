package com.mbridge.msdk.playercommon.exoplayer2.source.chunk;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.DefaultExtractorInput;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.TrackOutput;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSpec;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class SingleSampleMediaChunk extends BaseMediaChunk {
    private volatile int bytesLoaded;
    private volatile boolean loadCompleted;
    private final Format sampleFormat;
    private final int trackType;

    public SingleSampleMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i11, Object obj, long j11, long j12, long j13, int i12, Format format2) {
        super(dataSource, dataSpec, format, i11, obj, j11, j12, C.TIME_UNSET, j13);
        this.trackType = i12;
        this.sampleFormat = format2;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.chunk.Chunk
    public long bytesLoaded() {
        return this.bytesLoaded;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.Loader.Loadable
    public void cancelLoad() {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.Loader.Loadable
    public void load() throws InterruptedException, IOException {
        try {
            long jOpen = this.dataSource.open(this.dataSpec.subrange(this.bytesLoaded));
            if (jOpen != -1) {
                jOpen += (long) this.bytesLoaded;
            }
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(this.dataSource, this.bytesLoaded, jOpen);
            BaseMediaChunkOutput output = getOutput();
            output.setSampleOffsetUs(0L);
            TrackOutput trackOutputTrack = output.track(0, this.trackType);
            trackOutputTrack.format(this.sampleFormat);
            for (int iSampleData = 0; iSampleData != -1; iSampleData = trackOutputTrack.sampleData(defaultExtractorInput, Integer.MAX_VALUE, true)) {
                this.bytesLoaded += iSampleData;
            }
            trackOutputTrack.sampleMetadata(this.startTimeUs, 1, this.bytesLoaded, 0, null);
            Util.closeQuietly(this.dataSource);
            this.loadCompleted = true;
        } catch (Throwable th2) {
            Util.closeQuietly(this.dataSource);
            throw th2;
        }
    }
}
