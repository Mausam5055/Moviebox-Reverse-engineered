package com.bumptech.glide.load.engine.cache;

import android.util.Log;
import com.bumptech.glide.disklrucache.DiskLruCache;
import com.bumptech.glide.load.Key;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class DiskLruCacheWrapper implements DiskCache {
    private static final int APP_VERSION = 1;
    private static final String TAG = "DiskLruCacheWrapper";
    private static final int VALUE_COUNT = 1;
    private static DiskLruCacheWrapper wrapper;
    private final File directory;
    private DiskLruCache diskLruCache;
    private final long maxSize;
    private final DiskCacheWriteLocker writeLocker = new DiskCacheWriteLocker();
    private final SafeKeyGenerator safeKeyGenerator = new SafeKeyGenerator();

    @Deprecated
    protected DiskLruCacheWrapper(File file, long j11) {
        this.directory = file;
        this.maxSize = j11;
    }

    public static DiskCache create(File file, long j11) {
        return new DiskLruCacheWrapper(file, j11);
    }

    @Deprecated
    public static synchronized DiskCache get(File file, long j11) {
        try {
            if (wrapper == null) {
                wrapper = new DiskLruCacheWrapper(file, j11);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return wrapper;
    }

    private synchronized DiskLruCache getDiskCache() throws IOException {
        try {
            if (this.diskLruCache == null) {
                this.diskLruCache = DiskLruCache.open(this.directory, 1, 1, this.maxSize);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.diskLruCache;
    }

    private synchronized void resetDiskCache() {
        this.diskLruCache = null;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public synchronized void clear() {
        try {
            try {
                getDiskCache().delete();
            } catch (IOException e11) {
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "Unable to clear disk cache or disk cache cleared externally", e11);
                }
            }
            resetDiskCache();
        } catch (Throwable th2) {
            resetDiskCache();
            throw th2;
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public void delete(Key key) {
        try {
            getDiskCache().remove(this.safeKeyGenerator.getSafeKey(key));
        } catch (IOException e11) {
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Unable to delete from disk cache", e11);
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public File get(Key key) {
        String safeKey = this.safeKeyGenerator.getSafeKey(key);
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "Get: Obtained: " + safeKey + " for for Key: " + key);
        }
        try {
            DiskLruCache.Value value = getDiskCache().get(safeKey);
            if (value != null) {
                return value.getFile(0);
            }
            return null;
        } catch (IOException e11) {
            if (!Log.isLoggable(TAG, 5)) {
                return null;
            }
            Log.w(TAG, "Unable to get from disk cache", e11);
            return null;
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public void put(Key key, DiskCache.Writer writer) {
        String safeKey = this.safeKeyGenerator.getSafeKey(key);
        this.writeLocker.acquire(safeKey);
        try {
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "Put: Obtained: " + safeKey + " for for Key: " + key);
            }
            try {
                DiskLruCache diskCache = getDiskCache();
                if (diskCache.get(safeKey) != null) {
                    this.writeLocker.release(safeKey);
                    return;
                }
                DiskLruCache.Editor editorEdit = diskCache.edit(safeKey);
                if (editorEdit == null) {
                    throw new IllegalStateException("Had two simultaneous puts for: " + safeKey);
                }
                try {
                    if (writer.write(editorEdit.getFile(0))) {
                        editorEdit.commit();
                    }
                    editorEdit.abortUnlessCommitted();
                    this.writeLocker.release(safeKey);
                } catch (Throwable th2) {
                    editorEdit.abortUnlessCommitted();
                    throw th2;
                }
            } catch (IOException e11) {
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "Unable to put to disk cache", e11);
                }
            }
        } catch (Throwable th3) {
            this.writeLocker.release(safeKey);
            throw th3;
        }
    }
}
