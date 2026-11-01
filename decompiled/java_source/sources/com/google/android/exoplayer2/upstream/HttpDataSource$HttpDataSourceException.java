package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public class HttpDataSource$HttpDataSourceException extends DataSourceException {
    public static final int TYPE_CLOSE = 3;
    public static final int TYPE_OPEN = 1;
    public static final int TYPE_READ = 2;
    public final n dataSpec;
    public final int type;

    @Deprecated
    public HttpDataSource$HttpDataSourceException(n nVar, int i11) {
        this(nVar, 2000, i11);
    }

    public HttpDataSource$HttpDataSourceException(n nVar, int i11, int i12) {
        super(assignErrorCode(i11, i12));
        this.dataSpec = nVar;
        this.type = i12;
    }

    @Deprecated
    public HttpDataSource$HttpDataSourceException(IOException iOException, n nVar, int i11) {
        this(iOException, nVar, 2000, i11);
    }

    public HttpDataSource$HttpDataSourceException(IOException iOException, n nVar, int i11, int i12) {
        super(iOException, assignErrorCode(i11, i12));
        this.dataSpec = nVar;
        this.type = i12;
    }

    @Deprecated
    public HttpDataSource$HttpDataSourceException(String str, n nVar, int i11) {
        this(str, nVar, 2000, i11);
    }

    public HttpDataSource$HttpDataSourceException(String str, n nVar, int i11, int i12) {
        super(str, assignErrorCode(i11, i12));
        this.dataSpec = nVar;
        this.type = i12;
    }

    @Deprecated
    public HttpDataSource$HttpDataSourceException(String str, IOException iOException, n nVar, int i11) {
        this(str, iOException, nVar, 2000, i11);
    }

    public HttpDataSource$HttpDataSourceException(String str, @Nullable IOException iOException, n nVar, int i11, int i12) {
        super(str, iOException, assignErrorCode(i11, i12));
        this.dataSpec = nVar;
        this.type = i12;
    }

    private static int assignErrorCode(int i11, int i12) {
        if (i11 == 2000 && i12 == 1) {
            return 2001;
        }
        return i11;
    }

    public static HttpDataSource$HttpDataSourceException createForIOException(final IOException iOException, final n nVar, int i11) {
        int i12;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i12 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i12 = 1004;
        } else {
            i12 = (message == null || !com.google.common.base.a.e(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
        }
        return i12 == 2007 ? new HttpDataSource$HttpDataSourceException(iOException, nVar) { // from class: com.google.android.exoplayer2.upstream.HttpDataSource$CleartextNotPermittedException
        } : new HttpDataSource$HttpDataSourceException(iOException, nVar, i12, i11);
    }
}
