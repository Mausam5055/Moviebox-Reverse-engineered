package androidx.media3.datasource;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import w1.h;

/* JADX INFO: loaded from: classes2.dex */
public final class AssetDataSource extends w1.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AssetManager f10685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Uri f10686f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private InputStream f10687g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f10688h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f10689i;

    public static final class AssetDataSourceException extends DataSourceException {
        @Deprecated
        public AssetDataSourceException(IOException iOException) {
            super(iOException, 2000);
        }

        public AssetDataSourceException(@Nullable Throwable th2, int i11) {
            super(th2, i11);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.f10685e = context.getAssets();
    }

    @Override // androidx.media3.datasource.a
    public long a(h hVar) throws AssetDataSourceException {
        try {
            Uri uri = hVar.f77511a;
            this.f10686f = uri;
            String strSubstring = (String) androidx.media3.common.util.a.e(uri.getPath());
            if (strSubstring.startsWith("/android_asset/")) {
                strSubstring = strSubstring.substring(15);
            } else if (strSubstring.startsWith("/")) {
                strSubstring = strSubstring.substring(1);
            }
            f(hVar);
            InputStream inputStreamOpen = this.f10685e.open(strSubstring, 1);
            this.f10687g = inputStreamOpen;
            if (inputStreamOpen.skip(hVar.f77517g) < hVar.f77517g) {
                throw new AssetDataSourceException(null, 2008);
            }
            long j11 = hVar.f77518h;
            if (j11 != -1) {
                this.f10688h = j11;
            } else {
                long jAvailable = this.f10687g.available();
                this.f10688h = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.f10688h = -1L;
                }
            }
            this.f10689i = true;
            g(hVar);
            return this.f10688h;
        } catch (AssetDataSourceException e11) {
            throw e11;
        } catch (IOException e12) {
            throw new AssetDataSourceException(e12, e12 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override // androidx.media3.datasource.a
    public void close() {
        this.f10686f = null;
        try {
            try {
                InputStream inputStream = this.f10687g;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f10687g = null;
                if (this.f10689i) {
                    this.f10689i = false;
                    e();
                }
            } catch (IOException e11) {
                throw new AssetDataSourceException(e11, 2000);
            }
        } catch (Throwable th2) {
            this.f10687g = null;
            if (this.f10689i) {
                this.f10689i = false;
                e();
            }
            throw th2;
        }
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        return this.f10686f;
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) throws AssetDataSourceException {
        if (i12 == 0) {
            return 0;
        }
        long j11 = this.f10688h;
        if (j11 == 0) {
            return -1;
        }
        if (j11 != -1) {
            try {
                i12 = (int) Math.min(j11, i12);
            } catch (IOException e11) {
                throw new AssetDataSourceException(e11, 2000);
            }
        }
        int i13 = ((InputStream) a1.i(this.f10687g)).read(bArr, i11, i12);
        if (i13 == -1) {
            return -1;
        }
        long j12 = this.f10688h;
        if (j12 != -1) {
            this.f10688h = j12 - ((long) i13);
        }
        d(i13);
        return i13;
    }
}
