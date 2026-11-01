package com.mbridge.msdk.playercommon.exoplayer2.text;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface Subtitle {
    List<Cue> getCues(long j11);

    long getEventTime(int i11);

    int getEventTimeCount();

    int getNextEventTimeIndex(long j11);
}
