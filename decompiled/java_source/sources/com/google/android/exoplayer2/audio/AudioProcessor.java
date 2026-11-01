package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.p0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes3.dex */
public interface AudioProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ByteBuffer f24529a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    public static final class UnhandledAudioFormatException extends Exception {
        public UnhandledAudioFormatException(a aVar) {
            super("Unhandled format: " + aVar);
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final a f24530e = new a(-1, -1, -1);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f24531a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f24532b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f24533c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f24534d;

        public a(int i11, int i12, int i13) {
            this.f24531a = i11;
            this.f24532b = i12;
            this.f24533c = i13;
            this.f24534d = p0.u0(i13) ? p0.e0(i13, i12) : -1;
        }

        public String toString() {
            return "AudioFormat[sampleRate=" + this.f24531a + ", channelCount=" + this.f24532b + ", encoding=" + this.f24533c + ']';
        }
    }

    a a(a aVar);

    void flush();

    ByteBuffer getOutput();

    boolean isActive();

    boolean isEnded();

    void queueEndOfStream();

    void queueInput(ByteBuffer byteBuffer);

    void reset();
}
