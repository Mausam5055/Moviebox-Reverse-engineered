package com.cloud.tmc.offline.download.th5update;

import android.text.TextUtils;
import com.cloud.h5update.TH5Update;
import com.cloud.h5update.utils.ExecutorUtils;
import com.cloud.h5update.utils.l;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.offline.download.callback.LoadConfigCallback;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.tmc.network.HttpRequestor;
import com.transsion.baselib.db.download.DownloadException;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gg.b;
import java.io.IOException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import okhttp3.ResponseBody;
import t6.a;
import t6.c;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\r\b\u0000\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u001dB\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J+\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\n\u0010\f\u001a\u00060\nj\u0002`\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ+\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\n\u0010\f\u001a\u00060\nj\u0002`\u000bH\u0002¢\u0006\u0004\b\u0010\u0010\u000fJK\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00112\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00112\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000e\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0019\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001a\u0010\u0018R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;", "Lt6/a;", "Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;", "callback", "<init>", "(Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;)V", "", "url", "Lt6/c;", "updateManager", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exception", "", "onCheckError", "(Ljava/lang/String;Lt6/c;Ljava/lang/Exception;)V", "onNoNetWork", "", "headers", "params", OfflineConstantsKt.OFFLINE_CONFIG_CHECK_VERSION_ENABLE, "(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lt6/c;)V", "result", "onCheckSuccess", "(Ljava/lang/String;Lt6/c;)V", DownloadException.EXCEPTION_MESSAGE_NO_NET, "processCheckResult", "Lcom/cloud/tmc/offline/download/callback/LoadConfigCallback;", "Companion", "RequestRunnable", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UpdateChecker implements a {
    private static final String TAG = "TmcOfflineDownload: UpdateChecker";
    private final LoadConfigCallback callback;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\"\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0016R\"\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0016R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/cloud/tmc/offline/download/th5update/UpdateChecker$RequestRunnable;", "Ljava/lang/Runnable;", "Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;", "updateChecker", "", "url", "", "headers", "params", "Lt6/c;", "updateManager", "<init>", "(Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lt6/c;)V", "", "run", "()V", "Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;", "getUpdateChecker", "()Lcom/cloud/tmc/offline/download/th5update/UpdateChecker;", "Ljava/lang/String;", "getUrl", "()Ljava/lang/String;", "Ljava/util/Map;", "Lt6/c;", "getUpdateManager", "()Lt6/c;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class RequestRunnable implements Runnable {
        private final Map<String, String> headers;
        private final Map<String, String> params;
        private final UpdateChecker updateChecker;
        private final c updateManager;
        private final String url;

        public RequestRunnable(UpdateChecker updateChecker, String url, Map<String, String> map, Map<String, String> map2, c updateManager) {
            Intrinsics.h(updateChecker, "updateChecker");
            Intrinsics.h(url, "url");
            Intrinsics.h(updateManager, "updateManager");
            this.updateChecker = updateChecker;
            this.url = url;
            this.headers = map;
            this.params = map2;
            this.updateManager = updateManager;
        }

        public /* synthetic */ RequestRunnable(UpdateChecker updateChecker, String str, Map map, Map map2, c cVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(updateChecker, str, map, (i11 & 8) != 0 ? null : map2, cVar);
        }

        public final UpdateChecker getUpdateChecker() {
            return this.updateChecker;
        }

        public final c getUpdateManager() {
            return this.updateManager;
        }

        public final String getUrl() {
            return this.url;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                HttpRequestor companion = HttpRequestor.INSTANCE.getInstance();
                if (companion != null) {
                    companion.get(this.url, this.headers, this.params, new Callback() { // from class: com.cloud.tmc.offline.download.th5update.UpdateChecker$RequestRunnable$run$1
                        @Override // okhttp3.Callback
                        public void onFailure(Call call, IOException e11) {
                            Intrinsics.h(call, "call");
                            Intrinsics.h(e11, "e");
                            this.this$0.getUpdateChecker().onCheckError(this.this$0.getUrl(), this.this$0.getUpdateManager(), e11);
                            TmcLogger.e("TmcOfflineDownload: UpdateChecker", "LoadConfig onFailure", e11);
                            TH5Update.f21238c.p(false);
                        }

                        @Override // okhttp3.Callback
                        public void onResponse(Call call, Response response) {
                            Intrinsics.h(call, "call");
                            Intrinsics.h(response, "response");
                            try {
                                ResponseBody responseBodyBody = response.body();
                                Unit unit = null;
                                String strString = responseBodyBody != null ? responseBodyBody.string() : null;
                                if (strString != null) {
                                    UpdateChecker.RequestRunnable requestRunnable = this.this$0;
                                    requestRunnable.getUpdateChecker().onCheckSuccess(strString, requestRunnable.getUpdateManager());
                                    unit = Unit.f67061a;
                                }
                                if (unit == null) {
                                    UpdateChecker.RequestRunnable requestRunnable2 = this.this$0;
                                    requestRunnable2.getUpdateChecker().onCheckError(requestRunnable2.getUrl(), requestRunnable2.getUpdateManager(), new NullPointerException("查询数据失败"));
                                }
                            } catch (Exception e11) {
                                TmcLogger.e("TmcOfflineDownload: UpdateChecker", "LoadConfig onResponse", e11);
                                TH5Update.f21238c.p(false);
                            }
                        }
                    });
                }
            } catch (Exception e11) {
                this.updateChecker.onCheckError(this.url, this.updateManager, e11);
                TmcLogger.e(UpdateChecker.TAG, "LoadConfig RequestRunnable", e11);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UpdateChecker() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public UpdateChecker(LoadConfigCallback loadConfigCallback) {
        this.callback = loadConfigCallback;
    }

    public /* synthetic */ UpdateChecker(LoadConfigCallback loadConfigCallback, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : loadConfigCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onCheckError(String url, c updateManager, Exception exception) {
        LoadConfigCallback loadConfigCallback = this.callback;
        if (loadConfigCallback != null) {
            loadConfigCallback.onFailure(url, 112, String.valueOf(exception.getMessage()));
        }
    }

    private final void onNoNetWork(String url, c updateManager, Exception exception) {
        try {
            LoadConfigCallback loadConfigCallback = this.callback;
            if (loadConfigCallback != null) {
                loadConfigCallback.onFailure(url, 107, String.valueOf(exception.getMessage()));
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "LoadConfig RequestRunnable", th2);
        }
    }

    @Override // t6.a
    public void checkVersion(String url, Map<String, String> headers, Map<String, String> params, c updateManager) {
        Intrinsics.h(url, "url");
        Intrinsics.h(updateManager, "updateManager");
        try {
            ExecutorUtils.g().execute(new RequestRunnable(this, url, headers, params, updateManager));
        } catch (Exception e11) {
            b.f63567a.e(e11);
        }
    }

    @Override // t6.a
    public void noNetWork(String url, c updateManager) {
        Intrinsics.h(url, "url");
        Intrinsics.h(updateManager, "updateManager");
        onNoNetWork(url, updateManager, new NullPointerException("网络不可用"));
    }

    public void onCheckError(String url, c updateManager) {
        Intrinsics.h(url, "url");
        Intrinsics.h(updateManager, "updateManager");
        onCheckError(url, updateManager, new NullPointerException("查询失败"));
    }

    public void onCheckSuccess(String result, c updateManager) {
        Intrinsics.h(result, "result");
        Intrinsics.h(updateManager, "updateManager");
        LoadConfigCallback loadConfigCallback = this.callback;
        if ((loadConfigCallback == null || !loadConfigCallback.onSuccess(result)) && !TextUtils.isEmpty(result)) {
            processCheckResult(result, updateManager);
        }
    }

    public void processCheckResult(String result, c updateManager) {
        Intrinsics.h(result, "result");
        Intrinsics.h(updateManager, "updateManager");
        try {
            l.f21309a.p(updateManager.a(result));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
