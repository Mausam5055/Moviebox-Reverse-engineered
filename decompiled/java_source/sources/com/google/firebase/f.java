package com.google.firebase;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import androidx.compose.animation.core.j0;
import androidx.core.os.t;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.concurrent.UiExecutor;
import com.google.firebase.provider.FirebaseInitProvider;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import mb.u;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Object f31843k = new Object();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final Map f31844l = new androidx.collection.a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f31845m = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f31846a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m f31848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final mb.o f31849d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final u f31852g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ic.b f31853h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f31850e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f31851f = new AtomicBoolean();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f31854i = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List f31855j = new CopyOnWriteArrayList();

    public interface a {
        void onBackgroundStateChanged(boolean z10);
    }

    private static class b implements BackgroundDetector.BackgroundStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static AtomicReference f31856a = new AtomicReference();

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (PlatformVersion.isAtLeastIceCreamSandwich() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (f31856a.get() == null) {
                    b bVar = new b();
                    if (j0.a(f31856a, null, bVar)) {
                        BackgroundDetector.initialize(application);
                        BackgroundDetector.getInstance().addListener(bVar);
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public void onBackgroundStateChanged(boolean z10) {
            synchronized (f.f31843k) {
                try {
                    for (f fVar : new ArrayList(f.f31844l.values())) {
                        if (fVar.f31850e.get()) {
                            fVar.y(z10);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private static class c extends BroadcastReceiver {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference f31857b = new AtomicReference();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f31858a;

        public c(Context context) {
            this.f31858a = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (f31857b.get() == null) {
                c cVar = new c(context);
                if (j0.a(f31857b, null, cVar)) {
                    context.registerReceiver(cVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public void c() {
            this.f31858a.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (f.f31843k) {
                try {
                    Iterator it = f.f31844l.values().iterator();
                    while (it.hasNext()) {
                        ((f) it.next()).p();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            c();
        }
    }

    protected f(final Context context, String str, m mVar) {
        this.f31846a = (Context) Preconditions.checkNotNull(context);
        this.f31847b = Preconditions.checkNotEmpty(str);
        this.f31848c = (m) Preconditions.checkNotNull(mVar);
        n nVarB = FirebaseInitProvider.b();
        cd.c.b("Firebase");
        cd.c.b("ComponentDiscovery");
        List listB = mb.g.c(context, ComponentDiscoveryService.class).b();
        cd.c.a();
        cd.c.b("Runtime");
        mb.o.b bVarG = mb.o.m(UiExecutor.INSTANCE).d(listB).c(new FirebaseCommonRegistrar()).c(new ExecutorsRegistrar()).b(mb.c.s(context, Context.class, new Class[0])).b(mb.c.s(this, f.class, new Class[0])).b(mb.c.s(mVar, m.class, new Class[0])).g(new cd.b());
        if (t.a(context) && FirebaseInitProvider.c()) {
            bVarG.b(mb.c.s(nVarB, n.class, new Class[0]));
        }
        mb.o oVarE = bVarG.e();
        this.f31849d = oVarE;
        cd.c.a();
        this.f31852g = new u(new ic.b() { // from class: com.google.firebase.d
            @Override // ic.b
            public final Object get() {
                return this.f31806a.v(context);
            }
        });
        this.f31853h = oVarE.f(com.google.firebase.heartbeatinfo.a.class);
        g(new a() { // from class: com.google.firebase.e
            @Override // com.google.firebase.f.a
            public final void onBackgroundStateChanged(boolean z10) {
                this.f31816a.w(z10);
            }
        });
        cd.c.a();
    }

    private void i() {
        Preconditions.checkState(!this.f31851f.get(), "FirebaseApp was deleted");
    }

    public static f l() {
        f fVar;
        synchronized (f31843k) {
            try {
                fVar = (f) f31844l.get("[DEFAULT]");
                if (fVar == null) {
                    throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + ProcessUtils.getMyProcessName() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
                }
                ((com.google.firebase.heartbeatinfo.a) fVar.f31853h.get()).l();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (!t.a(this.f31846a)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ");
            sb2.append(m());
            c.b(this.f31846a);
            return;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("Device unlocked: initializing all Firebase APIs for app ");
        sb3.append(m());
        this.f31849d.p(u());
        ((com.google.firebase.heartbeatinfo.a) this.f31853h.get()).l();
    }

    public static f q(Context context) {
        synchronized (f31843k) {
            try {
                if (f31844l.containsKey("[DEFAULT]")) {
                    return l();
                }
                m mVarA = m.a(context);
                if (mVarA == null) {
                    Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                    return null;
                }
                return r(context, mVarA);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static f r(Context context, m mVar) {
        return s(context, mVar, "[DEFAULT]");
    }

    public static f s(Context context, m mVar, String str) {
        f fVar;
        b.b(context);
        String strX = x(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f31843k) {
            Map map = f31844l;
            Preconditions.checkState(!map.containsKey(strX), "FirebaseApp name " + strX + " already exists!");
            Preconditions.checkNotNull(context, "Application context cannot be null.");
            fVar = new f(context, strX, mVar);
            map.put(strX, fVar);
        }
        fVar.p();
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ mc.a v(Context context) {
        return new mc.a(context, o(), (fc.c) this.f31849d.a(fc.c.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(boolean z10) {
        if (z10) {
            return;
        }
        ((com.google.firebase.heartbeatinfo.a) this.f31853h.get()).l();
    }

    private static String x(String str) {
        return str.trim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(boolean z10) {
        Iterator it = this.f31854i.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onBackgroundStateChanged(z10);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f31847b.equals(((f) obj).m());
        }
        return false;
    }

    public void g(a aVar) {
        i();
        if (this.f31850e.get() && BackgroundDetector.getInstance().isInBackground()) {
            aVar.onBackgroundStateChanged(true);
        }
        this.f31854i.add(aVar);
    }

    public void h(g gVar) {
        i();
        Preconditions.checkNotNull(gVar);
        this.f31855j.add(gVar);
    }

    public int hashCode() {
        return this.f31847b.hashCode();
    }

    public Object j(Class cls) {
        i();
        return this.f31849d.a(cls);
    }

    public Context k() {
        i();
        return this.f31846a;
    }

    public String m() {
        i();
        return this.f31847b;
    }

    public m n() {
        i();
        return this.f31848c;
    }

    public String o() {
        return Base64Utils.encodeUrlSafeNoPadding(m().getBytes(Charset.defaultCharset())) + "+" + Base64Utils.encodeUrlSafeNoPadding(n().c().getBytes(Charset.defaultCharset()));
    }

    public boolean t() {
        i();
        return ((mc.a) this.f31852g.get()).b();
    }

    public String toString() {
        return Objects.toStringHelper(this).add("name", this.f31847b).add("options", this.f31848c).toString();
    }

    public boolean u() {
        return "[DEFAULT]".equals(m());
    }
}
