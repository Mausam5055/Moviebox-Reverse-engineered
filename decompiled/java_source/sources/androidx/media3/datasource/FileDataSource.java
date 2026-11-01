package androidx.media3.datasource;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import w1.h;
import w1.n;

/* JADX INFO: loaded from: classes2.dex */
public final class FileDataSource extends w1.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RandomAccessFile f10696e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Uri f10697f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f10698g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f10699h;

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

    public static final class a implements androidx.media3.datasource.a.InterfaceC0091a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private n f10700a;

        @Override // androidx.media3.datasource.a.InterfaceC0091a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public FileDataSource createDataSource() {
            FileDataSource fileDataSource = new FileDataSource();
            n nVar = this.f10700a;
            if (nVar != null) {
                fileDataSource.c(nVar);
            }
            return fileDataSource;
        }
    }

    public FileDataSource() {
        super(false);
    }

    private static RandomAccessFile h(Uri uri) throws FileDataSourceException {
        try {
            return new RandomAccessFile((String) androidx.media3.common.util.a.e(uri.getPath()), CampaignEx.JSON_KEY_AD_R);
        } catch (FileNotFoundException e11) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(e11, ((e11.getCause() instanceof ErrnoException) && ((ErrnoException) e11.getCause()).errno == OsConstants.EACCES) ? 2006 : 2005);
            }
            throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e11, 1004);
        } catch (SecurityException e12) {
            throw new FileDataSourceException(e12, 2006);
        } catch (RuntimeException e13) {
            throw new FileDataSourceException(e13, 2000);
        }
    }

    @Override // androidx.media3.datasource.a
    public long a(h hVar) throws FileDataSourceException {
        Uri uri = hVar.f77511a;
        this.f10697f = uri;
        f(hVar);
        RandomAccessFile randomAccessFileH = h(uri);
        this.f10696e = randomAccessFileH;
        try {
            randomAccessFileH.seek(hVar.f77517g);
            long length = hVar.f77518h;
            if (length == -1) {
                length = this.f10696e.length() - hVar.f77517g;
            }
            this.f10698g = length;
            if (length < 0) {
                throw new FileDataSourceException(null, null, 2008);
            }
            this.f10699h = true;
            g(hVar);
            return this.f10698g;
        } catch (IOException e11) {
            throw new FileDataSourceException(e11, 2000);
        }
    }

    @Override // androidx.media3.datasource.a
    public void close() {
        this.f10697f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f10696e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f10696e = null;
                if (this.f10699h) {
                    this.f10699h = false;
                    e();
                }
            } catch (IOException e11) {
                throw new FileDataSourceException(e11, 2000);
            }
        } catch (Throwable th2) {
            this.f10696e = null;
            if (this.f10699h) {
                this.f10699h = false;
                e();
            }
            throw th2;
        }
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        return this.f10697f;
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) throws FileDataSourceException {
        if (i12 == 0) {
            return 0;
        }
        if (this.f10698g == 0) {
            return -1;
        }
        try {
            int i13 = ((RandomAccessFile) a1.i(this.f10696e)).read(bArr, i11, (int) Math.min(this.f10698g, i12));
            if (i13 > 0) {
                this.f10698g -= (long) i13;
                d(i13);
            }
            return i13;
        } catch (IOException e11) {
            throw new FileDataSourceException(e11, 2000);
        }
    }
}
