package com.mbridge.msdk.playercommon.exoplayer2.text;

import com.mbridge.msdk.playercommon.exoplayer2.decoder.OutputBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SubtitleOutputBuffer extends OutputBuffer implements Subtitle {
    private long subsampleOffsetUs;
    private Subtitle subtitle;

    @Override // com.mbridge.msdk.playercommon.exoplayer2.decoder.Buffer
    public void clear() {
        super.clear();
        this.subtitle = null;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public List<Cue> getCues(long j11) {
        return this.subtitle.getCues(j11 - this.subsampleOffsetUs);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public long getEventTime(int i11) {
        return this.subtitle.getEventTime(i11) + this.subsampleOffsetUs;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.subtitle.getEventTimeCount();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j11) {
        return this.subtitle.getNextEventTimeIndex(j11 - this.subsampleOffsetUs);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.decoder.OutputBuffer
    public abstract void release();

    public void setContent(long j11, Subtitle subtitle, long j12) {
        this.timeUs = j11;
        this.subtitle = subtitle;
        if (j12 != Long.MAX_VALUE) {
            j11 = j12;
        }
        this.subsampleOffsetUs = j11;
    }
}
