package com.amazonaws.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public class SdkDigestInputStream extends DigestInputStream implements MetricAware {
    public SdkDigestInputStream(InputStream inputStream, MessageDigest messageDigest) {
        super(inputStream, messageDigest);
    }

    @Override // com.amazonaws.internal.MetricAware
    public final boolean d() {
        if (((DigestInputStream) this).in instanceof MetricAware) {
            return ((MetricAware) ((DigestInputStream) this).in).d();
        }
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j11) throws IOException {
        if (j11 <= 0) {
            return j11;
        }
        int iMin = (int) Math.min(PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH, j11);
        byte[] bArr = new byte[iMin];
        long j12 = j11;
        while (j12 > 0) {
            int i11 = read(bArr, 0, (int) Math.min(j12, iMin));
            if (i11 == -1) {
                if (j12 == j11) {
                    return -1L;
                }
                return j11 - j12;
            }
            j12 -= (long) i11;
        }
        return j11;
    }
}
