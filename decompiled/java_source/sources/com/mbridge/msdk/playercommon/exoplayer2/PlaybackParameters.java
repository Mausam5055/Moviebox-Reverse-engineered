package com.mbridge.msdk.playercommon.exoplayer2;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;

/* JADX INFO: loaded from: classes5.dex */
public final class PlaybackParameters {
    public static final PlaybackParameters DEFAULT = new PlaybackParameters(1.0f);
    public final float pitch;
    private final int scaledUsPerMs;
    public final boolean skipSilence;
    public final float speed;

    public PlaybackParameters(float f11) {
        this(f11, 1.0f, false);
    }

    public PlaybackParameters(float f11, float f12) {
        this(f11, f12, false);
    }

    public PlaybackParameters(float f11, float f12, boolean z10) {
        Assertions.checkArgument(f11 > 0.0f);
        Assertions.checkArgument(f12 > 0.0f);
        this.speed = f11;
        this.pitch = f12;
        this.skipSilence = z10;
        this.scaledUsPerMs = Math.round(f11 * 1000.0f);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PlaybackParameters.class != obj.getClass()) {
            return false;
        }
        PlaybackParameters playbackParameters = (PlaybackParameters) obj;
        return this.speed == playbackParameters.speed && this.pitch == playbackParameters.pitch && this.skipSilence == playbackParameters.skipSilence;
    }

    public long getMediaTimeUsForPlayoutTimeMs(long j11) {
        return j11 * ((long) this.scaledUsPerMs);
    }

    public int hashCode() {
        return ((((Float.floatToRawIntBits(this.speed) + 527) * 31) + Float.floatToRawIntBits(this.pitch)) * 31) + (this.skipSilence ? 1 : 0);
    }
}
