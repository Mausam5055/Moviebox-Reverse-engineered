package com.cloud.hisavana.net.disklrucache;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes3.dex */
public final class DiskCacheWriteLocker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f21349a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WriteLockPool f21350b = new WriteLockPool();

    private static class WriteLock {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Lock f21351a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f21352b;

        private WriteLock() {
            this.f21351a = new ReentrantLock();
        }
    }

    private static class WriteLockPool {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Queue f21353a;

        private WriteLockPool() {
            this.f21353a = new ArrayDeque();
        }

        WriteLock a() {
            WriteLock writeLock;
            synchronized (this.f21353a) {
                writeLock = (WriteLock) this.f21353a.poll();
            }
            return writeLock == null ? new WriteLock() : writeLock;
        }

        void b(WriteLock writeLock) {
            synchronized (this.f21353a) {
                try {
                    if (this.f21353a.size() < 10) {
                        this.f21353a.offer(writeLock);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void a(ImageCacheURL imageCacheURL) {
        WriteLock writeLockA;
        synchronized (this) {
            try {
                writeLockA = (WriteLock) this.f21349a.get(imageCacheURL);
                if (writeLockA == null) {
                    writeLockA = this.f21350b.a();
                    this.f21349a.put(imageCacheURL, writeLockA);
                }
                writeLockA.f21352b++;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        writeLockA.f21351a.lock();
    }

    public void b(ImageCacheURL imageCacheURL) {
        WriteLock writeLock;
        synchronized (this) {
            try {
                writeLock = (WriteLock) this.f21349a.get(imageCacheURL);
                int i11 = writeLock.f21352b;
                if (i11 < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, key: " + imageCacheURL + ", interestedThreads: " + writeLock.f21352b);
                }
                int i12 = i11 - 1;
                writeLock.f21352b = i12;
                if (i12 == 0) {
                    WriteLock writeLock2 = (WriteLock) this.f21349a.remove(imageCacheURL);
                    if (!writeLock2.equals(writeLock)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + writeLock + ", but actually removed: " + writeLock2 + ", key: " + imageCacheURL);
                    }
                    this.f21350b.b(writeLock2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        writeLock.f21351a.unlock();
    }
}
