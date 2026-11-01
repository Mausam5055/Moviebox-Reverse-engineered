package com.transsion.baselib.db.download;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.net.BindException;
import java.net.ConnectException;
import java.net.HttpRetryException;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0016\b\u0016\u0018\u0000 \u001e2\u00060\u0001j\u0002`\u0002:\u0001\u001fB\u0013\b\u0016\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001d\b\u0016\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0005\u0010\tB'\b\u0016\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0005\u0010\fB\u001d\b\u0016\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0005\u0010\rR\"\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0006R\"\u0010\u0012\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0006R\"\u0010\u0015\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001b\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001a¨\u0006 "}, d2 = {"Lcom/transsion/baselib/db/download/DownloadException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "", "code", "<init>", "(I)V", "", "message", "(ILjava/lang/String;)V", "", "cause", "(ILjava/lang/String;Ljava/lang/Throwable;)V", "(ILjava/lang/Throwable;)V", "I", "getCode", "()I", "setCode", "responseCode", "getResponseCode", "setResponseCode", "formatMessage", "Ljava/lang/String;", "getFormatMessage", "()Ljava/lang/String;", "setFormatMessage", "(Ljava/lang/String;)V", "range", "getRange", "setRange", "Companion", "a", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class DownloadException extends RuntimeException {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int DEFAULT_CODE = -1;
    public static final int EXCEPTION_FILE_SIZE_ZERO = 6;
    public static final int EXCEPTION_IO_EXCEPTION = 5;
    public static final int EXCEPTION_IO_HTTP_RETRY = 509;
    public static final int EXCEPTION_IO_MALFORMED_URL = 508;
    public static final int EXCEPTION_IO_SOCKET_BIND = 504;
    public static final int EXCEPTION_IO_SOCKET_CONNECT = 505;
    public static final int EXCEPTION_IO_SOCKET_NO_ROOT_TO_HOST = 506;
    public static final int EXCEPTION_IO_SOCKET_PORT_UNREACHABLE = 507;
    public static final int EXCEPTION_IO_SOCKET_TIMEOUT = 503;
    public static final int EXCEPTION_IO_SSL_HANDSHAKE = 510;
    public static final int EXCEPTION_IO_SSL_KEY = 511;
    public static final int EXCEPTION_IO_SSL_PEER_UNVERIFIED = 512;
    public static final int EXCEPTION_IO_SSL_PROTOCOL = 513;
    public static final int EXCEPTION_IO_UNKNOWN_HOST = 501;
    public static final int EXCEPTION_IO_UNKNOWN_SERVICE = 502;
    public static final String EXCEPTION_MESSAGE_FAILED_CONNECT = "failed to connect to host";
    public static final String EXCEPTION_MESSAGE_NO_NET = "noNetWork";
    public static final String EXCEPTION_MESSAGE_NO_SDCARD = "no sdcard";
    public static final String EXCEPTION_MESSAGE_SSL = "ssl_error";
    public static final int EXCEPTION_OTHER = 9;
    public static final int EXCEPTION_PATH_NULL = 1;
    public static final int EXCEPTION_PAUSE = 7;
    public static final int EXCEPTION_PROTOCOL = 4;
    public static final int EXCEPTION_SERVER_ERROR = 3;
    public static final int EXCEPTION_SERVER_SUPPORT_CODE = 8;
    public static final int EXCEPTION_URL_ERROR = 2;
    public static final int EXCEPTION_URL_NULL = 0;
    private int code;
    private String formatMessage;
    private String range;
    private int responseCode;

    /* JADX INFO: renamed from: com.transsion.baselib.db.download.DownloadException$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return DownloadException.DEFAULT_CODE;
        }

        public final int b(Exception exception, int i11) {
            Intrinsics.h(exception, "exception");
            if (exception instanceof UnknownHostException) {
                return 501;
            }
            if (exception instanceof UnknownServiceException) {
                return 502;
            }
            if (exception instanceof BindException) {
                return 504;
            }
            if (exception instanceof ConnectException) {
                return 505;
            }
            if (exception instanceof NoRouteToHostException) {
                return 506;
            }
            if (exception instanceof PortUnreachableException) {
                return 507;
            }
            if (exception instanceof SocketTimeoutException) {
                return 503;
            }
            if (exception instanceof MalformedURLException) {
                return DownloadException.EXCEPTION_IO_MALFORMED_URL;
            }
            if (exception instanceof HttpRetryException) {
                return DownloadException.EXCEPTION_IO_HTTP_RETRY;
            }
            if (exception instanceof SSLHandshakeException) {
                return DownloadException.EXCEPTION_IO_SSL_HANDSHAKE;
            }
            if (exception instanceof SSLKeyException) {
                return 511;
            }
            if (exception instanceof SSLPeerUnverifiedException) {
                return 512;
            }
            if (exception instanceof SSLProtocolException) {
                return 513;
            }
            return i11;
        }

        public final boolean c(int i11) {
            switch (i11) {
                case 501:
                case 502:
                case 503:
                case 504:
                case 505:
                case 506:
                case 507:
                    return true;
                default:
                    return false;
            }
        }
    }

    public DownloadException(int i11) {
        this.formatMessage = "";
        this.range = "";
        this.code = i11;
    }

    public DownloadException(int i11, String str) {
        super(str);
        this.formatMessage = "";
        this.range = "";
        this.code = i11;
    }

    public DownloadException(int i11, String str, Throwable th2) {
        super(str, th2);
        this.formatMessage = "";
        this.range = "";
        this.code = i11;
    }

    public DownloadException(int i11, Throwable th2) {
        super(th2);
        this.formatMessage = "";
        this.range = "";
        this.code = i11;
    }

    public final int getCode() {
        return this.code;
    }

    public final String getFormatMessage() {
        return this.formatMessage;
    }

    public final String getRange() {
        return this.range;
    }

    public final int getResponseCode() {
        return this.responseCode;
    }

    public final void setCode(int i11) {
        this.code = i11;
    }

    public final void setFormatMessage(String str) {
        Intrinsics.h(str, "<set-?>");
        this.formatMessage = str;
    }

    public final void setRange(String str) {
        Intrinsics.h(str, "<set-?>");
        this.range = str;
    }

    public final void setResponseCode(int i11) {
        this.responseCode = i11;
    }
}
