package com.transsion.transfer.androidasync;

import java.io.Closeable;
import java.io.IOException;
import java.nio.channels.Selector;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
class x implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Selector f55598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AtomicBoolean f55599b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Semaphore f55600c = new Semaphore(0);

    public x(Selector selector) {
        this.f55598a = selector;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f55598a.close();
    }

    public Selector d() {
        return this.f55598a;
    }

    public Set h() {
        return this.f55598a.keys();
    }

    public boolean isOpen() {
        return this.f55598a.isOpen();
    }

    public void k() {
        l(0L);
    }

    public void l(long j11) {
        try {
            this.f55600c.drainPermits();
            this.f55598a.select(j11);
        } finally {
            this.f55600c.release(Integer.MAX_VALUE);
        }
    }

    public int m() {
        return this.f55598a.selectNow();
    }

    public Set n() {
        return this.f55598a.selectedKeys();
    }

    public boolean o() {
        for (int i11 = 0; i11 < 100; i11++) {
            try {
                this.f55600c.tryAcquire(10L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                return true;
            }
        }
        return false;
    }

    public void p() {
        boolean zTryAcquire = this.f55600c.tryAcquire();
        this.f55598a.wakeup();
        if (zTryAcquire) {
            if (this.f55599b.getAndSet(true)) {
                this.f55598a.wakeup();
                return;
            }
            try {
                o();
                this.f55598a.wakeup();
            } finally {
                this.f55599b.set(false);
            }
        }
    }
}
