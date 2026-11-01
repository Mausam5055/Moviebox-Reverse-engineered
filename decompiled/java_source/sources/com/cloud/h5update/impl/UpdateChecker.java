package com.cloud.h5update.impl;

import android.text.TextUtils;
import com.cloud.h5update.utils.ExecutorUtils;
import com.cloud.h5update.utils.l;
import com.tmc.network.HttpRequestor;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gg.b;
import java.io.IOException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import okhttp3.ResponseBody;
import t6.a;
import t6.c;

/* JADX INFO: loaded from: classes3.dex */
public final class UpdateChecker implements a {

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\"\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0016R\"\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0016R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/cloud/h5update/impl/UpdateChecker$RequestRunnable;", "Ljava/lang/Runnable;", "Lcom/cloud/h5update/impl/UpdateChecker;", "updateChecker", "", "url", "", "headers", "params", "Lt6/c;", "updateManager", "<init>", "(Lcom/cloud/h5update/impl/UpdateChecker;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lt6/c;)V", "", "run", "()V", "Lcom/cloud/h5update/impl/UpdateChecker;", "getUpdateChecker", "()Lcom/cloud/h5update/impl/UpdateChecker;", "Ljava/lang/String;", "getUrl", "()Ljava/lang/String;", "Ljava/util/Map;", "Lt6/c;", "getUpdateManager", "()Lt6/c;", "apph5update_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class RequestRunnable implements Runnable {
        private final Map<String, String> headers;
        private final Map<String, String> params;
        private final UpdateChecker updateChecker;
        private final c updateManager;
        private final String url;

        public static final class a implements Callback {
            a() {
            }

            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException e11) {
                Intrinsics.h(call, "call");
                Intrinsics.h(e11, "e");
                RequestRunnable.this.getUpdateChecker().a(RequestRunnable.this.getUrl(), RequestRunnable.this.getUpdateManager());
                b.f63567a.e(e11);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) {
                Intrinsics.h(call, "call");
                Intrinsics.h(response, "response");
                try {
                    if (response.body() == null) {
                        return;
                    }
                    ResponseBody responseBodyBody = response.body();
                    Intrinsics.e(responseBodyBody);
                    String result = responseBodyBody.string();
                    UpdateChecker updateChecker = RequestRunnable.this.getUpdateChecker();
                    Intrinsics.g(result, "result");
                    updateChecker.b(result, RequestRunnable.this.getUpdateManager());
                } catch (Exception e11) {
                    b.f63567a.e(e11);
                }
            }
        }

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
                    companion.get(this.url, this.headers, this.params, new a());
                }
            } catch (Exception e11) {
                b.f63567a.e(e11);
            }
        }
    }

    public void a(String url, c updateManager) {
        Intrinsics.h(url, "url");
        Intrinsics.h(updateManager, "updateManager");
    }

    public void b(String result, c updateManager) {
        Intrinsics.h(result, "result");
        Intrinsics.h(updateManager, "updateManager");
        if (TextUtils.isEmpty(result)) {
            return;
        }
        c(result, updateManager);
    }

    public void c(String result, c updateManager) {
        Intrinsics.h(result, "result");
        Intrinsics.h(updateManager, "updateManager");
        try {
            l.f21309a.p(updateManager.a(result));
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // t6.a
    public void checkVersion(String url, Map map, Map map2, c updateManager) {
        Intrinsics.h(url, "url");
        Intrinsics.h(updateManager, "updateManager");
        try {
            ExecutorUtils.g().execute(new RequestRunnable(this, url, map, map2, updateManager));
        } catch (Exception e11) {
            b.f63567a.e(e11);
        }
    }

    @Override // t6.a
    public void noNetWork(String url, c updateManager) {
        Intrinsics.h(url, "url");
        Intrinsics.h(updateManager, "updateManager");
    }
}
