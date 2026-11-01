package androidx.media3.datasource;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import w1.h;

/* JADX INFO: loaded from: classes2.dex */
public interface HttpDataSource extends androidx.media3.datasource.a {

    public static final class CleartextNotPermittedException extends HttpDataSourceException {
        public CleartextNotPermittedException(IOException iOException, h hVar) {
            super("Cleartext HTTP traffic not permitted. See https://developer.android.com/guide/topics/media/issues/cleartext-not-permitted", iOException, hVar, 2007, 1);
        }
    }

    public static class HttpDataSourceException extends DataSourceException {
        public static final int TYPE_CLOSE = 3;
        public static final int TYPE_OPEN = 1;
        public static final int TYPE_READ = 2;
        public final h dataSpec;
        public final int type;

        @Deprecated
        public HttpDataSourceException(IOException iOException, h hVar, int i11) {
            this(iOException, hVar, 2000, i11);
        }

        public HttpDataSourceException(IOException iOException, h hVar, int i11, int i12) {
            super(iOException, assignErrorCode(i11, i12));
            this.dataSpec = hVar;
            this.type = i12;
        }

        @Deprecated
        public HttpDataSourceException(String str, IOException iOException, h hVar, int i11) {
            this(str, iOException, hVar, 2000, i11);
        }

        public HttpDataSourceException(String str, @Nullable IOException iOException, h hVar, int i11, int i12) {
            super(str, iOException, assignErrorCode(i11, i12));
            this.dataSpec = hVar;
            this.type = i12;
        }

        @Deprecated
        public HttpDataSourceException(String str, h hVar, int i11) {
            this(str, hVar, 2000, i11);
        }

        public HttpDataSourceException(String str, h hVar, int i11, int i12) {
            super(str, assignErrorCode(i11, i12));
            this.dataSpec = hVar;
            this.type = i12;
        }

        @Deprecated
        public HttpDataSourceException(h hVar, int i11) {
            this(hVar, 2000, i11);
        }

        public HttpDataSourceException(h hVar, int i11, int i12) {
            super(assignErrorCode(i11, i12));
            this.dataSpec = hVar;
            this.type = i12;
        }

        private static int assignErrorCode(int i11, int i12) {
            if (i11 == 2000 && i12 == 1) {
                return 2001;
            }
            return i11;
        }

        public static HttpDataSourceException createForIOException(IOException iOException, h hVar, int i11) {
            int i12;
            String message = iOException.getMessage();
            if (iOException instanceof SocketTimeoutException) {
                i12 = 2002;
            } else if (iOException instanceof InterruptedIOException) {
                i12 = 1004;
            } else {
                i12 = (message == null || !com.google.common.base.a.e(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
            }
            return i12 == 2007 ? new CleartextNotPermittedException(iOException, hVar) : new HttpDataSourceException(iOException, hVar, i12, i11);
        }
    }

    public static final class InvalidContentTypeException extends HttpDataSourceException {
        public final String contentType;

        public InvalidContentTypeException(String str, h hVar) {
            super("Invalid content type: " + str, hVar, 2003, 1);
            this.contentType = str;
        }
    }

    public static final class InvalidResponseCodeException extends HttpDataSourceException {
        public final Map<String, List<String>> headerFields;
        public final byte[] responseBody;
        public final int responseCode;

        @Nullable
        public final String responseMessage;

        public InvalidResponseCodeException(int i11, @Nullable String str, @Nullable IOException iOException, Map<String, List<String>> map, h hVar, byte[] bArr) {
            super("Response code: " + i11, iOException, hVar, 2004, 1);
            this.responseCode = i11;
            this.responseMessage = str;
            this.headerFields = map;
            this.responseBody = bArr;
        }
    }

    public interface a extends androidx.media3.datasource.a.InterfaceC0091a {
        a a(Map map);

        @Override // androidx.media3.datasource.a.InterfaceC0091a
        HttpDataSource createDataSource();
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map f10701a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Map f10702b;

        public synchronized void a(Map map) {
            this.f10702b = null;
            this.f10701a.clear();
            this.f10701a.putAll(map);
        }

        public synchronized Map b() {
            try {
                if (this.f10702b == null) {
                    this.f10702b = Collections.unmodifiableMap(new HashMap(this.f10701a));
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return this.f10702b;
        }
    }
}
