package com.mbridge.msdk.playercommon.exoplayer2.audio;

import android.annotation.TargetApi;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class AudioAttributes {
    public static final AudioAttributes DEFAULT = new Builder().build();
    private android.media.AudioAttributes audioAttributesV21;
    public final int contentType;
    public final int flags;
    public final int usage;

    public static final class Builder {
        private int contentType = 0;
        private int flags = 0;
        private int usage = 1;

        public AudioAttributes build() {
            return new AudioAttributes(this.contentType, this.flags, this.usage);
        }

        public Builder setContentType(int i11) {
            this.contentType = i11;
            return this;
        }

        public Builder setFlags(int i11) {
            this.flags = i11;
            return this;
        }

        public Builder setUsage(int i11) {
            this.usage = i11;
            return this;
        }
    }

    private AudioAttributes(int i11, int i12, int i13) {
        this.contentType = i11;
        this.flags = i12;
        this.usage = i13;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AudioAttributes.class != obj.getClass()) {
            return false;
        }
        AudioAttributes audioAttributes = (AudioAttributes) obj;
        return this.contentType == audioAttributes.contentType && this.flags == audioAttributes.flags && this.usage == audioAttributes.usage;
    }

    @TargetApi(21)
    android.media.AudioAttributes getAudioAttributesV21() {
        if (this.audioAttributesV21 == null) {
            this.audioAttributesV21 = new android.media.AudioAttributes.Builder().setContentType(this.contentType).setFlags(this.flags).setUsage(this.usage).build();
        }
        return this.audioAttributesV21;
    }

    public int hashCode() {
        return ((((this.contentType + 527) * 31) + this.flags) * 31) + this.usage;
    }
}
