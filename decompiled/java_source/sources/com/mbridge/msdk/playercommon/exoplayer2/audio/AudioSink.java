package com.mbridge.msdk.playercommon.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.PlaybackParameters;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public interface AudioSink {
    public static final long CURRENT_POSITION_NOT_SET = Long.MIN_VALUE;

    public static final class ConfigurationException extends Exception {
        public ConfigurationException(String str) {
            super(str);
        }

        public ConfigurationException(Throwable th2) {
            super(th2);
        }
    }

    public static final class InitializationException extends Exception {
        public final int audioTrackState;

        public InitializationException(int i11, int i12, int i13, int i14) {
            super("AudioTrack init failed: " + i11 + ", Config(" + i12 + ", " + i13 + ", " + i14 + ")");
            this.audioTrackState = i11;
        }
    }

    public interface Listener {
        void onAudioSessionId(int i11);

        void onPositionDiscontinuity();

        void onUnderrun(int i11, long j11, long j12);
    }

    public static final class WriteException extends Exception {
        public final int errorCode;

        public WriteException(int i11) {
            super("AudioTrack write failed: " + i11);
            this.errorCode = i11;
        }
    }

    void configure(int i11, int i12, int i13, int i14, @Nullable int[] iArr, int i15, int i16) throws ConfigurationException;

    void disableTunneling();

    void enableTunnelingV21(int i11);

    long getCurrentPositionUs(boolean z10);

    PlaybackParameters getPlaybackParameters();

    boolean handleBuffer(ByteBuffer byteBuffer, long j11) throws InitializationException, WriteException;

    void handleDiscontinuity();

    boolean hasPendingData();

    boolean isEncodingSupported(int i11);

    boolean isEnded();

    void pause();

    void play();

    void playToEndOfStream() throws WriteException;

    void release();

    void reset();

    void setAudioAttributes(AudioAttributes audioAttributes);

    void setAudioSessionId(int i11);

    void setListener(Listener listener);

    PlaybackParameters setPlaybackParameters(PlaybackParameters playbackParameters);

    void setVolume(float f11);
}
