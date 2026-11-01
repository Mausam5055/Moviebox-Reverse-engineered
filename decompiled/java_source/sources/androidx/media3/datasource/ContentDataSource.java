package androidx.media3.datasource;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import w1.h;

/* JADX INFO: loaded from: classes2.dex */
public final class ContentDataSource extends w1.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ContentResolver f10690e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Uri f10691f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AssetFileDescriptor f10692g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private FileInputStream f10693h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f10694i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f10695j;

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
        this.f10690e = context.getContentResolver();
    }

    @Override // androidx.media3.datasource.a
    public long a(h hVar) throws ContentDataSourceException {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        try {
            Uri uriNormalizeScheme = hVar.f77511a.normalizeScheme();
            this.f10691f = uriNormalizeScheme;
            f(hVar);
            if ("content".equals(uriNormalizeScheme.getScheme())) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                assetFileDescriptorOpenAssetFileDescriptor = this.f10690e.openTypedAssetFileDescriptor(uriNormalizeScheme, "*/*", bundle);
            } else {
                assetFileDescriptorOpenAssetFileDescriptor = this.f10690e.openAssetFileDescriptor(uriNormalizeScheme, CampaignEx.JSON_KEY_AD_R);
            }
            this.f10692g = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                throw new ContentDataSourceException(new IOException("Could not open file descriptor for: " + uriNormalizeScheme), 2000);
            }
            long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
            this.f10693h = fileInputStream;
            if (length != -1 && hVar.f77517g > length) {
                throw new ContentDataSourceException(null, 2008);
            }
            long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
            long jSkip = fileInputStream.skip(hVar.f77517g + startOffset) - startOffset;
            if (jSkip != hVar.f77517g) {
                throw new ContentDataSourceException(null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.f10694i = -1L;
                } else {
                    long jPosition = size - channel.position();
                    this.f10694i = jPosition;
                    if (jPosition < 0) {
                        throw new ContentDataSourceException(null, 2008);
                    }
                }
            } else {
                long j11 = length - jSkip;
                this.f10694i = j11;
                if (j11 < 0) {
                    throw new ContentDataSourceException(null, 2008);
                }
            }
            long jMin = hVar.f77518h;
            if (jMin != -1) {
                long j12 = this.f10694i;
                if (j12 != -1) {
                    jMin = Math.min(j12, jMin);
                }
                this.f10694i = jMin;
            }
            this.f10695j = true;
            g(hVar);
            long j13 = hVar.f77518h;
            return j13 != -1 ? j13 : this.f10694i;
        } catch (ContentDataSourceException e11) {
            throw e11;
        } catch (IOException e12) {
            throw new ContentDataSourceException(e12, e12 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override // androidx.media3.datasource.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() {
        this.f10691f = null;
        try {
            FileInputStream fileInputStream = this.f10693h;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            this.f10693h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = this.f10692g;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                    this.f10692g = null;
                    if (this.f10695j) {
                        this.f10695j = false;
                        e();
                    }
                } catch (IOException e11) {
                    throw new ContentDataSourceException(e11, 2000);
                }
            } catch (Throwable th2) {
                this.f10692g = null;
                if (this.f10695j) {
                    this.f10695j = false;
                    e();
                }
                throw th2;
            }
        } catch (IOException e12) {
            throw new ContentDataSourceException(e12, 2000);
        }
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        return this.f10691f;
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) throws ContentDataSourceException {
        if (i12 == 0) {
            return 0;
        }
        long j11 = this.f10694i;
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
        int i13 = ((FileInputStream) a1.i(this.f10693h)).read(bArr, i11, i12);
        if (i13 == -1) {
            return -1;
        }
        long j12 = this.f10694i;
        if (j12 != -1) {
            this.f10694i = j12 - ((long) i13);
        }
        d(i13);
        return i13;
    }
}
