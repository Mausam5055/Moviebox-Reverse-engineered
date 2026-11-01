package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.o1;
import e9.u1;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public interface AudioSink {

    public static final class ConfigurationException extends Exception {
        public final o1 format;

        public ConfigurationException(String str, o1 o1Var) {
            super(str);
            this.format = o1Var;
        }

        public ConfigurationException(Throwable th2, o1 o1Var) {
            super(th2);
            this.format = o1Var;
        }
    }

    public static final class InitializationException extends Exception {
        public final int audioTrackState;
        public final o1 format;
        public final boolean isRecoverable;

        public InitializationException(int i11, int i12, int i13, int i14, o1 o1Var, boolean z10, @Nullable Exception exc) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AudioTrack init failed ");
            sb2.append(i11);
            sb2.append(" ");
            sb2.append("Config(");
            sb2.append(i12);
            sb2.append(", ");
            sb2.append(i13);
            sb2.append(", ");
            sb2.append(i14);
            sb2.append(")");
            sb2.append(z10 ? " (recoverable)" : "");
            super(sb2.toString(), exc);
            this.audioTrackState = i11;
            this.isRecoverable = z10;
            this.format = o1Var;
        }
    }

    public static final class UnexpectedDiscontinuityException extends Exception {
        public final long actualPresentationTimeUs;
        public final long expectedPresentationTimeUs;

        public UnexpectedDiscontinuityException(long j11, long j12) {
            super("Unexpected audio track timestamp discontinuity: expected " + j12 + ", got " + j11);
            this.actualPresentationTimeUs = j11;
            this.expectedPresentationTimeUs = j12;
        }
    }

    public static final class WriteException extends Exception {
        public final int errorCode;
        public final o1 format;
        public final boolean isRecoverable;

        public WriteException(int i11, o1 o1Var, boolean z10) {
            super("AudioTrack write failed: " + i11);
            this.isRecoverable = z10;
            this.errorCode = i11;
            this.format = o1Var;
        }
    }

    public interface a {
        void a(Exception exc);

        void b(long j11);

        void c();

        void d();

        void onPositionDiscontinuity();

        void onSkipSilenceEnabledChanged(boolean z10);

        void onUnderrun(int i11, long j11, long j12);
    }

    boolean a(o1 o1Var);

    void b(n2 n2Var);

    boolean c(ByteBuffer byteBuffer, long j11, int i11);

    void d();

    void disableTunneling();

    void e(boolean z10);

    void f(e eVar);

    void flush();

    void g(a aVar);

    long getCurrentPositionUs(boolean z10);

    n2 getPlaybackParameters();

    int h(o1 o1Var);

    void handleDiscontinuity();

    boolean hasPendingData();

    void i();

    boolean isEnded();

    void j(u uVar);

    void k(u1 u1Var);

    void l(o1 o1Var, int i11, int[] iArr);

    void pause();

    void play();

    void playToEndOfStream();

    void reset();

    void setAudioSessionId(int i11);

    void setVolume(float f11);
}
