package androidx.media3.decoder;

import androidx.media3.common.r;
import androidx.media3.common.u;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class DecoderInputBuffer extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r f10916a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f10917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ByteBuffer f10918c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f10919d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f10920e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ByteBuffer f10921f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f10922g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f10923h;

    public static final class InsufficientCapacityException extends IllegalStateException {
        public final int currentCapacity;
        public final int requiredCapacity;

        public InsufficientCapacityException(int i11, int i12) {
            super("Buffer too small (" + i11 + " < " + i12 + ")");
            this.currentCapacity = i11;
            this.requiredCapacity = i12;
        }
    }

    static {
        u.a("media3.decoder");
    }

    public DecoderInputBuffer(int i11) {
        this(i11, 0);
    }

    public DecoderInputBuffer(int i11, int i12) {
        this.f10917b = new c();
        this.f10922g = i11;
        this.f10923h = i12;
    }

    private ByteBuffer a(int i11) {
        int i12 = this.f10922g;
        if (i12 == 1) {
            return ByteBuffer.allocate(i11);
        }
        if (i12 == 2) {
            return ByteBuffer.allocateDirect(i11);
        }
        ByteBuffer byteBuffer = this.f10918c;
        throw new InsufficientCapacityException(byteBuffer == null ? 0 : byteBuffer.capacity(), i11);
    }

    public static DecoderInputBuffer f() {
        return new DecoderInputBuffer(0);
    }

    public void b(int i11) {
        int i12 = i11 + this.f10923h;
        ByteBuffer byteBuffer = this.f10918c;
        if (byteBuffer == null) {
            this.f10918c = a(i12);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i13 = i12 + iPosition;
        if (iCapacity >= i13) {
            this.f10918c = byteBuffer;
            return;
        }
        ByteBuffer byteBufferA = a(i13);
        byteBufferA.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferA.put(byteBuffer);
        }
        this.f10918c = byteBufferA;
    }

    @Override // androidx.media3.decoder.a
    public void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.f10918c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f10921f;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f10919d = false;
    }

    public final void d() {
        ByteBuffer byteBuffer = this.f10918c;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f10921f;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean e() {
        return getFlag(1073741824);
    }

    public void g(int i11) {
        ByteBuffer byteBuffer = this.f10921f;
        if (byteBuffer == null || byteBuffer.capacity() < i11) {
            this.f10921f = ByteBuffer.allocate(i11);
        } else {
            this.f10921f.clear();
        }
    }
}
