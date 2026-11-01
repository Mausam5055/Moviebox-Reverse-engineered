package com.transsion.transfer.androidasync;

import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;

/* JADX INFO: loaded from: classes6.dex */
class z extends o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    SocketChannel f55602b;

    z(SocketChannel socketChannel) {
        super(socketChannel);
        this.f55602b = socketChannel;
    }

    @Override // com.transsion.transfer.androidasync.o
    public boolean h() {
        return this.f55602b.isConnected();
    }

    @Override // com.transsion.transfer.androidasync.o
    public SelectionKey i(Selector selector) {
        return k(selector, 8);
    }

    @Override // com.transsion.transfer.androidasync.o
    public void l() {
        try {
            this.f55602b.socket().shutdownOutput();
        } catch (Exception unused) {
        }
    }

    @Override // com.transsion.transfer.androidasync.o
    public int m(ByteBuffer[] byteBufferArr) {
        return (int) this.f55602b.write(byteBufferArr);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        return this.f55602b.read(byteBuffer);
    }

    @Override // java.nio.channels.ScatteringByteChannel
    public long read(ByteBuffer[] byteBufferArr) {
        return this.f55602b.read(byteBufferArr);
    }

    @Override // java.nio.channels.ScatteringByteChannel
    public long read(ByteBuffer[] byteBufferArr, int i11, int i12) {
        return this.f55602b.read(byteBufferArr, i11, i12);
    }
}
