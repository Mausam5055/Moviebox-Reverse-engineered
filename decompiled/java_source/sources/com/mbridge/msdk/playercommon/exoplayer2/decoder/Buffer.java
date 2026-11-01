package com.mbridge.msdk.playercommon.exoplayer2.decoder;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Buffer {
    private int flags;

    public final void addFlag(int i11) {
        this.flags = i11 | this.flags;
    }

    public void clear() {
        this.flags = 0;
    }

    public final void clearFlag(int i11) {
        this.flags = (~i11) & this.flags;
    }

    protected final boolean getFlag(int i11) {
        return (this.flags & i11) == i11;
    }

    public final boolean isDecodeOnly() {
        return getFlag(Integer.MIN_VALUE);
    }

    public final boolean isEndOfStream() {
        return getFlag(4);
    }

    public final boolean isKeyFrame() {
        return getFlag(1);
    }

    public final void setFlags(int i11) {
        this.flags = i11;
    }
}
