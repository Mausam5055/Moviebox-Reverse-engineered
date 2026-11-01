package com.mbridge.msdk.playercommon.exoplayer2.upstream.cache;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class CacheSpan implements Comparable<CacheSpan> {

    @Nullable
    public final File file;
    public final boolean isCached;
    public final String key;
    public final long lastAccessTimestamp;
    public final long length;
    public final long position;

    public CacheSpan(String str, long j11, long j12) {
        this(str, j11, j12, C.TIME_UNSET, null);
    }

    public CacheSpan(String str, long j11, long j12, long j13, @Nullable File file) {
        this.key = str;
        this.position = j11;
        this.length = j12;
        this.isCached = file != null;
        this.file = file;
        this.lastAccessTimestamp = j13;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull CacheSpan cacheSpan) {
        if (!this.key.equals(cacheSpan.key)) {
            return this.key.compareTo(cacheSpan.key);
        }
        long j11 = this.position - cacheSpan.position;
        if (j11 == 0) {
            return 0;
        }
        return j11 < 0 ? -1 : 1;
    }

    public boolean isHoleSpan() {
        return !this.isCached;
    }

    public boolean isOpenEnded() {
        return this.length == -1;
    }
}
