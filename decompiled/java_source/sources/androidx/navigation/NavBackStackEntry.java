package androidx.navigation;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.l0;
import androidx.p009lifecycle.q0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.w;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class NavBackStackEntry implements u, y0, androidx.p009lifecycle.m, androidx.p010savedstate.e {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f13763n = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f13764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NavDestination f13765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Bundle f13766c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Lifecycle.State f13767d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final p f13768e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f13769f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Bundle f13770g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private w f13771h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.p010savedstate.d f13772i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f13773j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Lazy f13774k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Lazy f13775l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Lifecycle.State f13776m;

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ NavBackStackEntry b(a aVar, Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, p pVar, String str, Bundle bundle2, int i11, Object obj) {
            String str2;
            Bundle bundle3 = (i11 & 4) != 0 ? null : bundle;
            Lifecycle.State state2 = (i11 & 8) != 0 ? Lifecycle.State.CREATED : state;
            p pVar2 = (i11 & 16) != 0 ? null : pVar;
            if ((i11 & 32) != 0) {
                String string = UUID.randomUUID().toString();
                Intrinsics.g(string, "randomUUID().toString()");
                str2 = string;
            } else {
                str2 = str;
            }
            return aVar.a(context, navDestination, bundle3, state2, pVar2, str2, (i11 & 64) != 0 ? null : bundle2);
        }

        public final NavBackStackEntry a(Context context, NavDestination destination, Bundle bundle, Lifecycle.State hostLifecycleState, p pVar, String id2, Bundle bundle2) {
            Intrinsics.h(destination, "destination");
            Intrinsics.h(hostLifecycleState, "hostLifecycleState");
            Intrinsics.h(id2, "id");
            return new NavBackStackEntry(context, destination, bundle, hostLifecycleState, pVar, id2, bundle2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes2.dex */
    static final class b extends androidx.p009lifecycle.a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(androidx.p010savedstate.e owner, Bundle bundle) {
            super(owner, bundle);
            Intrinsics.h(owner, "owner");
        }

        @Override // androidx.p009lifecycle.a
        protected t0 c(String key, Class modelClass, l0 handle) {
            Intrinsics.h(key, "key");
            Intrinsics.h(modelClass, "modelClass");
            Intrinsics.h(handle, "handle");
            return new c(handle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes2.dex */
    static final class c extends t0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final l0 f13777a;

        public c(l0 handle) {
            Intrinsics.h(handle, "handle");
            this.f13777a = handle;
        }

        public final l0 b() {
            return this.f13777a;
        }
    }

    private NavBackStackEntry(Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, p pVar, String str, Bundle bundle2) {
        this.f13764a = context;
        this.f13765b = navDestination;
        this.f13766c = bundle;
        this.f13767d = state;
        this.f13768e = pVar;
        this.f13769f = str;
        this.f13770g = bundle2;
        this.f13771h = new w(this);
        androidx.p010savedstate.d dVarA = androidx.p010savedstate.d.a(this);
        Intrinsics.g(dVarA, "create(this)");
        this.f13772i = dVarA;
        this.f13774k = LazyKt.b(new Function0<q0>() { // from class: androidx.navigation.NavBackStackEntry$defaultFactory$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final q0 invoke() {
                Context context2 = this.this$0.f13764a;
                Context applicationContext = context2 == null ? null : context2.getApplicationContext();
                Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                NavBackStackEntry navBackStackEntry = this.this$0;
                return new q0(application, navBackStackEntry, navBackStackEntry.d());
            }
        });
        this.f13775l = LazyKt.b(new Function0<l0>() { // from class: androidx.navigation.NavBackStackEntry$savedStateHandle$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final l0 invoke() {
                if (!this.this$0.f13773j) {
                    throw new IllegalStateException("You cannot access the NavBackStackEntry's SavedStateHandle until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).");
                }
                if (this.this$0.f13771h.b() == Lifecycle.State.DESTROYED) {
                    throw new IllegalStateException("You cannot access the NavBackStackEntry's SavedStateHandle after the NavBackStackEntry is destroyed.");
                }
                NavBackStackEntry navBackStackEntry = this.this$0;
                return ((NavBackStackEntry.c) new v0(navBackStackEntry, new NavBackStackEntry.b(navBackStackEntry, null)).a(NavBackStackEntry.c.class)).b();
            }
        });
        this.f13776m = Lifecycle.State.INITIALIZED;
    }

    public /* synthetic */ NavBackStackEntry(Context context, NavDestination navDestination, Bundle bundle, Lifecycle.State state, p pVar, String str, Bundle bundle2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, navDestination, bundle, state, pVar, str, bundle2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavBackStackEntry(NavBackStackEntry entry, Bundle bundle) {
        this(entry.f13764a, entry.f13765b, bundle, entry.f13767d, entry.f13768e, entry.f13769f, entry.f13770g);
        Intrinsics.h(entry, "entry");
        this.f13767d = entry.f13767d;
        l(entry.f13776m);
    }

    private final q0 e() {
        return (q0) this.f13774k.getValue();
    }

    public final Bundle d() {
        return this.f13766c;
    }

    public boolean equals(Object obj) {
        Set<String> setKeySet;
        if (obj == null || !(obj instanceof NavBackStackEntry)) {
            return false;
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
        if (!Intrinsics.c(this.f13769f, navBackStackEntry.f13769f) || !Intrinsics.c(this.f13765b, navBackStackEntry.f13765b) || !Intrinsics.c(this.f13771h, navBackStackEntry.f13771h) || !Intrinsics.c(getSavedStateRegistry(), navBackStackEntry.getSavedStateRegistry())) {
            return false;
        }
        if (!Intrinsics.c(this.f13766c, navBackStackEntry.f13766c)) {
            Bundle bundle = this.f13766c;
            if (bundle == null || (setKeySet = bundle.keySet()) == null) {
                return false;
            }
            Set<String> set = setKeySet;
            if (!(set instanceof Collection) || !set.isEmpty()) {
                for (String str : set) {
                    Object obj2 = d().get(str);
                    Bundle bundleD = navBackStackEntry.d();
                    if (!Intrinsics.c(obj2, bundleD == null ? null : bundleD.get(str))) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public final NavDestination f() {
        return this.f13765b;
    }

    public final String g() {
        return this.f13769f;
    }

    @Override // androidx.p009lifecycle.m
    public /* synthetic */ p1.a getDefaultViewModelCreationExtras() {
        return androidx.p009lifecycle.l.a(this);
    }

    @Override // androidx.p009lifecycle.m
    public v0.c getDefaultViewModelProviderFactory() {
        return e();
    }

    @Override // androidx.p009lifecycle.u
    public Lifecycle getLifecycle() {
        return this.f13771h;
    }

    @Override // androidx.p010savedstate.e
    public androidx.p010savedstate.c getSavedStateRegistry() {
        androidx.p010savedstate.c cVarB = this.f13772i.b();
        Intrinsics.g(cVarB, "savedStateRegistryController.savedStateRegistry");
        return cVarB;
    }

    @Override // androidx.p009lifecycle.y0
    public x0 getViewModelStore() {
        if (!this.f13773j) {
            throw new IllegalStateException("You cannot access the NavBackStackEntry's ViewModels until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).");
        }
        if (this.f13771h.b() == Lifecycle.State.DESTROYED) {
            throw new IllegalStateException("You cannot access the NavBackStackEntry's ViewModels after the NavBackStackEntry is destroyed.");
        }
        p pVar = this.f13768e;
        if (pVar != null) {
            return pVar.a(this.f13769f);
        }
        throw new IllegalStateException("You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph.");
    }

    public final Lifecycle.State h() {
        return this.f13776m;
    }

    public int hashCode() {
        Set<String> setKeySet;
        int iHashCode = (this.f13769f.hashCode() * 31) + this.f13765b.hashCode();
        Bundle bundle = this.f13766c;
        if (bundle != null && (setKeySet = bundle.keySet()) != null) {
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                int i11 = iHashCode * 31;
                Object obj = d().get((String) it.next());
                iHashCode = i11 + (obj == null ? 0 : obj.hashCode());
            }
        }
        return (((iHashCode * 31) + this.f13771h.hashCode()) * 31) + getSavedStateRegistry().hashCode();
    }

    public final void i(Lifecycle.Event event) {
        Intrinsics.h(event, "event");
        Lifecycle.State targetState = event.getTargetState();
        Intrinsics.g(targetState, "event.targetState");
        this.f13767d = targetState;
        m();
    }

    public final void j(Bundle outBundle) {
        Intrinsics.h(outBundle, "outBundle");
        this.f13772i.e(outBundle);
    }

    public final void k(NavDestination navDestination) {
        Intrinsics.h(navDestination, "<set-?>");
        this.f13765b = navDestination;
    }

    public final void l(Lifecycle.State maxState) {
        Intrinsics.h(maxState, "maxState");
        this.f13776m = maxState;
        m();
    }

    public final void m() {
        if (!this.f13773j) {
            this.f13772i.d(this.f13770g);
            this.f13773j = true;
        }
        if (this.f13767d.ordinal() < this.f13776m.ordinal()) {
            this.f13771h.n(this.f13767d);
        } else {
            this.f13771h.n(this.f13776m);
        }
    }
}
