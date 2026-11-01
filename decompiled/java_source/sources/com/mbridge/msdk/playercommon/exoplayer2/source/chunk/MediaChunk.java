package com.mbridge.msdk.playercommon.exoplayer2.source.chunk;

import com.mbridge.msdk.playercommon.exoplayer2.Format;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSpec;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;

/* JADX INFO: loaded from: classes5.dex */
public abstract class MediaChunk extends Chunk {
    public final long chunkIndex;

    public MediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i11, Object obj, long j11, long j12, long j13) {
        super(dataSource, dataSpec, 1, format, i11, obj, j11, j12);
        Assertions.checkNotNull(format);
        this.chunkIndex = j13;
    }

    public long getNextChunkIndex() {
        long j11 = this.chunkIndex;
        if (j11 != -1) {
            return 1 + j11;
        }
        return -1L;
    }

    public abstract boolean isLoadCompleted();
}
