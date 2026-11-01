package com.mbridge.msdk.playercommon.exoplayer2.upstream;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mbridge.msdk.foundation.same.net.MBridgeHostnameVerifier;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;
import com.mbridge.msdk.playercommon.exoplayer2.util.Predicate;
import com.mbridge.msdk.playercommon.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes5.dex */
public class DefaultHttpDataSource implements HttpDataSource {
    public static final int DEFAULT_CONNECT_TIMEOUT_MILLIS = 8000;
    public static final int DEFAULT_READ_TIMEOUT_MILLIS = 8000;
    private static final long MAX_BYTES_TO_DRAIN = 2048;
    private static final int MAX_REDIRECTS = 20;
    private static final String TAG = "DefaultHttpDataSource";
    private final boolean allowCrossProtocolRedirects;
    private long bytesRead;
    private long bytesSkipped;
    private long bytesToRead;
    private long bytesToSkip;
    private final int connectTimeoutMillis;
    private HttpsURLConnection connection;
    private final Predicate<String> contentTypePredicate;
    private DataSpec dataSpec;
    private final HttpDataSource.RequestProperties defaultRequestProperties;
    private InputStream inputStream;
    private final TransferListener<? super DefaultHttpDataSource> listener;
    private boolean opened;
    private final int readTimeoutMillis;
    private final HttpDataSource.RequestProperties requestProperties;
    private final String userAgent;
    private static final Pattern CONTENT_RANGE_HEADER = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> skipBufferReference = new AtomicReference<>();

    public DefaultHttpDataSource(String str, Predicate<String> predicate) {
        this(str, predicate, null);
    }

    public DefaultHttpDataSource(String str, Predicate<String> predicate, TransferListener<? super DefaultHttpDataSource> transferListener) {
        this(str, predicate, transferListener, 8000, 8000);
    }

    public DefaultHttpDataSource(String str, Predicate<String> predicate, TransferListener<? super DefaultHttpDataSource> transferListener, int i11, int i12) {
        this(str, predicate, transferListener, i11, i12, false, null);
    }

    public DefaultHttpDataSource(String str, Predicate<String> predicate, TransferListener<? super DefaultHttpDataSource> transferListener, int i11, int i12, boolean z10, HttpDataSource.RequestProperties requestProperties) {
        this.userAgent = Assertions.checkNotEmpty(str);
        this.contentTypePredicate = predicate;
        this.listener = transferListener;
        this.requestProperties = new HttpDataSource.RequestProperties();
        this.connectTimeoutMillis = i11;
        this.readTimeoutMillis = i12;
        this.allowCrossProtocolRedirects = z10;
        this.defaultRequestProperties = requestProperties;
    }

    private void closeConnectionQuietly() {
        HttpsURLConnection httpsURLConnection = this.connection;
        if (httpsURLConnection != null) {
            try {
                httpsURLConnection.disconnect();
            } catch (Exception e11) {
                Log.e(TAG, "Unexpected error while disconnecting", e11);
            }
            this.connection = null;
        }
    }

    private static long getContentLength(HttpsURLConnection httpsURLConnection) {
        long j11;
        String headerField = httpsURLConnection.getHeaderField(HttpHeaders.CONTENT_LENGTH);
        if (TextUtils.isEmpty(headerField)) {
            j11 = -1;
        } else {
            try {
                j11 = Long.parseLong(headerField);
            } catch (NumberFormatException unused) {
                Log.e(TAG, "Unexpected Content-Length [" + headerField + "]");
                j11 = -1;
            }
        }
        String headerField2 = httpsURLConnection.getHeaderField("Content-Range");
        if (TextUtils.isEmpty(headerField2)) {
            return j11;
        }
        Matcher matcher = CONTENT_RANGE_HEADER.matcher(headerField2);
        if (!matcher.find()) {
            return j11;
        }
        try {
            long j12 = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
            if (j11 < 0) {
                return j12;
            }
            if (j11 == j12) {
                return j11;
            }
            Log.w(TAG, "Inconsistent headers [" + headerField + "] [" + headerField2 + "]");
            return Math.max(j11, j12);
        } catch (NumberFormatException unused2) {
            Log.e(TAG, "Unexpected Content-Range [" + headerField2 + "]");
            return j11;
        }
    }

    private static URL handleRedirect(URL url, String str) throws IOException {
        if (str == null) {
            throw new ProtocolException("Null location redirect");
        }
        URL url2 = new URL(url, str);
        String protocol = url2.getProtocol();
        if ("https".equals(protocol) || "http".equals(protocol)) {
            return url2;
        }
        throw new ProtocolException("Unsupported protocol redirect: " + protocol);
    }

