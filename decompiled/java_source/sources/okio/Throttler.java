package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u000f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u001d\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\u0014J$\u0010\u0006\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u0004H\u0007J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0019J\u0015\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\u001bJ\f\u0010\u001c\u001a\u00020\u0004*\u00020\u0004H\u0002J\f\u0010\u001d\u001a\u00020\u0004*\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lokio/Throttler;", "", "()V", "allocatedUntil", "", "(J)V", "bytesPerSecond", "condition", "Ljava/util/concurrent/locks/Condition;", "getCondition", "()Ljava/util/concurrent/locks/Condition;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "getLock", "()Ljava/util/concurrent/locks/ReentrantLock;", "maxByteCount", "waitByteCount", "byteCountOrWaitNanos", "now", "byteCount", "byteCountOrWaitNanos$okio", "", "sink", "Lokio/Sink;", EventConstants.KEY_SOURCE, "Lokio/Source;", "take", "take$okio", "bytesToNanos", "nanosToBytes", "okio"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class Throttler {
    private long allocatedUntil;
    private long bytesPerSecond;
    private final Condition condition;
    private final ReentrantLock lock;
    private long maxByteCount;
    private long waitByteCount;

    public Throttler() {
        this(System.nanoTime());
    }

    public Throttler(long j11) {
        this.allocatedUntil = j11;
        this.waitByteCount = PlaybackStateCompat.ACTION_PLAY_FROM_URI;
        this.maxByteCount = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        Intrinsics.g(conditionNewCondition, "newCondition(...)");
        this.condition = conditionNewCondition;
    }

    public static /* synthetic */ void bytesPerSecond$default(Throttler throttler, long j11, long j12, long j13, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            j12 = throttler.waitByteCount;
        }
        long j14 = j12;
        if ((i11 & 4) != 0) {
            j13 = throttler.maxByteCount;
        }
        throttler.bytesPerSecond(j11, j14, j13);
    }

    private final long bytesToNanos(long j11) {
        return (j11 * C.NANOS_PER_SECOND) / this.bytesPerSecond;
    }

    private final long nanosToBytes(long j11) {
        return (j11 * this.bytesPerSecond) / C.NANOS_PER_SECOND;
    }

    public final long byteCountOrWaitNanos$okio(long now, long byteCount) {
        if (this.bytesPerSecond == 0) {
            return byteCount;
        }
        long jMax = Math.max(this.allocatedUntil - now, 0L);
        long jNanosToBytes = this.maxByteCount - nanosToBytes(jMax);
        if (jNanosToBytes >= byteCount) {
            this.allocatedUntil = now + jMax + bytesToNanos(byteCount);
            return byteCount;
        }
        long j11 = this.waitByteCount;
        if (jNanosToBytes >= j11) {
            this.allocatedUntil = now + bytesToNanos(this.maxByteCount);
            return jNanosToBytes;
        }
        long jMin = Math.min(j11, byteCount);
        long jBytesToNanos = jMax + bytesToNanos(jMin - this.maxByteCount);
        if (jBytesToNanos != 0) {
            return -jBytesToNanos;
        }
        this.allocatedUntil = now + bytesToNanos(this.maxByteCount);
        return jMin;
    }

    @JvmOverloads
    public final void bytesPerSecond(long j11) {
        bytesPerSecond$default(this, j11, 0L, 0L, 6, null);
    }

    @JvmOverloads
    public final void bytesPerSecond(long j11, long j12) {
        bytesPerSecond$default(this, j11, j12, 0L, 4, null);
    }

    @JvmOverloads
    public final void bytesPerSecond(long bytesPerSecond, long waitByteCount, long maxByteCount) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (bytesPerSecond < 0) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (waitByteCount <= 0) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (maxByteCount < waitByteCount) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            this.bytesPerSecond = bytesPerSecond;
            this.waitByteCount = waitByteCount;
            this.maxByteCount = maxByteCount;
            this.condition.signalAll();
            Unit unit = Unit.f67061a;
            reentrantLock.unlock();
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final Condition getCondition() {
        return this.condition;
    }

    public final ReentrantLock getLock() {
        return this.lock;
    }

    public final Sink sink(Sink sink) {
        Intrinsics.h(sink, "sink");
        return new ForwardingSink(sink) { // from class: okio.Throttler.sink.1
            @Override // okio.ForwardingSink, okio.Sink
            public void write(Buffer source, long byteCount) throws IOException {
                Intrinsics.h(source, "source");
                while (byteCount > 0) {
                    try {
                        long jTake$okio = this.take$okio(byteCount);
                        super.write(source, jTake$okio);
                        byteCount -= jTake$okio;
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException("interrupted");
                    }
                }
            }
        };
    }

    public final Source source(Source source) {
        Intrinsics.h(source, "source");
        return new ForwardingSource(source) { // from class: okio.Throttler.source.1
            @Override // okio.ForwardingSource, okio.Source
            public long read(Buffer sink, long byteCount) throws InterruptedIOException {
                Intrinsics.h(sink, "sink");
                try {
                    return super.read(sink, this.take$okio(byteCount));
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    throw new InterruptedIOException("interrupted");
                }
            }
        };
    }

    public final long take$okio(long byteCount) {
        if (byteCount <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        while (true) {
            try {
                long jByteCountOrWaitNanos$okio = byteCountOrWaitNanos$okio(System.nanoTime(), byteCount);
                if (jByteCountOrWaitNanos$okio >= 0) {
                    reentrantLock.unlock();
                    return jByteCountOrWaitNanos$okio;
                }
                this.condition.awaitNanos(-jByteCountOrWaitNanos$okio);
            } catch (Throwable th2) {
                reentrantLock.unlock();
                throw th2;
            }
        }
    }
}
