package com.google.android.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes3.dex */
public final class ContentDataSource extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ContentResolver f27233e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Uri f27234f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AssetFileDescriptor f27235g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private FileInputStream f27236h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f27237i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f27238j;

    public static class ContentDataSourceException extends DataSourceException {
        @Deprecated
        public ContentDataSourceException(IOException iOException) {
            this(iOException, 2000);
        }

        public ContentDataSourceException(@Nullable IOException iOException, int i11) {
            super(iOException, i11);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.f27233e = context.getContentResolver();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(n nVar) throws ContentDataSourceException {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        try {
            Uri uri = nVar.f27437a;
            this.f27234f = uri;
            j(nVar);
            if ("content".equals(nVar.f27437a.getScheme())) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                assetFileDescriptorOpenAssetFileDescriptor = this.f27233e.openTypedAssetFileDescriptor(uri, "*/*", bundle);
            } else {
                assetFileDescriptorOpenAssetFileDescriptor = this.f27233e.openAssetFileDescriptor(uri, CampaignEx.JSON_KEY_AD_R);
            }
            this.f27235g = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                throw new ContentDataSourceException(new IOException("Could not open file descriptor for: " + uri), 2000);
            }
            long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
            this.f27236h = fileInputStream;
            if (length != -1 && nVar.f27443g > length) {
                throw new ContentDataSourceException(null, 2008);
            }
            long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
            long jSkip = fileInputStream.skip(nVar.f27443g + startOffset) - startOffset;
            if (jSkip != nVar.f27443g) {
                throw new ContentDataSourceException(null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.f27237i = -1L;
                } else {
                    long jPosition = size - channel.position();
                    this.f27237i = jPosition;
                    if (jPosition < 0) {
                        throw new ContentDataSourceException(null, 2008);
                    }
                }
            } else {
                long j11 = length - jSkip;
                this.f27237i = j11;
                if (j11 < 0) {
                    throw new ContentDataSourceException(null, 2008);
                }
            }
            long jMin = nVar.f27444h;
            if (jMin != -1) {
                long j12 = this.f27237i;
                if (j12 != -1) {
                    jMin = Math.min(j12, jMin);
                }
                this.f27237i = jMin;
            }
            this.f27238j = true;
            k(nVar);
            long j13 = nVar.f27444h;
            return j13 != -1 ? j13 : this.f27237i;
        } catch (ContentDataSourceException e11) {
            throw e11;
        } catch (IOException e12) {
            throw new ContentDataSourceException(e12, e12 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override // com.google.android.exoplayer2.upstream.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() {
        this.f27234f = null;
        try {
            FileInputStream fileInputStream = this.f27236h;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            this.f27236h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = this.f27235g;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                    this.f27235g = null;
                    if (this.f27238j) {
                        this.f27238j = false;
                        i();
                    }
                } catch (IOException e11) {
                    throw new ContentDataSourceException(e11, 2000);
                }
            } catch (Throwable th2) {
                this.f27235g = null;
                if (this.f27238j) {
                    this.f27238j = false;
                    i();
                }
                throw th2;
            }
        } catch (IOException e12) {
            throw new ContentDataSourceException(e12, 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        return this.f27234f;
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) throws ContentDataSourceException {
        if (i12 == 0) {
            return 0;
        }
        long j11 = this.f27237i;
        if (j11 == 0) {
            return -1;
        }
        if (j11 != -1) {
            try {
                i12 = (int) Math.min(j11, i12);
            } catch (IOException e11) {
                throw new ContentDataSourceException(e11, 2000);
            }
        }
        int i13 = ((FileInputStream) p0.j(this.f27236h)).read(bArr, i11, i12);
        if (i13 == -1) {
            return -1;
        }
        long j12 = this.f27237i;
        if (j12 != -1) {
            this.f27237i = j12 - ((long) i13);
        }
        h(i13);
        return i13;
    }
}
