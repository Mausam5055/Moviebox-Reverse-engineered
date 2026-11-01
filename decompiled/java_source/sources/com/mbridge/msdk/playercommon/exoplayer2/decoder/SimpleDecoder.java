package com.mbridge.msdk.playercommon.exoplayer2.decoder;

import com.mbridge.msdk.playercommon.exoplayer2.decoder.DecoderInputBuffer;
import com.mbridge.msdk.playercommon.exoplayer2.decoder.OutputBuffer;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.lang.Exception;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SimpleDecoder<I extends DecoderInputBuffer, O extends OutputBuffer, E extends Exception> implements Decoder<I, O, E> {
    private int availableInputBufferCount;
    private final I[] availableInputBuffers;
    private int availableOutputBufferCount;
    private final O[] availableOutputBuffers;
    private final Thread decodeThread;
    private I dequeuedInputBuffer;
    private E exception;
    private boolean flushed;
    private final Object lock = new Object();
    private final ArrayDeque<I> queuedInputBuffers = new ArrayDeque<>();
    private final ArrayDeque<O> queuedOutputBuffers = new ArrayDeque<>();
    private boolean released;
    private int skippedOutputBufferCount;

    protected SimpleDecoder(I[] iArr, O[] oArr) {
        this.availableInputBuffers = iArr;
        this.availableInputBufferCount = iArr.length;
        for (int i11 = 0; i11 < this.availableInputBufferCount; i11++) {
            ((I[]) this.availableInputBuffers)[i11] = createInputBuffer();
        }
        this.availableOutputBuffers = oArr;
        this.availableOutputBufferCount = oArr.length;
        for (int i12 = 0; i12 < this.availableOutputBufferCount; i12++) {
            ((O[]) this.availableOutputBuffers)[i12] = createOutputBuffer();
        }
        Thread thread = new Thread() { // from class: com.mbridge.msdk.playercommon.exoplayer2.decoder.SimpleDecoder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                SimpleDecoder.this.run();
            }
        };
        this.decodeThread = thread;
        thread.start();
    }

    private boolean canDecodeBuffer() {
        return !this.queuedInputBuffers.isEmpty() && this.availableOutputBufferCount > 0;
    }

    private boolean decode() throws InterruptedException {
        synchronized (this.lock) {
            while (!this.released && !canDecodeBuffer()) {
                try {
                    this.lock.wait();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (this.released) {
                return false;
            }
            I iRemoveFirst = this.queuedInputBuffers.removeFirst();
            O[] oArr = this.availableOutputBuffers;
            int i11 = this.availableOutputBufferCount - 1;
            this.availableOutputBufferCount = i11;
            O o11 = oArr[i11];
            boolean z10 = this.flushed;
            this.flushed = false;
            if (iRemoveFirst.isEndOfStream()) {
                o11.addFlag(4);
            } else {
                if (iRemoveFirst.isDecodeOnly()) {
                    o11.addFlag(Integer.MIN_VALUE);
                }
                try {
                    this.exception = (E) decode(iRemoveFirst, o11, z10);
                } catch (OutOfMemoryError e11) {
                    this.exception = (E) createUnexpectedDecodeException(e11);
                } catch (RuntimeException e12) {
                    this.exception = (E) createUnexpectedDecodeException(e12);
                }
                if (this.exception != null) {
                    synchronized (this.lock) {
                    }
                    return false;
                }
            }
            synchronized (this.lock) {
                try {
                    if (this.flushed) {
                        releaseOutputBufferInternal(o11);
                    } else if (o11.isDecodeOnly()) {
                        this.skippedOutputBufferCount++;
                        releaseOutputBufferInternal(o11);
                    } else {
                        o11.skippedOutputBufferCount = this.skippedOutputBufferCount;
                        this.skippedOutputBufferCount = 0;
                        this.queuedOutputBuffers.addLast(o11);
                    }
                    releaseInputBufferInternal(iRemoveFirst);
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            return true;
        }
    }

    private void maybeNotifyDecodeLoop() {
        if (canDecodeBuffer()) {
            this.lock.notify();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E extends java.lang.Exception */
    private void maybeThrowException() throws Exception {
        E e11 = this.exception;
        if (e11 != null) {
            throw e11;
        }
    }

    private void releaseInputBufferInternal(I i11) {
        i11.clear();
        I[] iArr = this.availableInputBuffers;
        int i12 = this.availableInputBufferCount;
        this.availableInputBufferCount = i12 + 1;
        iArr[i12] = i11;
    }

    private void releaseOutputBufferInternal(O o11) {
        o11.clear();
        O[] oArr = this.availableOutputBuffers;
        int i11 = this.availableOutputBufferCount;
        this.availableOutputBufferCount = i11 + 1;
        oArr[i11] = o11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void run() {
        do {
            try {
            } catch (InterruptedException e11) {
                throw new IllegalStateException(e11);
            }
        } while (decode());
    }

    protected abstract I createInputBuffer();

    protected abstract O createOutputBuffer();

    protected abstract E createUnexpectedDecodeException(Throwable th2);

    protected abstract E decode(I i11, O o11, boolean z10);

    @Override // com.mbridge.msdk.playercommon.exoplayer2.decoder.Decoder
    public final I dequeueInputBuffer() throws Exception {
        I i11;
        synchronized (this.lock) {
            maybeThrowException();
            Assertions.checkState(this.dequeuedInputBuffer == null);
            int i12 = this.availableInputBufferCount;
            if (i12 == 0) {
                i11 = null;
            } else {
                I[] iArr = this.availableInputBuffers;
                int i13 = i12 - 1;
                this.availableInputBufferCount = i13;
                i11 = iArr[i13];
            }
            this.dequeuedInputBuffer = i11;
        }
        return i11;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.decoder.Decoder
    public final O dequeueOutputBuffer() throws Exception {
        synchronized (this.lock) {
            try {
                maybeThrowException();
                if (this.queuedOutputBuffers.isEmpty()) {
                    return null;
                }
                return this.queuedOutputBuffers.removeFirst();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.decoder.Decoder
    public final void flush() {
        synchronized (this.lock) {
            try {
                this.flushed = true;
                this.skippedOutputBufferCount = 0;
                I i11 = this.dequeuedInputBuffer;
                if (i11 != null) {
                    releaseInputBufferInternal(i11);
                    this.dequeuedInputBuffer = null;
                }
                while (!this.queuedInputBuffers.isEmpty()) {
                    releaseInputBufferInternal(this.queuedInputBuffers.removeFirst());
                }
                while (!this.queuedOutputBuffers.isEmpty()) {
                    releaseOutputBufferInternal(this.queuedOutputBuffers.removeFirst());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.decoder.Decoder
    public final void queueInputBuffer(I i11) throws Exception {
        synchronized (this.lock) {
            maybeThrowException();
            Assertions.checkArgument(i11 == this.dequeuedInputBuffer);
            this.queuedInputBuffers.addLast(i11);
            maybeNotifyDecodeLoop();
            this.dequeuedInputBuffer = null;
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.decoder.Decoder
    public void release() {
        synchronized (this.lock) {
            this.released = true;
            this.lock.notify();
        }
        try {
            this.decodeThread.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    protected void releaseOutputBuffer(O o11) {
        synchronized (this.lock) {
            releaseOutputBufferInternal(o11);
            maybeNotifyDecodeLoop();
        }
    }

    protected final void setInitialInputBufferSize(int i11) {
        Assertions.checkState(this.availableInputBufferCount == this.availableInputBuffers.length);
        for (I i12 : this.availableInputBuffers) {
            i12.ensureSpaceForWrite(i11);
        }
    }
}
