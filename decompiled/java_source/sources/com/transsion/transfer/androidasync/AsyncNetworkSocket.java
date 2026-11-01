package com.transsion.transfer.androidasync;

import android.util.Log;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;

/* JADX INFO: loaded from: classes6.dex */
public class AsyncNetworkSocket implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    InetSocketAddress f55092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private o f55093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SelectionKey f55094c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AsyncServer f55095d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.transsion.transfer.androidasync.util.a f55097f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f55098g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    bv.j f55099h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    bv.d f55100i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    bv.a f55101j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f55102k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Exception f55103l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private bv.a f55104m;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ByteBufferList f55096e = new ByteBufferList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    boolean f55105n = false;

    AsyncNetworkSocket() {
    }

    private void C() {
        if (this.f55096e.r()) {
            a0.a(this, this.f55096e);
        }
    }

    private void g() {
        this.f55094c.cancel();
        try {
            this.f55093b.close();
        } catch (IOException unused) {
        }
    }

    private void k(int i11) throws IOException {
        if (!this.f55094c.isValid()) {
            throw new IOException(new CancelledKeyException());
        }
        if (i11 > 0) {
            SelectionKey selectionKey = this.f55094c;
            selectionKey.interestOps(selectionKey.interestOps() | 4);
        } else {
            SelectionKey selectionKey2 = this.f55094c;
            selectionKey2.interestOps(selectionKey2.interestOps() & (-5));
        }
    }

    @Override // com.transsion.transfer.androidasync.p
    public bv.d I() {
        return this.f55100i;
    }

    @Override // com.transsion.transfer.androidasync.j, com.transsion.transfer.androidasync.p, com.transsion.transfer.androidasync.s
    public AsyncServer a() {
        return this.f55095d;
    }

    @Override // com.transsion.transfer.androidasync.p
    public void close() {
        g();
        r(null);
    }

    @Override // com.transsion.transfer.androidasync.s
    public void d() {
        this.f55093b.l();
    }

    void f(SocketChannel socketChannel, InetSocketAddress inetSocketAddress) {
        this.f55092a = inetSocketAddress;
        this.f55097f = new com.transsion.transfer.androidasync.util.a();
        this.f55093b = new z(socketChannel);
    }

    @Override // com.transsion.transfer.androidasync.s
    public bv.j i() {
        return this.f55099h;
    }

    @Override // com.transsion.transfer.androidasync.s
    public boolean isOpen() {
        return this.f55093b.h() && this.f55094c.isValid();
    }

    @Override // com.transsion.transfer.androidasync.p
    public boolean isPaused() {
        return this.f55105n;
    }

    o j() {
        return this.f55093b;
    }

    @Override // com.transsion.transfer.androidasync.s
    public void l(final ByteBufferList byteBufferList) {
        if (this.f55095d.o() != Thread.currentThread()) {
            this.f55095d.H(new Runnable() { // from class: com.transsion.transfer.androidasync.AsyncNetworkSocket.1
                @Override // java.lang.Runnable
                public void run() {
                    AsyncNetworkSocket.this.l(byteBufferList);
                }
            });
            return;
        }
        if (this.f55093b.h()) {
            try {
                int iC = byteBufferList.C();
                ByteBuffer[] byteBufferArrK = byteBufferList.k();
                this.f55093b.m(byteBufferArrK);
                byteBufferList.b(byteBufferArrK);
                k(byteBufferList.C());
                this.f55095d.C(iC - byteBufferList.C());
            } catch (IOException e11) {
                g();
                w(e11);
                r(e11);
            }
        }
    }

    public void m() {
        if (!this.f55093b.d()) {
            SelectionKey selectionKey = this.f55094c;
            selectionKey.interestOps(selectionKey.interestOps() & (-5));
        }
        bv.j jVar = this.f55099h;
        if (jVar != null) {
            jVar.a();
        }
    }

    @Override // com.transsion.transfer.androidasync.s
    public void o(bv.j jVar) {
        this.f55099h = jVar;
    }

    @Override // com.transsion.transfer.androidasync.s
    public void p(bv.a aVar) {
        this.f55101j = aVar;
    }

    @Override // com.transsion.transfer.androidasync.p
    public void pause() {
        if (this.f55095d.o() != Thread.currentThread()) {
            this.f55095d.H(new Runnable() { // from class: com.transsion.transfer.androidasync.AsyncNetworkSocket.2
                @Override // java.lang.Runnable
                public void run() {
                    AsyncNetworkSocket.this.pause();
                }
            });
        } else {
            if (this.f55105n) {
                return;
            }
            this.f55105n = true;
            try {
                SelectionKey selectionKey = this.f55094c;
                selectionKey.interestOps(selectionKey.interestOps() & (-2));
            } catch (Exception unused) {
            }
        }
    }

    int q() {
        long j11;
        int i11;
        C();
        boolean z10 = false;
        if (this.f55105n) {
            return 0;
        }
        ByteBuffer byteBufferA = this.f55097f.a();
        try {
            j11 = this.f55093b.read(byteBufferA);
        } catch (Exception e11) {
            g();
            w(e11);
            r(e11);
            j11 = -1;
        }
        if (j11 < 0) {
            g();
            i11 = 0;
            z10 = true;
        } else {
            i11 = (int) (((long) 0) + j11);
        }
        if (j11 > 0) {
            this.f55097f.e(j11);
            byteBufferA.flip();
            this.f55096e.a(byteBufferA);
            a0.a(this, this.f55096e);
        } else {
            ByteBufferList.A(byteBufferA);
        }
        if (z10) {
            w(null);
            r(null);
        }
        return i11;
    }

    protected void r(Exception exc) {
        if (this.f55098g) {
            return;
        }
        this.f55098g = true;
        bv.a aVar = this.f55101j;
        if (aVar != null) {
            aVar.g(exc);
            this.f55101j = null;
        }
    }

    @Override // com.transsion.transfer.androidasync.p
    public void resume() {
        if (this.f55095d.o() != Thread.currentThread()) {
            this.f55095d.H(new Runnable() { // from class: com.transsion.transfer.androidasync.AsyncNetworkSocket.3
                @Override // java.lang.Runnable
                public void run() {
                    AsyncNetworkSocket.this.resume();
                }
            });
            return;
        }
        if (this.f55105n) {
            this.f55105n = false;
            try {
                SelectionKey selectionKey = this.f55094c;
                selectionKey.interestOps(selectionKey.interestOps() | 1);
            } catch (Exception unused) {
            }
            C();
            if (isOpen()) {
                return;
            }
            w(this.f55103l);
        }
    }

    @Override // com.transsion.transfer.androidasync.p
    public void s(bv.a aVar) {
        this.f55104m = aVar;
    }

    @Override // com.transsion.transfer.androidasync.p
    public void t(bv.d dVar) {
        this.f55100i = dVar;
    }

    void u(Exception exc) {
        if (this.f55102k) {
            return;
        }
        this.f55102k = true;
        bv.a aVar = this.f55104m;
        if (aVar != null) {
            aVar.g(exc);
        } else if (exc != null) {
            Log.e("NIO", "Unhandled exception", exc);
        }
    }

    @Override // com.transsion.transfer.androidasync.p
    public String v() {
        return null;
    }

    void w(Exception exc) {
        if (this.f55096e.r()) {
            this.f55103l = exc;
        } else {
            u(exc);
        }
    }

    void y(AsyncServer asyncServer, SelectionKey selectionKey) {
        this.f55095d = asyncServer;
        this.f55094c = selectionKey;
    }
}
