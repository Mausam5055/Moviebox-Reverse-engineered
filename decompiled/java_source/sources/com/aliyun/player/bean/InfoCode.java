package com.aliyun.player.bean;

import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes2.dex */
public enum InfoCode {
    Unknown(-1),
    LoopingStart(0),
    BufferedPosition(1),
    CurrentPosition(2),
    AutoPlayStart(3),
    CurrentDownloadSpeed(4),
    UtcTime(5),
    LocalCacheLoaded(6),
    SwitchToSoftwareVideoDecoder(100),
    AudioCodecNotSupport(101),
    AudioDecoderDeviceError(102),
    VideoCodecNotSupport(103),
    VideoDecoderDeviceError(104),
    VideoRenderInitError(105),
    DemuxerTraceID(106),
    NetworkRetry(TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY),
    CacheSuccess(109),
    CacheError(110),
    LowMemory(111),
    NetworkRetrySuccess(113),
    SubtitleSelectError(Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE),
    DirectComponentMSG(Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE),
    RTSServerMaybeDisconnect(805371905),
    RTSServerRecover(805371906);

    private int value;

    InfoCode(int i11) {
        this.value = i11;
    }

    public int getValue() {
        return this.value;
    }
}
