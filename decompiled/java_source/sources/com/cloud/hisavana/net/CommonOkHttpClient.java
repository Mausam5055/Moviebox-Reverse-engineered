package com.cloud.hisavana.net;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import bi.g;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.net.impl.IHttpCallback;
import com.cloud.hisavana.net.ssl.HttpsTrustManager;
import com.cloud.hisavana.net.utils.ByteBufferUtil;
import com.cloud.sdk.commonutil.util.c;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.File;
import java.io.IOException;
import java.net.ConnectException;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Dispatcher;
import okhttp3.EventListener;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.chromium.net.NetworkException;
import org.chromium.net.QuicException;

/* JADX INFO: loaded from: classes.dex */
public class CommonOkHttpClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f21318a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Dispatcher f21319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static EventListener.Factory f21320c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Exception f21321d = new Exception("http response body is empty");

    private static class GeneralOkHttpClient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final OkHttpClient f21327a = b().build();

        private GeneralOkHttpClient() {
        }

        private static OkHttpClient.Builder b() {
            OkHttpClient.Builder builderEventListenerFactory;
            g gVar = new g(CommonOkHttpClient.f21320c, 0, CommonOkHttpClient.f21318a);
            if (CommonOkHttpClient.f21318a) {
                OkHttpClient.Builder builderHostnameVerifier = new OkHttpClient.Builder().sslSocketFactory(HttpsTrustManager.a(), new HttpsTrustManager()).hostnameVerifier(new HttpsTrustManager.TrustAllHostnameVerifier());
                TimeUnit timeUnit = TimeUnit.SECONDS;
                builderEventListenerFactory = builderHostnameVerifier.connectTimeout(30L, timeUnit).readTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).dispatcher(CommonOkHttpClient.f21319b != null ? CommonOkHttpClient.f21319b : new Dispatcher()).eventListenerFactory(gVar);
            } else {
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                TimeUnit timeUnit2 = TimeUnit.SECONDS;
                builderEventListenerFactory = builder.connectTimeout(30L, timeUnit2).readTimeout(30L, timeUnit2).writeTimeout(30L, timeUnit2).dispatcher(CommonOkHttpClient.f21319b != null ? CommonOkHttpClient.f21319b : new Dispatcher()).eventListenerFactory(gVar);
            }
            c.netLog("getBuilder: isTestRequest = " + CommonOkHttpClient.f21318a);
            return NetGroup.f(builderEventListenerFactory, gVar, NetGroup.e());
        }
    }

    private CommonOkHttpClient() {
        throw new IllegalStateException("Utility class");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String h(RequestParams requestParams, String str, Response response, byte[] bArr) {
        String strD = "";
        try {
            IDiskCache iDiskCacheG = DiskLruCacheUtil.g(requestParams.getCacheMode());
            if (requestParams.getIsUseCache() && iDiskCacheG != null && response.code() < 300) {
                ImageCacheURL imageCacheURL = new ImageCacheURL(str);
                strD = requestParams.getIsDownloadVideo() ? iDiskCacheG.d(imageCacheURL, response) : iDiskCacheG.b(imageCacheURL, bArr);
                if (Log.isLoggable("ADSDK", 3)) {
                    c.netLog("url :" + str + " , write cache finish.  filePath = " + strD);
                }
            }
        } catch (Exception e11) {
            c.netLog("cacheToDisk is failure, " + Log.getStackTraceString(e11));
        }
        return strD;
    }

    public static Call i(RequestParams requestParams, Request request, IHttpCallback iHttpCallback) {
        IDiskCache iDiskCacheG;
        if (Log.isLoggable("ADSDK", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("downLoadImg okhttp------> run Current Looper:");
            sb2.append(Looper.myLooper() == Looper.getMainLooper() ? "Main Looper" : "thread Looper");
            c.netLog(sb2.toString());
        }
        try {
            if (requestParams.getIsUseCache() && (iDiskCacheG = DiskLruCacheUtil.g(requestParams.getCacheMode())) != null) {
                File fileC = iDiskCacheG.c(new ImageCacheURL(request.url().getUrl()));
                if (fileC == null || !fileC.exists() || fileC.length() <= 0) {
                    return p(requestParams, request, iHttpCallback);
                }
                if (Log.isLoggable("ADSDK", 3)) {
                    c.netLog("image url:" + request.url());
                    c.netLog("image path:" + fileC.getPath());
                }
                if (iHttpCallback != null) {
                    if (requestParams.getIsFetchFilePath()) {
                        iHttpCallback.e(250, ByteBufferUtil.c(ByteBufferUtil.a(fileC)), fileC.getPath());
                    } else {
                        iHttpCallback.c(250, ByteBufferUtil.c(ByteBufferUtil.a(fileC)));
                    }
                    return null;
                }
            }
        } catch (IOException e11) {
            c.netLog("downLoadImg: --> " + Log.getStackTraceString(e11));
            if (iHttpCallback != null && 0 != 0) {
                iHttpCallback.d(256, null, e11);
            }
        }
        return p(requestParams, request, iHttpCallback);
    }

    public static Call j(Request request, final IHttpCallback iHttpCallback) {
        try {
            Call callNewCall = l().newCall(request);
            FirebasePerfOkHttpClient.enqueue(callNewCall, new Callback() { // from class: com.cloud.hisavana.net.CommonOkHttpClient.1
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    try {
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 == null) {
                            return;
                        }
                        if (iOException instanceof SocketTimeoutException) {
                            iHttpCallback2.d(481, null, iOException);
                        } else if (iOException instanceof UnknownHostException) {
                            iHttpCallback2.d(484, null, iOException);
                        } else if (iOException instanceof NoRouteToHostException) {
                            iHttpCallback2.d(485, null, iOException);
                        } else if (iOException instanceof ProtocolException) {
                            iHttpCallback2.d(486, null, iOException);
                        } else if (iOException instanceof ConnectException) {
                            iHttpCallback2.d(483, null, iOException);
                        } else if (iOException instanceof QuicException) {
                            iHttpCallback2.d(487, null, iOException);
                        } else if (iOException instanceof NetworkException) {
                            iHttpCallback.d(CommonOkHttpClient.k(((NetworkException) iOException).getErrorCode()), null, iOException);
                        } else {
                            iHttpCallback2.d(480, null, iOException);
                        }
                    } catch (Throwable th2) {
                        IHttpCallback iHttpCallback3 = iHttpCallback;
                        if (iHttpCallback3 != null) {
                            iHttpCallback3.d(480, null, iOException);
                        }
                        CommonOkHttpClient.o(th2);
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) {
                    try {
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 == null) {
                            return;
                        }
                        if (response == null) {
                            iHttpCallback2.d(1027, null, CommonOkHttpClient.f21321d);
                        } else {
                            ResponseBody responseBodyBody = response.body();
                            iHttpCallback.f(response.code(), responseBodyBody == null ? new byte[0] : responseBodyBody.bytes(), response.headers());
                        }
                    } catch (Exception e11) {
                        if (response != null) {
                            iHttpCallback.d(response.code(), null, e11);
                        }
                    }
                }
            });
            return callNewCall;
        } catch (Throwable th2) {
            if (iHttpCallback != null) {
                iHttpCallback.d(480, null, th2);
            }
            o(th2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(int i11) {
        if (i11 == 1) {
            return 1101;
        }
        if (i11 == 2) {
            return 1102;
        }
        if (i11 == 3) {
            return 1103;
        }
        if (i11 == 4) {
            return 1104;
        }
        if (i11 == 5) {
            return 1105;
        }
        if (i11 == 6) {
            return 1106;
        }
        if (i11 == 7) {
            return 1107;
        }
        if (i11 == 8) {
            return 1108;
        }
        if (i11 == 9) {
            return 1109;
        }
        if (i11 == 10) {
            return 1110;
        }
        return i11 == 11 ? 1111 : 480;
    }

    public static OkHttpClient l() {
        return GeneralOkHttpClient.f21327a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean m(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.length() > 0;
    }

    public static Call n(Request request, final IHttpCallback iHttpCallback) {
        if (iHttpCallback != null) {
            iHttpCallback.a();
        }
        try {
            Call callNewCall = l().newCall(request);
            FirebasePerfOkHttpClient.enqueue(callNewCall, new Callback() { // from class: com.cloud.hisavana.net.CommonOkHttpClient.2
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    try {
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 == null) {
                            return;
                        }
                        if (iOException instanceof SocketTimeoutException) {
                            iHttpCallback2.d(481, null, iOException);
                        } else if (iOException instanceof UnknownHostException) {
                            iHttpCallback2.d(484, null, iOException);
                        } else if (iOException instanceof NoRouteToHostException) {
                            iHttpCallback2.d(485, null, iOException);
                        } else if (iOException instanceof ProtocolException) {
                            iHttpCallback2.d(486, null, iOException);
                        } else if (iOException instanceof ConnectException) {
                            iHttpCallback2.d(483, null, iOException);
                        } else if (iOException instanceof QuicException) {
                            iHttpCallback2.d(487, null, iOException);
                        } else if (iOException instanceof NetworkException) {
                            iHttpCallback.d(CommonOkHttpClient.k(((NetworkException) iOException).getErrorCode()), null, iOException);
                        } else {
                            iHttpCallback2.d(480, null, iOException);
                        }
                    } catch (Throwable th2) {
                        IHttpCallback iHttpCallback3 = iHttpCallback;
                        if (iHttpCallback3 != null) {
                            iHttpCallback3.d(480, null, iOException);
                        }
                        CommonOkHttpClient.o(th2);
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) {
                    try {
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 == null) {
                            return;
                        }
                        if (response == null) {
                            iHttpCallback2.d(1027, null, CommonOkHttpClient.f21321d);
                        } else {
                            ResponseBody responseBodyBody = response.body();
                            iHttpCallback.f(response.code(), responseBodyBody == null ? new byte[0] : responseBodyBody.bytes(), response.headers());
                        }
                    } catch (Exception e11) {
                        if (response != null) {
                            iHttpCallback.d(response.code(), null, e11);
                        }
                    }
                }
            });
            return callNewCall;
        } catch (Throwable th2) {
            if (iHttpCallback != null) {
                iHttpCallback.d(480, null, th2);
            }
            o(th2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o(Throwable th2) {
        if (!Log.isLoggable("ADSDK", 3) || th2 == null) {
            return;
        }
        c.netLog("onFailure:  " + Log.getStackTraceString(th2));
    }

    private static Call p(final RequestParams requestParams, final Request request, final IHttpCallback iHttpCallback) {
        try {
            Call callNewCall = l().newCall(request);
            FirebasePerfOkHttpClient.enqueue(callNewCall, new Callback() { // from class: com.cloud.hisavana.net.CommonOkHttpClient.3
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    try {
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 == null) {
                            return;
                        }
                        if (iOException instanceof SocketTimeoutException) {
                            iHttpCallback2.d(481, null, iOException);
                        } else if (iOException instanceof UnknownHostException) {
                            iHttpCallback2.d(484, null, iOException);
                        } else if (iOException instanceof NoRouteToHostException) {
                            iHttpCallback2.d(485, null, iOException);
                        } else if (iOException instanceof ProtocolException) {
                            iHttpCallback2.d(486, null, iOException);
                        } else if (iOException instanceof ConnectException) {
                            iHttpCallback2.d(483, null, iOException);
                        } else if (iOException instanceof QuicException) {
                            iHttpCallback2.d(487, null, iOException);
                        } else if (iOException instanceof NetworkException) {
                            iHttpCallback.d(CommonOkHttpClient.k(((NetworkException) iOException).getErrorCode()), null, iOException);
                        } else {
                            iHttpCallback2.d(480, null, iOException);
                        }
                    } catch (Throwable th2) {
                        IHttpCallback iHttpCallback3 = iHttpCallback;
                        if (iHttpCallback3 != null) {
                            iHttpCallback3.d(480, null, iOException);
                        }
                        CommonOkHttpClient.o(th2);
                    }
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) {
                    try {
                        if (iHttpCallback == null) {
                            return;
                        }
                        if (response == null || !response.isSuccessful()) {
                            iHttpCallback.d(1027, null, CommonOkHttpClient.f21321d);
                        } else {
                            byte[] bArrBytes = requestParams.getIsDownloadVideo() ? new byte[0] : response.body().bytes();
                            if (!requestParams.getIsFetchFilePath()) {
                                iHttpCallback.f(response.code(), bArrBytes, response.headers());
                            }
                            String strH = CommonOkHttpClient.h(requestParams, request.url().getUrl(), response, bArrBytes);
                            if (Log.isLoggable("ADSDK", 3)) {
                                c.netLog("real download on response, code = " + response.code() + ", adId = " + requestParams.getAdCreativeId() + ", \nurl = " + request.url() + " , \nfilePath = " + strH);
                            }
                            if (requestParams.getIsFetchFilePath()) {
                                if (CommonOkHttpClient.m(strH)) {
                                    iHttpCallback.e(response.code(), bArrBytes, strH);
                                } else {
                                    iHttpCallback.d(1026, null, new Exception("fail to cache file to disk"));
                                }
                            }
                        }
                        IHttpCallback iHttpCallback2 = iHttpCallback;
                        if (iHttpCallback2 != null) {
                            iHttpCallback2.b();
                        }
                    } catch (Exception e11) {
                        IHttpCallback iHttpCallback3 = iHttpCallback;
                        if (iHttpCallback3 != null && response != null) {
                            iHttpCallback3.d(response.code(), null, e11);
                        }
                    }
                }
            });
            return callNewCall;
        } catch (Throwable th2) {
            if (iHttpCallback != null) {
                iHttpCallback.d(480, null, th2);
            }
            o(th2);
            return null;
        }
    }

    public static void q(Dispatcher dispatcher, EventListener.Factory factory) {
        f21319b = dispatcher;
        f21320c = factory;
    }

    public static void r(Dispatcher dispatcher) {
        q(dispatcher, null);
    }
}