    private HttpsURLConnection makeConnection(DataSpec dataSpec) throws IOException {
        URL url = new URL(dataSpec.uri.toString());
        byte[] bArr = dataSpec.postBody;
        long j11 = dataSpec.position;
        long j12 = dataSpec.length;
        boolean zIsFlagSet = dataSpec.isFlagSet(1);
        if (!this.allowCrossProtocolRedirects) {
            return makeConnection(url, bArr, j11, j12, zIsFlagSet, true);
        }
        int i11 = 0;
        while (true) {
            int i12 = i11 + 1;
            if (i11 > 20) {
                throw new NoRouteToHostException("Too many redirects: " + i12);
            }
            long j13 = j11;
            HttpsURLConnection httpsURLConnectionMakeConnection = makeConnection(url, bArr, j11, j12, zIsFlagSet, false);
            int responseCode = httpsURLConnectionMakeConnection.getResponseCode();
            if (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && (bArr != null || (responseCode != 307 && responseCode != 308))) {
                return httpsURLConnectionMakeConnection;
            }
            String headerField = httpsURLConnectionMakeConnection.getHeaderField(HttpHeaders.LOCATION);
            httpsURLConnectionMakeConnection.disconnect();
            url = handleRedirect(url, headerField);
            bArr = null;
            i11 = i12;
            j11 = j13;
        }
    }

    private HttpsURLConnection makeConnection(URL url, byte[] bArr, long j11, long j12, boolean z10, boolean z11) throws IOException {
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
        httpsURLConnection.setHostnameVerifier(new MBridgeHostnameVerifier(url));
        httpsURLConnection.setConnectTimeout(this.connectTimeoutMillis);
        httpsURLConnection.setReadTimeout(this.readTimeoutMillis);
        HttpDataSource.RequestProperties requestProperties = this.defaultRequestProperties;
        if (requestProperties != null) {
            for (Map.Entry<String, String> entry : requestProperties.getSnapshot().entrySet()) {
                httpsURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry<String, String> entry2 : this.requestProperties.getSnapshot().entrySet()) {
            httpsURLConnection.setRequestProperty(entry2.getKey(), entry2.getValue());
        }
        if (j11 != 0 || j12 != -1) {
            String str = "bytes=" + j11 + "-";
            if (j12 != -1) {
                str = str + ((j11 + j12) - 1);
            }
            httpsURLConnection.setRequestProperty("Range", str);
        }
        httpsURLConnection.setRequestProperty("User-Agent", this.userAgent);
        if (!z10) {
            httpsURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        httpsURLConnection.setInstanceFollowRedirects(z11);
        httpsURLConnection.setDoOutput(bArr != null);
        if (bArr != null) {
            httpsURLConnection.setRequestMethod("POST");
            if (bArr.length == 0) {
                httpsURLConnection.connect();
            } else {
                httpsURLConnection.setFixedLengthStreamingMode(bArr.length);
                httpsURLConnection.connect();
                OutputStream outputStream = httpsURLConnection.getOutputStream();
                outputStream.write(bArr);
                outputStream.close();
            }
        } else {
            httpsURLConnection.connect();
        }
        return httpsURLConnection;
    }

    private static void maybeTerminateInputStream(HttpsURLConnection httpsURLConnection, long j11) {
        int i11 = Util.SDK_INT;
        if (i11 == 19 || i11 == 20) {
            try {
                InputStream inputStream = httpsURLConnection.getInputStream();
                if (j11 == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j11 <= 2048) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                    Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", null);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(inputStream, null);
                }
            } catch (Exception unused) {
            }
        }
    }

    private int readInternal(byte[] bArr, int i11, int i12) throws IOException {
        if (i12 == 0) {
            return 0;
        }
        long j11 = this.bytesToRead;
        if (j11 != -1) {
            long j12 = j11 - this.bytesRead;
            if (j12 == 0) {
                return -1;
            }
            i12 = (int) Math.min(i12, j12);
        }
        int i13 = this.inputStream.read(bArr, i11, i12);
        if (i13 == -1) {
            if (this.bytesToRead == -1) {
                return -1;
            }
            throw new EOFException();
        }
        this.bytesRead += (long) i13;
        TransferListener<? super DefaultHttpDataSource> transferListener = this.listener;
        if (transferListener != null) {
            transferListener.onBytesTransferred(this, i13);
        }
        return i13;
    }

    private void skipInternal() throws IOException {
        if (this.bytesSkipped == this.bytesToSkip) {
            return;
        }
        byte[] andSet = skipBufferReference.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[4096];
        }
        while (true) {
            long j11 = this.bytesSkipped;
            long j12 = this.bytesToSkip;
            if (j11 == j12) {
                skipBufferReference.set(andSet);
                return;
            }
            int i11 = this.inputStream.read(andSet, 0, (int) Math.min(j12 - j11, andSet.length));
            if (Thread.currentThread().isInterrupted()) {
                throw new InterruptedIOException();
            }
            if (i11 == -1) {
                throw new EOFException();
            }
            this.bytesSkipped += (long) i11;
            TransferListener<? super DefaultHttpDataSource> transferListener = this.listener;
            if (transferListener != null) {
                transferListener.onBytesTransferred(this, i11);
            }
        }
    }

