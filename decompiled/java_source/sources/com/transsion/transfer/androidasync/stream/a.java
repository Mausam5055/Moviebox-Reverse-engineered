package com.transsion.transfer.androidasync.stream;

import bv.d;
import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.p;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a implements d, bv.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private OutputStream f55549a;

    public a(OutputStream outputStream) {
        this.f55549a = outputStream;
    }

    @Override // bv.d
    public void F(p pVar, ByteBufferList byteBufferList) {
        while (byteBufferList.E() > 0) {
            try {
                try {
                    ByteBuffer byteBufferD = byteBufferList.D();
                    this.f55549a.write(byteBufferD.array(), byteBufferD.arrayOffset() + byteBufferD.position(), byteBufferD.remaining());
                    ByteBufferList.A(byteBufferD);
                } catch (Exception e11) {
                    g(e11);
                }
            } catch (Throwable th2) {
                byteBufferList.B();
                throw th2;
            }
        }
        byteBufferList.B();
    }

    @Override // bv.a
    public void g(Exception exc) {
        exc.printStackTrace();
    }
}
