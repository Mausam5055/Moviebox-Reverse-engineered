package com.transsion.transfer.androidasync;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes6.dex */
public class v implements bv.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Charset f55569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ByteBufferList f55570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    a f55571c;

    public interface a {
        void a(String str);
    }

    public v() {
        this(null);
    }

    public v(Charset charset) {
        this.f55570b = new ByteBufferList();
        this.f55569a = charset;
    }

    @Override // bv.d
    public void F(p pVar, ByteBufferList byteBufferList) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBufferList.C());
        while (byteBufferList.C() > 0) {
            byte bE = byteBufferList.e();
            if (bE == 10) {
                byteBufferAllocate.flip();
                this.f55570b.a(byteBufferAllocate);
                this.f55571c.a(this.f55570b.z(this.f55569a));
                this.f55570b = new ByteBufferList();
                return;
            }
            byteBufferAllocate.put(bE);
        }
        byteBufferAllocate.flip();
        this.f55570b.a(byteBufferAllocate);
    }

    public void a(a aVar) {
        this.f55571c = aVar;
    }
}
