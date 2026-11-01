package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class AssetDataSource extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AssetManager f27228e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Uri f27229f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private InputStream f27230g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f27231h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f27232i;

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
        this.f27228e = context.getAssets();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(n nVar) throws AssetDataSourceException {
        try {
            Uri uri = nVar.f27437a;
            this.f27229f = uri;
            String strSubstring = (String) com.google.android.exoplayer2.util.a.e(uri.getPath());
            if (strSubstring.startsWith("/android_asset/")) {
                strSubstring = strSubstring.substring(15);
            } else if (strSubstring.startsWith("/")) {
                strSubstring = strSubstring.substring(1);
            }
            j(nVar);
            InputStream inputStreamOpen = this.f27228e.open(strSubstring, 1);
            this.f27230g = inputStreamOpen;
            if (inputStreamOpen.skip(nVar.f27443g) < nVar.f27443g) {
                throw new AssetDataSourceException(null, 2008);
            }
            long j11 = nVar.f27444h;
            if (j11 != -1) {
                this.f27231h = j11;
            } else {
                long jAvailable = this.f27230g.available();
                this.f27231h = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.f27231h = -1L;
                }
            }
            this.f27232i = true;
            k(nVar);
            return this.f27231h;
        } catch (AssetDataSourceException e11) {
            throw e11;
        } catch (IOException e12) {
            throw new AssetDataSourceException(e12, e12 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        this.f27229f = null;
        try {
            try {
                InputStream inputStream = this.f27230g;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f27230g = null;
                if (this.f27232i) {
                    this.f27232i = false;
                    i();
                }
            } catch (IOException e11) {
                throw new AssetDataSourceException(e11, 2000);
            }
        } catch (Throwable th2) {
            this.f27230g = null;
            if (this.f27232i) {
                this.f27232i = false;
                i();
            }
            throw th2;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        return this.f27229f;
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) throws AssetDataSourceException {
        if (i12 == 0) {
            return 0;
        }
        long j11 = this.f27231h;
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
        int i13 = ((InputStream) p0.j(this.f27230g)).read(bArr, i11, i12);
        if (i13 == -1) {
            return -1;
        }
        long j12 = this.f27231h;
        if (j12 != -1) {
            this.f27231h = j12 - ((long) i13);
        }
        h(i13);
        return i13;
    }
}
