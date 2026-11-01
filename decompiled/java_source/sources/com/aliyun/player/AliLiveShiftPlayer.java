package com.aliyun.player;

import com.aliyun.player.source.LiveShift;

/* JADX INFO: loaded from: classes2.dex */
public interface AliLiveShiftPlayer extends IPlayer {

    public interface OnSeekLiveCompletionListener {
        void onSeekLiveCompletion(long j11);
    }

    public interface OnTimeShiftUpdaterListener {
        void onUpdater(long j11, long j12, long j13);
    }

    long getCurrentLiveTime();

    long getCurrentTime();

    void seekToLiveTime(long j11);

    void setDataSource(LiveShift liveShift);

    void setOnSeekLiveCompletionListener(OnSeekLiveCompletionListener onSeekLiveCompletionListener);

    void setOnTimeShiftUpdaterListener(OnTimeShiftUpdaterListener onTimeShiftUpdaterListener);
}
