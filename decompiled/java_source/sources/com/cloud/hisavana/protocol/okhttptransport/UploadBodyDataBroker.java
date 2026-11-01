package com.cloud.hisavana.protocol.okhttptransport;

import android.util.Pair;
import com.google.common.base.m;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.y;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import okio.Buffer;
import okio.Sink;
import okio.Timeout;

/* JADX INFO: loaded from: classes3.dex */
final class UploadBodyDataBroker implements Sink {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BlockingQueue f21457a = new ArrayBlockingQueue(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicBoolean f21458b = new AtomicBoolean();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicReference f21459c = new AtomicReference();

    enum ReadResult {
        SUCCESS,
        END_OF_BODY
    }

    UploadBodyDataBroker() {
    }

    private Pair d() throws IOException {
        try {
            return (Pair) this.f21457a.take();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new IOException("Interrupted while waiting for a read to finish!");
        }
    }

    Future b(ByteBuffer byteBuffer) {
        Throwable th2 = (Throwable) this.f21459c.get();
        if (th2 != null) {
            return Futures.e(th2);
        }
        y yVarS = y.s();
        this.f21457a.add(Pair.create(byteBuffer, yVarS));
        Throwable th3 = (Throwable) this.f21459c.get();
        if (th3 != null) {
            yVarS.setException(th3);
        }
        return yVarS;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f21458b.set(true);
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
    }

    void h() {
        if (this.f21458b.getAndSet(true)) {
            throw new IllegalStateException("Already closed");
        }
        ((y) d().second).set(ReadResult.END_OF_BODY);
    }

    void i(Throwable th2) {
        this.f21459c.set(th2);
        Pair pair = (Pair) this.f21457a.poll();
        if (pair != null) {
            ((y) pair.second).setException(th2);
        }
    }

    @Override // okio.Sink
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j11) throws IOException {
        m.u(!this.f21458b.get());
        while (j11 != 0) {
            Pair pairD = d();
            ByteBuffer byteBuffer = (ByteBuffer) pairD.first;
            y yVar = (y) pairD.second;
            int iLimit = byteBuffer.limit();
            byteBuffer.limit((int) Math.min(iLimit, j11));
            try {
                long j12 = buffer.read(byteBuffer);
                if (j12 == -1) {
                    IOException iOException = new IOException("The source has been exhausted but we expected more!");
                    yVar.setException(iOException);
                    throw iOException;
                }
                j11 -= j12;
                byteBuffer.limit(iLimit);
                yVar.set(ReadResult.SUCCESS);
            } catch (IOException e11) {
                yVar.setException(e11);
                throw e11;
            }
        }
    }
}
