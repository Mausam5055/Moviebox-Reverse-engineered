package com.mbridge.msdk.playercommon.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class DataSpec {
    public static final int FLAG_ALLOW_CACHING_UNKNOWN_LENGTH = 2;
    public static final int FLAG_ALLOW_GZIP = 1;
    public final long absoluteStreamPosition;
    public final int flags;

    @Nullable
    public final String key;
    public final long length;
    public final long position;

    @Nullable
    public final byte[] postBody;
    public final Uri uri;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public DataSpec(Uri uri) {
        this(uri, 0);
    }

    public DataSpec(Uri uri, int i11) {
        this(uri, 0L, -1L, null, i11);
    }

    public DataSpec(Uri uri, long j11, long j12, long j13, @Nullable String str, int i11) {
        this(uri, null, j11, j12, j13, str, i11);
    }

    public DataSpec(Uri uri, long j11, long j12, @Nullable String str) {
        this(uri, j11, j11, j12, str, 0);
    }

    public DataSpec(Uri uri, long j11, long j12, @Nullable String str, int i11) {
        this(uri, j11, j11, j12, str, i11);
    }

    public DataSpec(Uri uri, @Nullable byte[] bArr, long j11, long j12, long j13, @Nullable String str, int i11) {
        Assertions.checkArgument(j11 >= 0);
        Assertions.checkArgument(j12 >= 0);
        Assertions.checkArgument(j13 > 0 || j13 == -1);
        this.uri = uri;
        this.postBody = bArr;
        this.absoluteStreamPosition = j11;
        this.position = j12;
        this.length = j13;
        this.key = str;
        this.flags = i11;
    }

    public boolean isFlagSet(int i11) {
        return (this.flags & i11) == i11;
    }

    public DataSpec subrange(long j11) {
        long j12 = this.length;
        return subrange(j11, j12 != -1 ? j12 - j11 : -1L);
    }

    public DataSpec subrange(long j11, long j12) {
        return (j11 == 0 && this.length == j12) ? this : new DataSpec(this.uri, this.postBody, this.absoluteStreamPosition + j11, this.position + j11, j12, this.key, this.flags);
    }

    public String toString() {
        return "DataSpec[" + this.uri + ", " + Arrays.toString(this.postBody) + ", " + this.absoluteStreamPosition + ", " + this.position + ", " + this.length + ", " + this.key + ", " + this.flags + "]";
    }

    public DataSpec withUri(Uri uri) {
        return new DataSpec(uri, this.postBody, this.absoluteStreamPosition, this.position, this.length, this.key, this.flags);
    }
}
