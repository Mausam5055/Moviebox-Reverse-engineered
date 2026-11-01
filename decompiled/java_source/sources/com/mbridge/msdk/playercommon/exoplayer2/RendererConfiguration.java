package com.mbridge.msdk.playercommon.exoplayer2;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class RendererConfiguration {
    public static final RendererConfiguration DEFAULT = new RendererConfiguration(0);
    public final int tunnelingAudioSessionId;

    public RendererConfiguration(int i11) {
        this.tunnelingAudioSessionId = i11;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && RendererConfiguration.class == obj.getClass() && this.tunnelingAudioSessionId == ((RendererConfiguration) obj).tunnelingAudioSessionId;
    }

    public int hashCode() {
        return this.tunnelingAudioSessionId;
    }
}