    protected final long bytesRead() {
        return this.bytesRead;
    }

    protected final long bytesRemaining() {
        long j11 = this.bytesToRead;
        return j11 == -1 ? j11 : j11 - this.bytesRead;
    }

    protected final long bytesSkipped() {
        return this.bytesSkipped;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource
    public void clearAllRequestProperties() {
        this.requestProperties.clear();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource
    public void clearRequestProperty(String str) {
        Assertions.checkNotNull(str);
        this.requestProperties.remove(str);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0015 */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource, com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() throws HttpDataSource.HttpDataSourceException {
        if (this.inputStream != null) {
            maybeTerminateInputStream(this.connection, bytesRemaining());
            try {
                this.inputStream.close();
            } catch (IOException e11) {
                throw new HttpDataSource.HttpDataSourceException(e11, this.dataSpec, 3);
            }
        }
        this.inputStream = null;
        closeConnectionQuietly();
        if (this.opened) {
            this.opened = false;
            TransferListener<? super DefaultHttpDataSource> transferListener = this.listener;
            if (transferListener != null) {
                transferListener.onTransferEnd(this);
            }
        }
    }

    protected final HttpsURLConnection getConnection() {
        return this.connection;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource
    public Map<String, List<String>> getResponseHeaders() {
        HttpsURLConnection httpsURLConnection = this.connection;
        if (httpsURLConnection == null) {
            return null;
        }
        return httpsURLConnection.getHeaderFields();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public Uri getUri() {
        HttpsURLConnection httpsURLConnection = this.connection;
        if (httpsURLConnection == null) {
            return null;
        }
        return Uri.parse(httpsURLConnection.getURL().toString());
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource, com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        this.dataSpec = dataSpec;
        long j11 = 0;
        this.bytesRead = 0L;
        this.bytesSkipped = 0L;
        try {
            HttpsURLConnection httpsURLConnectionMakeConnection = makeConnection(dataSpec);
            this.connection = httpsURLConnectionMakeConnection;
            try {
                int responseCode = httpsURLConnectionMakeConnection.getResponseCode();
                if (responseCode < 200 || responseCode > 299) {
                    Map<String, List<String>> headerFields = this.connection.getHeaderFields();
                    closeConnectionQuietly();
                    HttpDataSource.InvalidResponseCodeException invalidResponseCodeException = new HttpDataSource.InvalidResponseCodeException(responseCode, headerFields, dataSpec);
                    if (responseCode != 416) {
                        throw invalidResponseCodeException;
                    }
                    invalidResponseCodeException.initCause(new DataSourceException(0));
                    throw invalidResponseCodeException;
                }
                String contentType = this.connection.getContentType();
                Predicate<String> predicate = this.contentTypePredicate;
                if (predicate != null && !predicate.evaluate(contentType)) {
                    closeConnectionQuietly();
                    throw new HttpDataSource.InvalidContentTypeException(contentType, dataSpec);
                }
                if (responseCode == 200) {
                    long j12 = dataSpec.position;
                    if (j12 != 0) {
                        j11 = j12;
                    }
                }
                this.bytesToSkip = j11;
                if (dataSpec.isFlagSet(1)) {
                    this.bytesToRead = dataSpec.length;
                } else {
                    long j13 = dataSpec.length;
                    if (j13 != -1) {
                        this.bytesToRead = j13;
                    } else {
                        long contentLength = getContentLength(this.connection);
                        this.bytesToRead = contentLength != -1 ? contentLength - this.bytesToSkip : -1L;
                    }
                }
                try {
                    this.inputStream = this.connection.getInputStream();
                    this.opened = true;
                    TransferListener<? super DefaultHttpDataSource> transferListener = this.listener;
                    if (transferListener != null) {
                        transferListener.onTransferStart(this, dataSpec);
                    }
                    return this.bytesToRead;
                } catch (IOException e11) {
                    closeConnectionQuietly();
                    throw new HttpDataSource.HttpDataSourceException(e11, dataSpec, 1);
                }
            } catch (IOException e12) {
                closeConnectionQuietly();
                throw new HttpDataSource.HttpDataSourceException("Unable to connect to " + dataSpec.uri.toString(), e12, dataSpec, 1);
            }
        } catch (IOException e13) {
            throw new HttpDataSource.HttpDataSourceException("Unable to connect to " + dataSpec.uri.toString(), e13, dataSpec, 1);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource, com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public int read(byte[] bArr, int i11, int i12) throws HttpDataSource.HttpDataSourceException {
        try {
            skipInternal();
            return readInternal(bArr, i11, i12);
        } catch (IOException e11) {
            throw new HttpDataSource.HttpDataSourceException(e11, this.dataSpec, 2);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.HttpDataSource
    public void setRequestProperty(String str, String str2) {
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(str2);
        this.requestProperties.set(str, str2);
    }
}
