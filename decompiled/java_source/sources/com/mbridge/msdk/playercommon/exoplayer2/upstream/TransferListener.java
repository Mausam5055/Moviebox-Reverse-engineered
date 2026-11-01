package com.mbridge.msdk.playercommon.exoplayer2.upstream;

/* JADX INFO: loaded from: classes5.dex */
public interface TransferListener<S> {
    void onBytesTransferred(S s11, int i11);

    void onTransferEnd(S s11);

    void onTransferStart(S s11, DataSpec dataSpec);
}
