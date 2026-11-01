package com.bykv.vk.openvk.preload.geckox;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.net.INetWork;
import com.bykv.vk.openvk.preload.geckox.statistic.IStatisticMonitor;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static IThreadPoolCallback f20597r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static ThreadPoolExecutor f20598s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f20599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.geckox.a.a.c f20600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final IStatisticMonitor f20601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final INetWork f20602d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<String> f20603e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<String> f20604f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.geckox.a.a.a f20605g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Long f20606h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f20607i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f20608j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final String f20609k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f20610l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final String f20611m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final File f20612n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f20613o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f20614p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private JSONObject f20615q;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private INetWork f20616a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<String> f20617b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List<String> f20618c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Context f20619d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private com.bykv.vk.openvk.preload.geckox.a.a.c f20620e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private IStatisticMonitor f20621f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f20622g = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private com.bykv.vk.openvk.preload.geckox.a.a.a f20623h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Long f20624i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f20625j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f20626k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private String f20627l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private File f20628m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private String f20629n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private String f20630o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private long f20631p;

        public a(Context context) {
            this.f20619d = context.getApplicationContext();
        }

        public final a a() {
            this.f20622g = false;
            return this;
        }

        public final a a(long j11) {
            this.f20631p = j11;
            return this;
        }

        public final a a(com.bykv.vk.openvk.preload.geckox.a.a.a aVar) {
            this.f20623h = aVar;
            return this;
        }

        public final a a(INetWork iNetWork) {
            this.f20616a = iNetWork;
            return this;
        }

        public final a a(IStatisticMonitor iStatisticMonitor) {
            this.f20621f = iStatisticMonitor;
            return this;
        }

        public final a a(File file) {
            this.f20628m = file;
            return this;
        }

        public final a a(String str) {
            this.f20625j = str;
            return this;
        }

        public final a a(String... strArr) {
            this.f20618c = Arrays.asList(strArr);
            return this;
        }

        public final a b() {
            this.f20624i = 38L;
            return this;
        }

        public final a b(String str) {
            this.f20626k = str;
            return this;
        }

        public final a b(String... strArr) {
            this.f20617b = Arrays.asList(strArr);
            return this;
        }

        public final a c(String str) {
            this.f20627l = str;
            return this;
        }
    }

    private b(a aVar) {
        Context context = aVar.f20619d;
        this.f20599a = context;
        if (context == null) {
            throw new IllegalArgumentException("context == null");
        }
        List<String> list = aVar.f20617b;
        this.f20603e = list;
        this.f20604f = aVar.f20618c;
        this.f20600b = aVar.f20620e;
        this.f20605g = aVar.f20623h;
        Long l11 = aVar.f20624i;
        this.f20606h = l11;
        if (TextUtils.isEmpty(aVar.f20625j)) {
            this.f20607i = com.bykv.vk.openvk.preload.geckox.utils.a.a(context);
        } else {
            this.f20607i = aVar.f20625j;
        }
        String str = aVar.f20626k;
        this.f20608j = str;
        this.f20610l = aVar.f20629n;
        this.f20611m = aVar.f20630o;
        this.f20614p = aVar.f20631p;
        if (aVar.f20628m == null) {
            this.f20612n = new File(context.getFilesDir(), "gecko_offline_res_x");
        } else {
            this.f20612n = aVar.f20628m;
        }
        String str2 = aVar.f20627l;
        this.f20609k = str2;
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("host == null");
        }
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException("access key empty");
        }
        if (l11 == null) {
            throw new IllegalArgumentException("appId == null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("deviceId key empty");
        }
        this.f20602d = aVar.f20616a;
        this.f20601c = aVar.f20621f;
        this.f20613o = aVar.f20622g;
    }

    /* synthetic */ b(a aVar, byte b11) {
        this(aVar);
    }

    public static void a(IThreadPoolCallback iThreadPoolCallback) {
        f20597r = iThreadPoolCallback;
    }

    public static Executor g() {
        return t();
    }

    public static Executor h() {
        return t();
    }

    public static ExecutorService t() {
        IThreadPoolCallback iThreadPoolCallback = f20597r;
        ExecutorService threadPool = iThreadPoolCallback != null ? iThreadPoolCallback.getThreadPool() : null;
        if (threadPool != null) {
            return threadPool;
        }
        if (f20598s == null) {
            synchronized (b.class) {
                try {
                    if (f20598s == null) {
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 2, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue());
                        f20598s = threadPoolExecutor;
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f20598s;
    }

    public final Context a() {
        return this.f20599a;
    }

    public final void a(JSONObject jSONObject) {
        this.f20615q = jSONObject;
    }

    public final com.bykv.vk.openvk.preload.geckox.a.a.a b() {
        return this.f20605g;
    }

    public final boolean c() {
        return this.f20613o;
    }

    public final List<String> d() {
        return this.f20604f;
    }

    public final List<String> e() {
        return this.f20603e;
    }

    public final JSONObject f() {
        return this.f20615q;
    }

    public final INetWork i() {
        return this.f20602d;
    }

    public final String j() {
        return this.f20609k;
    }

    public final long k() {
        return this.f20606h.longValue();
    }

    public final String l() {
        return this.f20611m;
    }

    public final String m() {
        return this.f20610l;
    }

    public final File n() {
        return this.f20612n;
    }

    public final String o() {
        return this.f20607i;
    }

    public final com.bykv.vk.openvk.preload.geckox.a.a.c p() {
        return this.f20600b;
    }

    public final IStatisticMonitor q() {
        return this.f20601c;
    }

    public final String r() {
        return this.f20608j;
    }

    public final long s() {
        return this.f20614p;
    }
}
