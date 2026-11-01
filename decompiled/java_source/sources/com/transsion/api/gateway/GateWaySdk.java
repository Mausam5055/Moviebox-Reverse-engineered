package com.transsion.api.gateway;

import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import com.transsion.api.gateway.config.WorkMode;
import com.transsion.api.gateway.interceptor.GatewayInterceptor;
import com.transsion.api.gateway.utils.ContextUtils;
import com.transsion.api.gateway.utils.GatewayUtils;
import com.transsion.api.gateway.utils.SafeStringUtils;
import com.transsion.api.gateway.utils.ThreadManager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes.dex */
public class GateWaySdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f42470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static OkHttpClient f42471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f42472c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static CopyOnWriteArrayList<String> f42473d = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static CopyOnWriteArrayList<String> f42474e = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static WorkMode f42475f = WorkMode.MODE_ONLINE;

    public static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f42476a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ String f42477b;

        public a(Context context, String str) {
            this.f42476a = context;
            this.f42477b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            SafeStringUtils.getInstance(this.f42476a).saveString(SafeStringUtils.SP_APPID, this.f42477b);
        }
    }

    public static void a(Context context) {
        if (!f42472c && isOkhttpIntegrated()) {
            f42472c = true;
            try {
                context.registerReceiver(new com.transsion.api.gateway.receiver.a(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            } catch (Exception e11) {
                GatewayUtils.L.e("registerReceiver fail, e:" + e11.getMessage());
            }
        }
    }

    public static List<String> getActivateSigHosts() {
        return f42473d;
    }

    public static List<String> getActivateSigPaths() {
        return f42474e;
    }

    public static String getHost() {
        int iOrdinal = f42475f.ordinal();
        return (iOrdinal == 0 || iOrdinal == 1) ? "apigateway.tmctool.com" : "";
    }

    public static boolean getIsInited() {
        return f42470a;
    }

    public static OkHttpClient getOkHttpClient() {
        if (f42471b == null) {
            f42471b = new OkHttpClient().newBuilder().addInterceptor(new GatewayInterceptor()).build();
        }
        return f42471b;
    }

    public static String getSecret() {
        try {
            if (ContextUtils.getContext() == null) {
                return "";
            }
            ApplicationInfo applicationInfo = ContextUtils.getContext().getPackageManager().getApplicationInfo(ContextUtils.getContext().getPackageName(), 128);
            int iOrdinal = f42475f.ordinal();
            if (iOrdinal != 0) {
                return iOrdinal != 1 ? "" : applicationInfo.metaData.getString("gateway_secret_online");
            }
            return applicationInfo.metaData.getString("gateway_secret_test");
        } catch (Exception e11) {
            GatewayUtils.L.e(e11);
            return "";
        }
    }

    public static WorkMode getWorkMode() {
        return f42475f;
    }

    public static void init(Context context, String str) {
        ContextUtils.init(context);
        a(context);
        f42475f = WorkMode.MODE_ONLINE;
        f42470a = true;
    }

    public static void init(Context context, String str, WorkMode workMode) {
        ContextUtils.init(context);
        a(context);
        f42475f = workMode;
        ThreadManager.executeInBackground(new a(context, str));
        ArrayList arrayList = new ArrayList();
        arrayList.add("/gateway/metric/add");
        arrayList.add("/gateway/sdk/v1/config");
        setActivateSignConfig(null, arrayList);
        f42470a = true;
    }

    public static boolean isOkhttpIntegrated() {
        try {
            OkHttpClient.Companion companion = OkHttpClient.INSTANCE;
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static void setActivateSignConfig(List<String> list, List<String> list2) {
        if (list != null && list.size() > 0) {
            f42473d.addAllAbsent(list);
        }
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        f42474e.addAllAbsent(list2);
    }

    public static void setOkHttpClient(OkHttpClient okHttpClient) {
        if (okHttpClient != null) {
            f42471b = okHttpClient;
        }
    }
}
