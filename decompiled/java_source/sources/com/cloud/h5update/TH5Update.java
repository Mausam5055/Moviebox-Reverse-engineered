package com.cloud.h5update;

import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import com.cloud.h5update.bean.PreloadResource;
import com.cloud.h5update.bean.UpdateEntity;
import com.cloud.h5update.download.DownloadManager;
import com.cloud.h5update.utils.j;
import com.cloud.h5update.utils.l;
import com.tmc.network.HttpRequestor;
import com.transsion.api.gateway.config.WorkMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class TH5Update {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f21239d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f21241f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile boolean f21242g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f21243h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static String f21245j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static t6.b f21246k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Application f21248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f21249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f21238c = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f21240e = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static ConcurrentHashMap f21244i = new ConcurrentHashMap();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Lazy f21247l = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<TH5Update>() { // from class: com.cloud.h5update.TH5Update$Companion$get$2
        @Override // kotlin.jvm.functions.Function0
        public final TH5Update invoke() {
            return new TH5Update(null);
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void m(a aVar, String str, String str2, int i11, int i12, Object obj) {
            if ((i12 & 2) != 0) {
                str2 = "";
            }
            if ((i12 & 4) != 0) {
                i11 = 0;
            }
            aVar.l(str, str2, i11);
        }

        public final void a() {
            List<PreloadResource> preloadResource;
            b.C0292b c0292b = b.f21252g;
            if (c0292b.a() == null) {
                return;
            }
            UpdateEntity updateEntityA = c0292b.a();
            if (updateEntityA != null && (preloadResource = updateEntityA.getPreloadResource()) != null) {
                Iterator<T> it = preloadResource.iterator();
                while (it.hasNext()) {
                    if (!TH5Update.f21238c.i().contains(((PreloadResource) it.next()).getStaticZipUrl())) {
                        return;
                    }
                }
            }
            j jVar = j.f21304a;
            UpdateEntity updateEntityA2 = b.f21252g.a();
            Long version = updateEntityA2 != null ? updateEntityA2.getVersion() : null;
            Intrinsics.e(version);
            jVar.g("last_update_version", version.longValue());
        }

        public final void b(UpdateEntity updateEntity) {
            Intrinsics.h(updateEntity, "updateEntity");
            j jVar = j.f21304a;
            long jC = jVar.c("last_update_version", 0L);
            Long version = updateEntity.getVersion();
            if (version != null && jC == version.longValue()) {
                jVar.i("last_update_version");
            }
            List<PreloadResource> preloadResource = updateEntity.getPreloadResource();
            if (preloadResource != null) {
                for (PreloadResource preloadResource2 : preloadResource) {
                    TypeIntrinsics.d(TH5Update.f21238c.i()).remove(preloadResource2.getStaticZipUrl());
                    j.f21304a.i("last_update_url_version" + preloadResource2.getStaticZipUrl());
                }
            }
        }

        public final Context c() {
            return d().l();
        }

        public final TH5Update d() {
            return (TH5Update) TH5Update.f21247l.getValue();
        }

        public final String e() {
            return TH5Update.f21239d;
        }

        public final String f() {
            return TH5Update.f21245j;
        }

        public final boolean g() {
            return TH5Update.f21243h;
        }

        public final boolean h() {
            return TH5Update.f21242g;
        }

        public final ConcurrentHashMap i() {
            return TH5Update.f21244i;
        }

        public final t6.b j() {
            return TH5Update.f21246k;
        }

        public final b.a k(Context context) {
            Intrinsics.h(context, "context");
            return new b.a(context);
        }

        public final void l(String appName, String versionName, int i11) {
            Intrinsics.h(appName, "appName");
            Intrinsics.h(versionName, "versionName");
            n(appName);
            HttpRequestor companion = HttpRequestor.INSTANCE.getInstance();
            if (companion != null) {
                String strE = e();
                Intrinsics.e(strE);
                companion.setAppInfo(strE, versionName, i11);
            }
        }

        public final void n(String str) {
            TH5Update.f21239d = str;
        }

        public final void o(String str) {
            TH5Update.f21245j = str;
        }

        public final void p(boolean z10) {
            TH5Update.f21242g = z10;
        }

        public final void q(t6.b bVar) {
            TH5Update.f21246k = bVar;
        }

        public final void r(t6.b bVar) {
            q(bVar);
        }
    }

    private TH5Update() {
        this.f21249b = 1;
    }

    public /* synthetic */ TH5Update(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final String m(Resources resources) {
        try {
            Locale locale = Build.VERSION.SDK_INT >= 24 ? resources.getConfiguration().getLocales().get(0) : resources.getConfiguration().locale;
            Intrinsics.e(locale);
            String language = locale.getLanguage();
            Intrinsics.g(language, "{\n            val locale…cale!!.language\n        }");
            return language;
        } catch (Exception e11) {
            gg.b.f63567a.e(e11);
            return "";
        }
    }

    private final TH5Update p(String str) {
        if (this.f21248a == null) {
            return this;
        }
        try {
            HttpRequestor.Companion companion = HttpRequestor.INSTANCE;
            HttpRequestor companion2 = companion.getInstance();
            if (companion2 != null) {
                HttpRequestor.init$default(companion2, this.f21248a, str, this.f21249b == 3 ? WorkMode.MODE_TEST : WorkMode.MODE_ONLINE, null, 8, null);
            }
            HttpRequestor companion3 = companion.getInstance();
            if (companion3 != null) {
                Application application = this.f21248a;
                Intrinsics.e(application);
                Resources resources = application.getResources();
                Intrinsics.g(resources, "mApplication!!.resources");
                companion3.setLanguage(m(resources));
            }
            if (TextUtils.isEmpty(f21239d)) {
                Application application2 = this.f21248a;
                f21239d = application2 != null ? application2.getPackageName() : null;
            }
            HttpRequestor companion4 = companion.getInstance();
            if (companion4 != null) {
                String str2 = f21239d;
                Intrinsics.e(str2);
                companion4.setAppInfo(str2, f21240e, f21241f);
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add("api.sunnbird.com");
            arrayList.add("api.test.sunnbird.com");
            arrayList.add("api.pre.sunnbird.com");
            ArrayList arrayList2 = new ArrayList();
            HttpRequestor companion5 = companion.getInstance();
            if (companion5 != null) {
                companion5.setGateWayActivateSignConfig(arrayList, TypeIntrinsics.c(arrayList2));
            }
            gg.b.f63567a.h(this.f21249b == 3);
        } catch (Exception e11) {
            gg.b.f63567a.e(e11);
        }
        return this;
    }

    static /* synthetic */ TH5Update q(TH5Update tH5Update, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "Lp84tK50u1uwuN3zNQ";
        }
        return tH5Update.p(str);
    }

    private final void s() {
        if (this.f21248a == null) {
            throw new ExceptionInInitializerError("请先在全局Application中调用 TUpdate.get().init() 初始化！");
        }
    }

    public final Application l() {
        s();
        Application application = this.f21248a;
        Intrinsics.e(application);
        return application;
    }

    public final void n(Application application, boolean z10, String str, String str2, boolean z11, String versionName, int i11) {
        Intrinsics.h(application, "application");
        Intrinsics.h(versionName, "versionName");
        this.f21248a = application;
        f21239d = str;
        f21240e = versionName;
        f21241f = i11;
        f21243h = z11;
        j jVar = j.f21304a;
        Context applicationContext = application.getApplicationContext();
        Intrinsics.g(applicationContext, "application.applicationContext");
        jVar.f(applicationContext);
        DownloadManager.k(DownloadManager.f21268g.a(), application, 0, 2, null);
        if (z10) {
            q(this, null, 1, null);
        }
        if (str2 == null) {
            str2 = l.f21309a.f();
        }
        f21245j = str2;
    }

    public final TH5Update r(int i11) {
        this.f21249b = i11;
        com.cloud.h5update.a.f21250a.b(i11);
        return this;
    }
}
