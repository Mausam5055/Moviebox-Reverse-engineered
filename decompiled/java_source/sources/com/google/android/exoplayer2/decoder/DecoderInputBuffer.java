package com.google.android.exoplayer2.decoder;

import com.google.android.exoplayer2.m1;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public class DecoderInputBuffer extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f24842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ByteBuffer f24843c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f24844d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f24845e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ByteBuffer f24846f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f24847g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f24848h;

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
        m1.a("goog.exo.decoder");
    }

    public DecoderInputBuffer(int i11) {
        this(i11, 0);
    }

    public DecoderInputBuffer(int i11, int i12) {
        this.f24842b = new c();
        this.f24847g = i11;
        this.f24848h = i12;
    }

    private ByteBuffer l(int i11) {
        int i12 = this.f24847g;
        if (i12 == 1) {
            return ByteBuffer.allocate(i11);
        }
        if (i12 == 2) {
            return ByteBuffer.allocateDirect(i11);
        }
        ByteBuffer byteBuffer = this.f24843c;
        throw new InsufficientCapacityException(byteBuffer == null ? 0 : byteBuffer.capacity(), i11);
    }

    public static DecoderInputBuffer p() {
        return new DecoderInputBuffer(0);
    }

    @Override // com.google.android.exoplayer2.decoder.a
    public void b() {
        super.b();
        ByteBuffer byteBuffer = this.f24843c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f24846f;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f24844d = false;
    }

    public void m(int i11) {
        int i12 = i11 + this.f24848h;
        ByteBuffer byteBuffer = this.f24843c;
        if (byteBuffer == null) {
            this.f24843c = l(i12);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i13 = i12 + iPosition;
        if (iCapacity >= i13) {
            this.f24843c = byteBuffer;
            return;
        }
        ByteBuffer byteBufferL = l(i13);
        byteBufferL.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferL.put(byteBuffer);
        }
        this.f24843c = byteBufferL;
    }

    public final void n() {
        ByteBuffer byteBuffer = this.f24843c;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f24846f;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean o() {
        return e(1073741824);
    }

    public void q(int i11) {
        ByteBuffer byteBuffer = this.f24846f;
        if (byteBuffer == null || byteBuffer.capacity() < i11) {
            this.f24846f = ByteBuffer.allocate(i11);
        } else {
            this.f24846f.clear();
        }
    }
}
