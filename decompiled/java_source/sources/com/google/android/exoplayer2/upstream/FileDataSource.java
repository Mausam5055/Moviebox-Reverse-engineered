package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes3.dex */
public final class FileDataSource extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RandomAccessFile f27239e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Uri f27240f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f27241g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f27242h;

    public static class FileDataSourceException extends DataSourceException {
        @Deprecated
        public FileDataSourceException(Exception exc) {
            super(exc, 2000);
        }

        @Deprecated
        public FileDataSourceException(String str, IOException iOException) {
            super(str, iOException, 2000);
        }

        public FileDataSourceException(@Nullable String str, @Nullable Throwable th2, int i11) {
            super(str, th2, i11);
        }

        public FileDataSourceException(Throwable th2, int i11) {
            super(th2, i11);
        }
    }

    private static final class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static boolean b(@Nullable Throwable th2) {
            return (th2 instanceof ErrnoException) && ((ErrnoException) th2).errno == OsConstants.EACCES;
        }
    }

    public static final class b implements k.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private k0 f27243a;

        @Override // com.google.android.exoplayer2.upstream.k.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileDataSource createDataSource() {
            FileDataSource fileDataSource = new FileDataSource();
            k0 k0Var = this.f27243a;
            if (k0Var != null) {
                fileDataSource.e(k0Var);
            }
            return fileDataSource;
        }
    }

    public FileDataSource() {
        super(false);
    }

    private static RandomAccessFile l(Uri uri) throws FileDataSourceException {
        try {
            return new RandomAccessFile((String) com.google.android.exoplayer2.util.a.e(uri.getPath()), CampaignEx.JSON_KEY_AD_R);
        } catch (FileNotFoundException e11) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(e11, (p0.f27626a < 21 || !a.b(e11.getCause())) ? 2005 : 2006);
            }
            throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e11, 1004);
        } catch (SecurityException e12) {
            throw new FileDataSourceException(e12, 2006);
        } catch (RuntimeException e13) {
            throw new FileDataSourceException(e13, 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(n nVar) throws FileDataSourceException {
        Uri uri = nVar.f27437a;
        this.f27240f = uri;
        j(nVar);
        RandomAccessFile randomAccessFileL = l(uri);
        this.f27239e = randomAccessFileL;
        try {
            randomAccessFileL.seek(nVar.f27443g);
            long length = nVar.f27444h;
            if (length == -1) {
                length = this.f27239e.length() - nVar.f27443g;
            }
            this.f27241g = length;
            if (length < 0) {
                throw new FileDataSourceException(null, null, 2008);
            }
            this.f27242h = true;
            k(nVar);
            return this.f27241g;
        } catch (IOException e11) {
            throw new FileDataSourceException(e11, 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        this.f27240f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f27239e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f27239e = null;
                if (this.f27242h) {
                    this.f27242h = false;
                    i();
                }
            } catch (IOException e11) {
                throw new FileDataSourceException(e11, 2000);
            }
        } catch (Throwable th2) {
            this.f27239e = null;
            if (this.f27242h) {
                this.f27242h = false;
                i();
            }
            throw th2;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        return this.f27240f;
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) throws FileDataSourceException {
        if (i12 == 0) {
            return 0;
        }
        if (this.f27241g == 0) {
            return -1;
        }
        try {
            int i13 = ((RandomAccessFile) p0.j(this.f27239e)).read(bArr, i11, (int) Math.min(this.f27241g, i12));
            if (i13 > 0) {
                this.f27241g -= (long) i13;
                h(i13);
            }
            return i13;
        } catch (IOException e11) {
            throw new FileDataSourceException(e11, 2000);
        }
    }
}
