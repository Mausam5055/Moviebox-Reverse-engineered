package com.mbridge.msdk.playercommon.exoplayer2.source.chunk;

/* JADX INFO: loaded from: classes5.dex */
public final class ChunkHolder {
    public Chunk chunk;
    public boolean endOfStream;

    public void clear() {
        this.chunk = null;
        this.endOfStream = false;
    }
}
