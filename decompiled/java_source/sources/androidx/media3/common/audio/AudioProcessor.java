package androidx.media3.common.audio;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public interface AudioProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ByteBuffer f9815a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    public static final class UnhandledAudioFormatException extends Exception {
        public final a inputAudioFormat;

        public UnhandledAudioFormatException(a aVar) {
            this("Unhandled input format:", aVar);
        }

        public UnhandledAudioFormatException(String str, a aVar) {
            super(str + " " + aVar);
            this.inputAudioFormat = aVar;
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final a f9816e = new a(-1, -1, -1);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f9817a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f9818b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f9819c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f9820d;

        public a(int i11, int i12, int i13) {
            this.f9817a = i11;
            this.f9818b = i12;
            this.f9819c = i13;
            this.f9820d = a1.G0(i13) ? a1.k0(i13, i12) : -1;
        }

        public a(r rVar) {
            this(rVar.F, rVar.E, rVar.G);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f9817a == aVar.f9817a && this.f9818b == aVar.f9818b && this.f9819c == aVar.f9819c;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.f9817a), Integer.valueOf(this.f9818b), Integer.valueOf(this.f9819c));
        }

        public String toString() {
            return "AudioFormat[sampleRate=" + this.f9817a + ", channelCount=" + this.f9818b + ", encoding=" + this.f9819c + ']';
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
