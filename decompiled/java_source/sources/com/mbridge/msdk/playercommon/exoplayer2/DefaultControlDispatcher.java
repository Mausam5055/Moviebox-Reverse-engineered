package com.mbridge.msdk.playercommon.exoplayer2;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultControlDispatcher implements ControlDispatcher {
    @Override // com.mbridge.msdk.playercommon.exoplayer2.ControlDispatcher
    public boolean dispatchSeekTo(Player player, int i11, long j11) {
        player.seekTo(i11, j11);
        return true;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.ControlDispatcher
    public boolean dispatchSetPlayWhenReady(Player player, boolean z10) {
        player.setPlayWhenReady(z10);
        return true;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.ControlDispatcher
    public boolean dispatchSetRepeatMode(Player player, int i11) {
        player.setRepeatMode(i11);
        return true;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.ControlDispatcher
    public boolean dispatchSetShuffleModeEnabled(Player player, boolean z10) {
        player.setShuffleModeEnabled(z10);
        return true;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.ControlDispatcher
    public boolean dispatchStop(Player player, boolean z10) {
        player.stop(z10);
        return true;
    }
}
