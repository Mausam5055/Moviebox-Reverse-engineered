package com.transsion.transfer.androidasync;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.AbstractSelectableChannel;

/* JADX INFO: loaded from: classes6.dex */
abstract class o implements ReadableByteChannel, ScatteringByteChannel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AbstractSelectableChannel f55542a;

    o(AbstractSelectableChannel abstractSelectableChannel) throws IOException {
        abstractSelectableChannel.configureBlocking(false);
        this.f55542a = abstractSelectableChannel;
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f55542a.close();
    }

    public boolean d() {
        return false;
    }

    public abstract boolean h();

    public abstract SelectionKey i(Selector selector);

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return this.f55542a.isOpen();
    }

    public SelectionKey k(Selector selector, int i11) {
        return this.f55542a.register(selector, i11);
    }

    public abstract void l();

    public abstract int m(ByteBuffer[] byteBufferArr);
}
