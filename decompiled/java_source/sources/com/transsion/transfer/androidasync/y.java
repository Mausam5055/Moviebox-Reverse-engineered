package com.transsion.transfer.androidasync;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;

/* JADX INFO: loaded from: classes6.dex */
class y extends o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ServerSocketChannel f55601b;

    y(ServerSocketChannel serverSocketChannel) {
        super(serverSocketChannel);
        this.f55601b = serverSocketChannel;
    }

    @Override // com.transsion.transfer.androidasync.o
    public boolean h() {
        return false;
    }

    @Override // com.transsion.transfer.androidasync.o
    public SelectionKey i(Selector selector) {
        return this.f55601b.register(selector, 16);
    }

    @Override // com.transsion.transfer.androidasync.o
    public void l() {
    }

    @Override // com.transsion.transfer.androidasync.o
    public int m(ByteBuffer[] byteBufferArr) throws IOException {
        throw new IOException("Can't write ServerSocketChannel");
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        throw new IOException("Can't read ServerSocketChannel");
    }

    @Override // java.nio.channels.ScatteringByteChannel
    public long read(ByteBuffer[] byteBufferArr) throws IOException {
        throw new IOException("Can't read ServerSocketChannel");
    }

    @Override // java.nio.channels.ScatteringByteChannel
    public long read(ByteBuffer[] byteBufferArr, int i11, int i12) throws IOException {
        throw new IOException("Can't read ServerSocketChannel");
    }
}
