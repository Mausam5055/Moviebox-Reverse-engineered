package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSpec;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.PriorityTaskManager;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public final class CacheUtil {
    public static final int DEFAULT_BUFFER_SIZE_BYTES = 131072;

    public static class CachingCounters {
        public volatile long alreadyCachedBytes;
        public volatile long contentLength = -1;
        public volatile long newlyCachedBytes;

        public long totalCachedBytes() {
            return this.alreadyCachedBytes + this.newlyCachedBytes;
        }
    }

    private CacheUtil() {
    }

    public static void cache(DataSpec dataSpec, Cache cache, DataSource dataSource, @Nullable CachingCounters cachingCounters, @Nullable AtomicBoolean atomicBoolean) throws InterruptedException, IOException {
        cache(dataSpec, cache, new CacheDataSource(cache, dataSource), new byte[131072], null, 0, cachingCounters, atomicBoolean, false);
    }

    public static void cache(DataSpec dataSpec, Cache cache, CacheDataSource cacheDataSource, byte[] bArr, PriorityTaskManager priorityTaskManager, int i11, @Nullable CachingCounters cachingCounters, @Nullable AtomicBoolean atomicBoolean, boolean z10) throws InterruptedException, IOException {
        CachingCounters cachingCounters2 = cachingCounters;
        Assertions.checkNotNull(cacheDataSource);
        Assertions.checkNotNull(bArr);
        if (cachingCounters2 != null) {
            getCached(dataSpec, cache, cachingCounters2);
        } else {
            cachingCounters2 = new CachingCounters();
        }
        CachingCounters cachingCounters3 = cachingCounters2;
        String key = getKey(dataSpec);
        long j11 = dataSpec.absoluteStreamPosition;
        long contentLength = dataSpec.length;
        if (contentLength == -1) {
            contentLength = cache.getContentLength(key);
        }
        long j12 = j11;
        long j13 = contentLength;
        while (true) {
            long j14 = 0;
            if (j13 == 0) {
                return;
            }
            if (atomicBoolean != null && atomicBoolean.get()) {
                throw new InterruptedException();
            }
            long cachedLength = cache.getCachedLength(key, j12, j13 != -1 ? j13 : Long.MAX_VALUE);
            if (cachedLength <= 0) {
                long j15 = -cachedLength;
                if (readAndDiscard(dataSpec, j12, j15, cacheDataSource, bArr, priorityTaskManager, i11, cachingCounters3) < j15) {
                    if (z10 && j13 != -1) {
                        throw new EOFException();
                    }
                    return;
                }
                cachedLength = j15;
            }
            j12 += cachedLength;
            if (j13 != -1) {
                j14 = cachedLength;
            }
            j13 -= j14;
        }
    }

    public static String generateKey(Uri uri) {
        return uri.toString();
    }

    public static void getCached(DataSpec dataSpec, Cache cache, CachingCounters cachingCounters) {
        String key = getKey(dataSpec);
        long j11 = dataSpec.absoluteStreamPosition;
        long contentLength = dataSpec.length;
        if (contentLength == -1) {
            contentLength = cache.getContentLength(key);
        }
        cachingCounters.contentLength = contentLength;
        cachingCounters.alreadyCachedBytes = 0L;
        cachingCounters.newlyCachedBytes = 0L;
        long j12 = j11;
        long j13 = contentLength;
        while (j13 != 0) {
            long cachedLength = cache.getCachedLength(key, j12, j13 != -1 ? j13 : Long.MAX_VALUE);
            if (cachedLength > 0) {
                cachingCounters.alreadyCachedBytes += cachedLength;
            } else {
                cachedLength = -cachedLength;
                if (cachedLength == Long.MAX_VALUE) {
                    return;
                }
            }
            j12 += cachedLength;
            if (j13 == -1) {
                cachedLength = 0;
            }
            j13 -= cachedLength;
        }
    }

    public static String getKey(DataSpec dataSpec) {
        String str = dataSpec.key;
        return str != null ? str : generateKey(dataSpec.uri);
    }

    private static long readAndDiscard(DataSpec dataSpec, long j11, long j12, DataSource dataSource, byte[] bArr, PriorityTaskManager priorityTaskManager, int i11, CachingCounters cachingCounters) throws InterruptedException, IOException {
        DataSpec dataSpec2 = dataSpec;
        while (true) {
            if (priorityTaskManager != null) {
                priorityTaskManager.proceed(i11);
            }
            try {
                try {
                    if (Thread.interrupted()) {
                        throw new InterruptedException();
                    }
                    DataSpec dataSpec3 = new DataSpec(dataSpec2.uri, dataSpec2.postBody, j11, (dataSpec2.position + j11) - dataSpec2.absoluteStreamPosition, -1L, dataSpec2.key, dataSpec2.flags | 2);
                    try {
                        long jOpen = dataSource.open(dataSpec3);
                        if (cachingCounters.contentLength == -1 && jOpen != -1) {
                            cachingCounters.contentLength = dataSpec3.absoluteStreamPosition + jOpen;
                        }
                        long j13 = 0;
                        while (j13 != j12) {
                            if (Thread.interrupted()) {
                                throw new InterruptedException();
                            }
                            int i12 = dataSource.read(bArr, 0, j12 != -1 ? (int) Math.min(bArr.length, j12 - j13) : bArr.length);
                            if (i12 == -1) {
                                if (cachingCounters.contentLength != -1) {
                                    break;
                                }
                                cachingCounters.contentLength = dataSpec3.absoluteStreamPosition + j13;
                                break;
                            }
                            long j14 = i12;
                            j13 += j14;
                            cachingCounters.newlyCachedBytes += j14;
                        }
                        Util.closeQuietly(dataSource);
                        return j13;
                    } catch (PriorityTaskManager.PriorityTooLowException unused) {
                        dataSpec2 = dataSpec3;
                    }
                } catch (Throwable th2) {
                    Util.closeQuietly(dataSource);
                    throw th2;
                }
            } catch (PriorityTaskManager.PriorityTooLowException unused2) {
            }
            Util.closeQuietly(dataSource);
        }
    }

    public static void remove(Cache cache, String str) {
        Iterator<CacheSpan> it = cache.getCachedSpans(str).iterator();
        while (it.hasNext()) {
            try {
                cache.removeSpan(it.next());
            } catch (Cache.CacheException unused) {
            }
        }
    }
}
