package com.mbridge.msdk.playercommon.exoplayer2.upstream;

/* JADX INFO: loaded from: classes5.dex */
public interface BandwidthMeter {

    public interface EventListener {
        void onBandwidthSample(int i11, long j11, long j12);
    }

    long getBitrateEstimate();
}
