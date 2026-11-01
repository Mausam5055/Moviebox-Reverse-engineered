package com.vungle.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import com.vungle.ads.internal.bidding.BidTokenEncoder;
import com.vungle.ads.internal.downloader.AssetDownloader;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.task.VungleJobRunner;
import java.util.HashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class ServiceLocator {
    public static final Companion Companion = new Companion(null);

    @SuppressLint({"StaticFieldLeak"})
    private static volatile ServiceLocator INSTANCE;
    private final Map<Class<?>, Object> cache;
    private final Map<Class<?>, a> creators;
    private final Context ctx;

    @Keep
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eJ#\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0010\"\n\b\u0000\u0010\u0011\u0018\u0001*\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0086\bR&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/vungle/ads/ServiceLocator$Companion;", "", "()V", "INSTANCE", "Lcom/vungle/ads/ServiceLocator;", "getINSTANCE$vungle_ads_release$annotations", "getINSTANCE$vungle_ads_release", "()Lcom/vungle/ads/ServiceLocator;", "setINSTANCE$vungle_ads_release", "(Lcom/vungle/ads/ServiceLocator;)V", "deInit", "", "getInstance", "context", "Landroid/content/Context;", "inject", "Lkotlin/Lazy;", "T", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getINSTANCE$vungle_ads_release$annotations() {
        }

        public final synchronized void deInit() {
            setINSTANCE$vungle_ads_release(null);
        }

        public final ServiceLocator getINSTANCE$vungle_ads_release() {
            return ServiceLocator.INSTANCE;
        }

        public final ServiceLocator getInstance(Context context) {
            Intrinsics.h(context, "context");
            ServiceLocator iNSTANCE$vungle_ads_release = getINSTANCE$vungle_ads_release();
            if (iNSTANCE$vungle_ads_release == null) {
                synchronized (this) {
                    Companion companion = ServiceLocator.Companion;
                    ServiceLocator iNSTANCE$vungle_ads_release2 = companion.getINSTANCE$vungle_ads_release();
                    if (iNSTANCE$vungle_ads_release2 == null) {
                        iNSTANCE$vungle_ads_release2 = new ServiceLocator(context, null);
                        companion.setINSTANCE$vungle_ads_release(iNSTANCE$vungle_ads_release2);
                    }
                    iNSTANCE$vungle_ads_release = iNSTANCE$vungle_ads_release2;
                }
            }
            return iNSTANCE$vungle_ads_release;
        }

        public final /* synthetic */ <T> Lazy<T> inject(final Context context) {
            Intrinsics.h(context, "context");
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            Intrinsics.m();
            return LazyKt.a(lazyThreadSafetyMode, new Function0<T>() { // from class: com.vungle.ads.ServiceLocator$Companion$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final T invoke() {
                    ServiceLocator companion = ServiceLocator.Companion.getInstance(context);
                    Intrinsics.n(4, "T");
                    return (T) companion.getService(Object.class);
                }
            });
        }

        public final void setINSTANCE$vungle_ads_release(ServiceLocator serviceLocator) {
            ServiceLocator.INSTANCE = serviceLocator;
        }
    }

    private abstract class a {
        private final boolean isSingleton;

        public a(boolean z10) {
            this.isSingleton = z10;
        }

        public /* synthetic */ a(ServiceLocator serviceLocator, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? true : z10);
        }

        public abstract Object create();

        public final boolean isSingleton() {
            return this.isSingleton;
        }
    }

    public static final class b extends a {
        b() {
            super(ServiceLocator.this, false, 1, null);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public BidTokenEncoder create() {
            return new BidTokenEncoder(ServiceLocator.this.ctx);
        }
    }

    public static final class c extends a {
        c() {
            super(ServiceLocator.this, false, 1, null);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public com.vungle.ads.internal.util.p create() {
            return new com.vungle.ads.internal.util.p(ServiceLocator.this.ctx);
        }
    }

    public static final class d extends a {
        d() {
            super(false);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public Downloader create() {
            return new AssetDownloader(((com.vungle.ads.internal.executor.a) ServiceLocator.this.getOrBuild(com.vungle.ads.internal.executor.a.class)).getDownloaderExecutor(), (com.vungle.ads.internal.util.p) ServiceLocator.this.getOrBuild(com.vungle.ads.internal.util.p.class));
        }
    }

    public static final class e extends a {
        e(ServiceLocator serviceLocator) {
            super(serviceLocator, false, 1, null);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public com.vungle.ads.internal.util.c create() {
            return new com.vungle.ads.internal.util.c();
        }
    }

    public static final class f extends a {
        f() {
            super(ServiceLocator.this, false, 1, null);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public SignalManager create() {
            return new SignalManager(ServiceLocator.this.ctx);
        }
    }

    public static final class g extends a {
        g() {
            super(ServiceLocator.this, false, 1, null);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public com.vungle.ads.internal.network.h create() {
            return new com.vungle.ads.internal.network.h((VungleApiClient) ServiceLocator.this.getOrBuild(VungleApiClient.class), ((com.vungle.ads.internal.executor.a) ServiceLocator.this.getOrBuild(com.vungle.ads.internal.executor.a.class)).getIoExecutor(), ((com.vungle.ads.internal.executor.a) ServiceLocator.this.getOrBuild(com.vungle.ads.internal.executor.a.class)).getJobExecutor(), (com.vungle.ads.internal.util.p) ServiceLocator.this.getOrBuild(com.vungle.ads.internal.util.p.class), (SignalManager) ServiceLocator.this.getOrBuild(SignalManager.class));
        }
    }

    public static final class h extends a {
        h() {
            super(ServiceLocator.this, false, 1, null);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public com.vungle.ads.internal.task.b create() {
            return new com.vungle.ads.internal.task.g(ServiceLocator.this.ctx, (com.vungle.ads.internal.util.p) ServiceLocator.this.getOrBuild(com.vungle.ads.internal.util.p.class));
        }
    }

    public static final class i extends a {
        i() {
            super(ServiceLocator.this, false, 1, null);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public com.vungle.ads.internal.task.d create() {
            return new VungleJobRunner((com.vungle.ads.internal.task.b) ServiceLocator.this.getOrBuild(com.vungle.ads.internal.task.b.class), ((com.vungle.ads.internal.executor.a) ServiceLocator.this.getOrBuild(com.vungle.ads.internal.executor.a.class)).getJobExecutor(), new com.vungle.ads.internal.task.e());
        }
    }

    public static final class j extends a {
        j() {
            super(ServiceLocator.this, false, 1, null);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public VungleApiClient create() {
            return new VungleApiClient(ServiceLocator.this.ctx, (com.vungle.ads.internal.platform.d) ServiceLocator.this.getOrBuild(com.vungle.ads.internal.platform.d.class), (com.vungle.ads.internal.persistence.b) ServiceLocator.this.getOrBuild(com.vungle.ads.internal.persistence.b.class));
        }
    }

    public static final class k extends a {
        k() {
            super(ServiceLocator.this, false, 1, null);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public com.vungle.ads.internal.platform.d create() {
            return new com.vungle.ads.internal.platform.c(ServiceLocator.this.ctx, ((com.vungle.ads.internal.executor.a) ServiceLocator.this.getOrBuild(com.vungle.ads.internal.executor.a.class)).getUaExecutor());
        }
    }

    public static final class l extends a {
        l(ServiceLocator serviceLocator) {
            super(serviceLocator, false, 1, null);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public com.vungle.ads.internal.executor.a create() {
            return new com.vungle.ads.internal.executor.d();
        }
    }

    public static final class m extends a {
        m() {
            super(ServiceLocator.this, false, 1, null);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public com.vungle.ads.internal.omsdk.b create() {
            return new com.vungle.ads.internal.omsdk.b(ServiceLocator.this.ctx);
        }
    }

    public static final class n extends a {
        n(ServiceLocator serviceLocator) {
            super(serviceLocator, false, 1, null);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public com.vungle.ads.internal.omsdk.c.b create() {
            return new com.vungle.ads.internal.omsdk.c.b();
        }
    }

    public static final class o extends a {
        o() {
            super(ServiceLocator.this, false, 1, null);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public com.vungle.ads.internal.persistence.b create() {
            return com.vungle.ads.internal.persistence.b.a.get$default(com.vungle.ads.internal.persistence.b.Companion, ((com.vungle.ads.internal.executor.a) ServiceLocator.this.getOrBuild(com.vungle.ads.internal.executor.a.class)).getIoExecutor(), (com.vungle.ads.internal.util.p) ServiceLocator.this.getOrBuild(com.vungle.ads.internal.util.p.class), null, 4, null);
        }
    }

    public static final class p extends a {
        p(ServiceLocator serviceLocator) {
            super(serviceLocator, false, 1, null);
        }

        @Override // com.vungle.ads.ServiceLocator.a
        public fz.a create() {
            return new fz.b();
        }
    }

    private ServiceLocator(Context context) {
        Context applicationContext = context.getApplicationContext();
        Intrinsics.g(applicationContext, "context.applicationContext");
        this.ctx = applicationContext;
        this.creators = new HashMap();
        this.cache = new HashMap();
        buildCreators();
    }

    public /* synthetic */ ServiceLocator(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    private final void buildCreators() {
        this.creators.put(com.vungle.ads.internal.task.b.class, new h());
        this.creators.put(com.vungle.ads.internal.task.d.class, new i());
        this.creators.put(VungleApiClient.class, new j());
        this.creators.put(com.vungle.ads.internal.platform.d.class, new k());
        this.creators.put(com.vungle.ads.internal.executor.a.class, new l(this));
        this.creators.put(com.vungle.ads.internal.omsdk.b.class, new m());
        this.creators.put(com.vungle.ads.internal.omsdk.c.b.class, new n(this));
        this.creators.put(com.vungle.ads.internal.persistence.b.class, new o());
        this.creators.put(fz.a.class, new p(this));
        this.creators.put(BidTokenEncoder.class, new b());
        this.creators.put(com.vungle.ads.internal.util.p.class, new c());
        this.creators.put(Downloader.class, new d());
        this.creators.put(com.vungle.ads.internal.util.c.class, new e(this));
        this.creators.put(SignalManager.class, new f());
        this.creators.put(com.vungle.ads.internal.network.h.class, new g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> T getOrBuild(Class<T> cls) {
        Class<?> serviceClass = getServiceClass(cls);
        T t11 = (T) this.cache.get(serviceClass);
        if (t11 != null) {
            return t11;
        }
        a aVar = this.creators.get(serviceClass);
        if (aVar == null) {
            throw new IllegalArgumentException("Unknown class");
        }
        T t12 = (T) aVar.create();
        if (aVar.isSingleton()) {
            this.cache.put(serviceClass, t12);
        }
        return t12;
    }

    private final Class<?> getServiceClass(Class<?> cls) {
        for (Class<?> cls2 : this.creators.keySet()) {
            if (cls2.isAssignableFrom(cls)) {
                return cls2;
            }
        }
        throw new IllegalArgumentException("Unknown dependency for " + cls);
    }

    public final <T> void bindService$vungle_ads_release(Class<?> serviceClass, T t11) {
        Intrinsics.h(serviceClass, "serviceClass");
        this.cache.put(serviceClass, t11);
    }

    public final synchronized <T> T getService(Class<T> serviceClass) {
        Intrinsics.h(serviceClass, "serviceClass");
        return (T) getOrBuild(serviceClass);
    }

    public final synchronized <T> boolean isCreated(Class<T> serviceClass) {
        Intrinsics.h(serviceClass, "serviceClass");
        return this.cache.containsKey(getServiceClass(serviceClass));
    }
}
