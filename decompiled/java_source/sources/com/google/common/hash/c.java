package com.google.common.hash;

import com.google.common.base.m;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes4.dex */
abstract class c extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ByteBuffer f30877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f30878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f30879c;

    protected c(int i11) {
        this(i11, i11);
    }

    protected c(int i11, int i12) {
        m.d(i12 % i11 == 0);
        this.f30877a = ByteBuffer.allocate(i12 + 7).order(ByteOrder.LITTLE_ENDIAN);
        this.f30878b = i12;
        this.f30879c = i11;
    }

    private void l() {
        g.a(this.f30877a);
        while (this.f30877a.remaining() >= this.f30879c) {
            n(this.f30877a);
        }
        this.f30877a.compact();
    }

    private void m() {
        if (this.f30877a.remaining() < 8) {
            l();
        }
    }

    private e p(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= this.f30877a.remaining()) {
            this.f30877a.put(byteBuffer);
            m();
            return this;
        }
        int iPosition = this.f30878b - this.f30877a.position();
        for (int i11 = 0; i11 < iPosition; i11++) {
            this.f30877a.put(byteBuffer.get());
        }
        l();
        while (byteBuffer.remaining() >= this.f30879c) {
            n(byteBuffer);
        }
        this.f30877a.put(byteBuffer);
        return this;
    }

    @Override // com.google.common.hash.e
    public final HashCode b() {
        l();
        g.a(this.f30877a);
        if (this.f30877a.remaining() > 0) {
            o(this.f30877a);
            ByteBuffer byteBuffer = this.f30877a;
            g.b(byteBuffer, byteBuffer.limit());
        }
        return k();
    }

    @Override // com.google.common.hash.b, com.google.common.hash.e
    public final e d(byte[] bArr, int i11, int i12) {
        return p(ByteBuffer.wrap(bArr, i11, i12).order(ByteOrder.LITTLE_ENDIAN));
    }

    @Override // com.google.common.hash.e
    public final e e(ByteBuffer byteBuffer) {
        ByteOrder byteOrderOrder = byteBuffer.order();
        try {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            return p(byteBuffer);
        } finally {
            byteBuffer.order(byteOrderOrder);
        }
    }

    @Override // com.google.common.hash.e
    public final e f(int i11) {
        this.f30877a.putInt(i11);
        m();
        return this;
    }

    @Override // com.google.common.hash.e
    public final e h(long j11) {
        this.f30877a.putLong(j11);
        m();
        return this;
    }

    @Override // com.google.common.hash.b
    public final e j(char c11) {
        this.f30877a.putChar(c11);
        m();
        return this;
    }

    protected abstract HashCode k();

    protected abstract void n(ByteBuffer byteBuffer);

    protected abstract void o(ByteBuffer byteBuffer);
}
