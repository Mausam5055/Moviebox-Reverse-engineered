package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.app.b0;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.t;
import androidx.p009lifecycle.u;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.d1;
import kotlinx.coroutines.flow.i1;
import kotlinx.coroutines.flow.j1;
import kotlinx.coroutines.flow.x0;
import kotlinx.coroutines.flow.y0;

/* JADX INFO: loaded from: classes.dex */
public abstract class NavController {
    public static final a G = new a(null);
    private static boolean H = true;
    private final Map A;
    private int B;
    private final List C;
    private final Lazy D;
    private final x0 E;
    private final kotlinx.coroutines.flow.b F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f13779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Activity f13780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private k f13781c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private NavGraph f13782d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Bundle f13783e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Parcelable[] f13784f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f13785g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ArrayDeque f13786h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final y0 f13787i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final i1 f13788j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Map f13789k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Map f13790l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Map f13791m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Map f13792n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private u f13793o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private OnBackPressedDispatcher f13794p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private f f13795q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final CopyOnWriteArrayList f13796r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Lifecycle.State f13797s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final t f13798t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final androidx.activity.u f13799u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f13800v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private q f13801w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Map f13802x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Function1 f13803y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Function1 f13804z;

    /* JADX INFO: Access modifiers changed from: private */
    final class NavControllerNavigatorState extends r {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Navigator f13805g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ NavController f13806h;

        public NavControllerNavigatorState(NavController this$0, Navigator navigator) {
            Intrinsics.h(this$0, "this$0");
            Intrinsics.h(navigator, "navigator");
            this.f13806h = this$0;
            this.f13805g = navigator;
        }

        @Override // androidx.navigation.r
        public NavBackStackEntry a(NavDestination destination, Bundle bundle) {
            Intrinsics.h(destination, "destination");
            return NavBackStackEntry.a.b(NavBackStackEntry.f13763n, this.f13806h.y(), destination, bundle, this.f13806h.D(), this.f13806h.f13795q, null, null, 96, null);
        }

        @Override // androidx.navigation.r
        public void e(NavBackStackEntry entry) {
            f fVar;
            Intrinsics.h(entry, "entry");
            boolean zC = Intrinsics.c(this.f13806h.A.get(entry), Boolean.TRUE);
            super.e(entry);
            this.f13806h.A.remove(entry);
            if (this.f13806h.v().contains(entry)) {
                if (d()) {
                    return;
                }
                this.f13806h.h0();
                this.f13806h.f13787i.b(this.f13806h.W());
                return;
            }
            this.f13806h.g0(entry);
            if (entry.getLifecycle().b().isAtLeast(Lifecycle.State.CREATED)) {
                entry.l(Lifecycle.State.DESTROYED);
            }
            ArrayDeque arrayDequeV = this.f13806h.v();
            if (!(arrayDequeV instanceof Collection) || !arrayDequeV.isEmpty()) {
                Iterator<E> it = arrayDequeV.iterator();
                while (it.hasNext()) {
                    if (Intrinsics.c(((NavBackStackEntry) it.next()).g(), entry.g())) {
                    }
                }
                if (!zC && (fVar = this.f13806h.f13795q) != null) {
                    fVar.c(entry.g());
                }
            } else if (!zC) {
                fVar.c(entry.g());
            }
            this.f13806h.h0();
            this.f13806h.f13787i.b(this.f13806h.W());
        }

        @Override // androidx.navigation.r
        public void g(final NavBackStackEntry popUpTo, final boolean z10) {
            Intrinsics.h(popUpTo, "popUpTo");
            Navigator navigatorD = this.f13806h.f13801w.d(popUpTo.f().o());
            if (!Intrinsics.c(navigatorD, this.f13805g)) {
                Object obj = this.f13806h.f13802x.get(navigatorD);
                Intrinsics.e(obj);
                ((NavControllerNavigatorState) obj).g(popUpTo, z10);
            } else {
                Function1 function1 = this.f13806h.f13804z;
                if (function1 == null) {
                    this.f13806h.Q(popUpTo, new Function0<Unit>() { // from class: androidx.navigation.NavController$NavControllerNavigatorState$pop$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Object invoke() {
                            m194invoke();
                            return Unit.f67061a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                        public final void m194invoke() {
                            super/*androidx.navigation.r*/.g(popUpTo, z10);
                        }
                    });
                } else {
                    function1.invoke(popUpTo);
                    super.g(popUpTo, z10);
                }
            }
        }

        @Override // androidx.navigation.r
        public void h(NavBackStackEntry backStackEntry) {
            Intrinsics.h(backStackEntry, "backStackEntry");
            Navigator navigatorD = this.f13806h.f13801w.d(backStackEntry.f().o());
            if (!Intrinsics.c(navigatorD, this.f13805g)) {
                Object obj = this.f13806h.f13802x.get(navigatorD);
                if (obj != null) {
                    ((NavControllerNavigatorState) obj).h(backStackEntry);
                    return;
                }
                throw new IllegalStateException(("NavigatorBackStack for " + backStackEntry.f().o() + " should already be created").toString());
            }
            Function1 function1 = this.f13806h.f13803y;
            if (function1 != null) {
                function1.invoke(backStackEntry);
                k(backStackEntry);
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Ignoring add of destination ");
                sb2.append(backStackEntry.f());
                sb2.append(" outside of the call to navigate(). ");
            }
        }

        public final void k(NavBackStackEntry backStackEntry) {
            Intrinsics.h(backStackEntry, "backStackEntry");
            super.h(backStackEntry);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class b extends androidx.activity.u {
        b() {
            super(false);
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
            NavController.this.N();
        }
    }

    public NavController(Context context) {
        Intrinsics.h(context, "context");
        this.f13779a = context;
        for (Object obj : SequencesKt.h(context, new Function1<Context, Context>() { // from class: androidx.navigation.NavController$activity$1
            @Override // kotlin.jvm.functions.Function1
            public final Context invoke(Context it) {
                Intrinsics.h(it, "it");
                if (it instanceof ContextWrapper) {
                    return ((ContextWrapper) it).getBaseContext();
                }
                return null;
            }
        })) {
            if (((Context) obj) instanceof Activity) {
                this.f13780b = (Activity) obj;
                this.f13786h = new ArrayDeque();
                y0 y0VarA = j1.a(CollectionsKt.l());
                this.f13787i = y0VarA;
                this.f13788j = kotlinx.coroutines.flow.d.b(y0VarA);
                this.f13789k = new LinkedHashMap();
                this.f13790l = new LinkedHashMap();
                this.f13791m = new LinkedHashMap();
                this.f13792n = new LinkedHashMap();
                this.f13796r = new CopyOnWriteArrayList();
                this.f13797s = Lifecycle.State.INITIALIZED;
                this.f13798t = new androidx.p009lifecycle.r() { // from class: androidx.navigation.e
                    @Override // androidx.p009lifecycle.r
                    public final void onStateChanged(u uVar, Lifecycle.Event event) {
                        NavController.I(this.f13871a, uVar, event);
                    }
                };
                this.f13799u = new b();
                this.f13800v = true;
                this.f13801w = new q();
                this.f13802x = new LinkedHashMap();
                this.A = new LinkedHashMap();
                q qVar = this.f13801w;
                qVar.b(new h(qVar));
                this.f13801w.b(new ActivityNavigator(this.f13779a));
                this.C = new ArrayList();
                this.D = LazyKt.b(new Function0<k>() { // from class: androidx.navigation.NavController$navInflater$2
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final k invoke() {
                        k kVar = this.this$0.f13781c;
                        return kVar == null ? new k(this.this$0.y(), this.this$0.f13801w) : kVar;
                    }
                });
                x0 x0VarB = d1.b(1, 0, BufferOverflow.DROP_OLDEST, 2, null);
                this.E = x0VarB;
                this.F = kotlinx.coroutines.flow.d.a(x0VarB);
            }
        }
        obj = null;
        this.f13780b = (Activity) obj;
        this.f13786h = new ArrayDeque();
        y0 y0VarA2 = j1.a(CollectionsKt.l());
        this.f13787i = y0VarA2;
        this.f13788j = kotlinx.coroutines.flow.d.b(y0VarA2);
        this.f13789k = new LinkedHashMap();
        this.f13790l = new LinkedHashMap();
        this.f13791m = new LinkedHashMap();
        this.f13792n = new LinkedHashMap();
        this.f13796r = new CopyOnWriteArrayList();
        this.f13797s = Lifecycle.State.INITIALIZED;
        this.f13798t = new androidx.p009lifecycle.r() { // from class: androidx.navigation.e
            @Override // androidx.p009lifecycle.r
            public final void onStateChanged(u uVar, Lifecycle.Event event) {
                NavController.I(this.f13871a, uVar, event);
            }
        };
        this.f13799u = new b();
        this.f13800v = true;
        this.f13801w = new q();
        this.f13802x = new LinkedHashMap();
        this.A = new LinkedHashMap();
        q qVar2 = this.f13801w;
        qVar2.b(new h(qVar2));
        this.f13801w.b(new ActivityNavigator(this.f13779a));
        this.C = new ArrayList();
        this.D = LazyKt.b(new Function0<k>() { // from class: androidx.navigation.NavController$navInflater$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final k invoke() {
                k kVar = this.this$0.f13781c;
                return kVar == null ? new k(this.this$0.y(), this.this$0.f13801w) : kVar;
            }
        });
        x0 x0VarB2 = d1.b(1, 0, BufferOverflow.DROP_OLDEST, 2, null);
        this.E = x0VarB2;
        this.F = kotlinx.coroutines.flow.d.a(x0VarB2);
    }

    private final int B() {
        ArrayDeque arrayDequeV = v();
        int i11 = 0;
        if (!(arrayDequeV instanceof Collection) || !arrayDequeV.isEmpty()) {
            Iterator<E> it = arrayDequeV.iterator();
            while (it.hasNext()) {
                if (!(((NavBackStackEntry) it.next()).f() instanceof NavGraph) && (i11 = i11 + 1) < 0) {
                    CollectionsKt.t();
                }
            }
        }
        return i11;
    }

    private final List H(ArrayDeque arrayDeque) {
        ArrayList arrayList = new ArrayList();
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) v().l();
        NavDestination navDestinationF = navBackStackEntry == null ? null : navBackStackEntry.f();
        if (navDestinationF == null) {
            navDestinationF = C();
        }
        if (arrayDeque != null) {
            Iterator<E> it = arrayDeque.iterator();
            while (it.hasNext()) {
                NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) it.next();
                NavDestination navDestinationT = t(navDestinationF, navBackStackEntryState.getDestinationId());
                if (navDestinationT == null) {
                    throw new IllegalStateException(("Restore State failed: destination " + NavDestination.f13829j.b(y(), navBackStackEntryState.getDestinationId()) + " cannot be found from the current destination " + navDestinationF).toString());
                }
                arrayList.add(navBackStackEntryState.instantiate(y(), navDestinationT, D(), this.f13795q));
                navDestinationF = navDestinationT;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(NavController this$0, u noName_0, Lifecycle.Event event) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(noName_0, "$noName_0");
        Intrinsics.h(event, "event");
        Lifecycle.State targetState = event.getTargetState();
        Intrinsics.g(targetState, "event.targetState");
        this$0.f13797s = targetState;
        if (this$0.f13782d != null) {
            Iterator<E> it = this$0.v().iterator();
            while (it.hasNext()) {
                ((NavBackStackEntry) it.next()).i(event);
            }
        }
    }

    private final void J(NavBackStackEntry navBackStackEntry, NavBackStackEntry navBackStackEntry2) {
        this.f13789k.put(navBackStackEntry, navBackStackEntry2);
        if (this.f13790l.get(navBackStackEntry2) == null) {
            this.f13790l.put(navBackStackEntry2, new AtomicInteger(0));
        }
        Object obj = this.f13790l.get(navBackStackEntry2);
        Intrinsics.e(obj);
        ((AtomicInteger) obj).incrementAndGet();
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0112 A[LOOP:1: B:40:0x010c->B:42:0x0112, LOOP_END] */
    private final void K(final NavDestination navDestination, Bundle bundle, l lVar, Navigator.a aVar) {
        boolean z10;
        NavDestination navDestinationF;
        Iterator it;
        Iterator it2 = this.f13802x.values().iterator();
        while (true) {
            z10 = true;
            if (!it2.hasNext()) {
                break;
            } else {
                ((NavControllerNavigatorState) it2.next()).i(true);
            }
        }
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        boolean zS = (lVar == null || lVar.e() == -1) ? false : S(lVar.e(), lVar.f(), lVar.h());
        final Bundle bundleF = navDestination.f(bundle);
        if (lVar != null && lVar.i() && this.f13791m.containsKey(Integer.valueOf(navDestination.n()))) {
            booleanRef.element = Y(navDestination.n(), bundleF, lVar, aVar);
        } else {
            NavBackStackEntry navBackStackEntryZ = z();
            Navigator navigatorD = this.f13801w.d(navDestination.o());
            if (lVar != null && lVar.g()) {
                int iN = navDestination.n();
                if (navBackStackEntryZ != null && (navDestinationF = navBackStackEntryZ.f()) != null && iN == navDestinationF.n()) {
                    g0((NavBackStackEntry) v().removeLast());
                    NavBackStackEntry navBackStackEntry = new NavBackStackEntry(navBackStackEntryZ, bundleF);
                    v().addLast(navBackStackEntry);
                    NavGraph navGraphP = navBackStackEntry.f().p();
                    if (navGraphP != null) {
                        J(navBackStackEntry, w(navGraphP.n()));
                    }
                    navigatorD.g(navBackStackEntry);
                }
                i0();
                it = this.f13802x.values().iterator();
                while (it.hasNext()) {
                    ((NavControllerNavigatorState) it.next()).i(false);
                }
                if (!zS || booleanRef.element || z10) {
                    q();
                } else {
                    h0();
                    return;
                }
            }
            L(navigatorD, CollectionsKt.e(NavBackStackEntry.a.b(NavBackStackEntry.f13763n, this.f13779a, navDestination, bundleF, D(), this.f13795q, null, null, 96, null)), lVar, aVar, new Function1<NavBackStackEntry, Unit>() { // from class: androidx.navigation.NavController$navigate$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((NavBackStackEntry) obj);
                    return Unit.f67061a;
                }

                public final void invoke(NavBackStackEntry it3) {
                    Intrinsics.h(it3, "it");
                    booleanRef.element = true;
                    NavController.o(this, navDestination, bundleF, it3, null, 8, null);
                }
            });
        }
        z10 = false;
        i0();
        it = this.f13802x.values().iterator();
        while (it.hasNext()) {
            ((NavControllerNavigatorState) it.next()).i(false);
        }
        if (zS) {
        }
        q();
    }

    private final void L(Navigator navigator, List list, l lVar, Navigator.a aVar, Function1 function1) {
        this.f13803y = function1;
        navigator.e(list, lVar, aVar);
        this.f13803y = null;
    }

    private final void M(Bundle bundle) {
        Activity activity;
        ArrayList<String> stringArrayList;
        Bundle bundle2 = this.f13783e;
        if (bundle2 != null && (stringArrayList = bundle2.getStringArrayList("android-support-nav:controller:navigatorState:names")) != null) {
            for (String name : stringArrayList) {
                q qVar = this.f13801w;
                Intrinsics.g(name, "name");
                Navigator navigatorD = qVar.d(name);
                Bundle bundle3 = bundle2.getBundle(name);
                if (bundle3 != null) {
                    navigatorD.h(bundle3);
                }
            }
        }
        Parcelable[] parcelableArr = this.f13784f;
        if (parcelableArr != null) {
            int length = parcelableArr.length;
            int i11 = 0;
            while (i11 < length) {
                Parcelable parcelable = parcelableArr[i11];
                i11++;
                NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) parcelable;
                NavDestination navDestinationS = s(navBackStackEntryState.getDestinationId());
                if (navDestinationS == null) {
                    throw new IllegalStateException("Restoring the Navigation back stack failed: destination " + NavDestination.f13829j.b(y(), navBackStackEntryState.getDestinationId()) + " cannot be found from the current destination " + A());
                }
                NavBackStackEntry navBackStackEntryInstantiate = navBackStackEntryState.instantiate(y(), navDestinationS, D(), this.f13795q);
                Navigator navigatorD2 = this.f13801w.d(navDestinationS.o());
                Map map = this.f13802x;
                Object navControllerNavigatorState = map.get(navigatorD2);
                if (navControllerNavigatorState == null) {
                    navControllerNavigatorState = new NavControllerNavigatorState(this, navigatorD2);
                    map.put(navigatorD2, navControllerNavigatorState);
                }
                v().add(navBackStackEntryInstantiate);
                ((NavControllerNavigatorState) navControllerNavigatorState).k(navBackStackEntryInstantiate);
                NavGraph navGraphP = navBackStackEntryInstantiate.f().p();
                if (navGraphP != null) {
                    J(navBackStackEntryInstantiate, w(navGraphP.n()));
                }
            }
            i0();
            this.f13784f = null;
        }
        Collection collectionValues = this.f13801w.e().values();
        ArrayList<Navigator> arrayList = new ArrayList();
        for (Object obj : collectionValues) {
            if (!((Navigator) obj).c()) {
                arrayList.add(obj);
            }
        }
        for (Navigator navigator : arrayList) {
            Map map2 = this.f13802x;
            Object navControllerNavigatorState2 = map2.get(navigator);
            if (navControllerNavigatorState2 == null) {
                navControllerNavigatorState2 = new NavControllerNavigatorState(this, navigator);
                map2.put(navigator, navControllerNavigatorState2);
            }
            navigator.f((NavControllerNavigatorState) navControllerNavigatorState2);
        }
        if (this.f13782d == null || !v().isEmpty()) {
            q();
            return;
        }
        if (!this.f13785g && (activity = this.f13780b) != null) {
            Intrinsics.e(activity);
            if (G(activity.getIntent())) {
                return;
            }
        }
        NavGraph navGraph = this.f13782d;
        Intrinsics.e(navGraph);
        K(navGraph, bundle, null, null);
    }

    private final void R(Navigator navigator, NavBackStackEntry navBackStackEntry, boolean z10, Function1 function1) {
        this.f13804z = function1;
        navigator.j(navBackStackEntry, z10);
        this.f13804z = null;
    }

    private final boolean S(int i11, boolean z10, final boolean z11) {
        NavDestination navDestination;
        if (v().isEmpty()) {
            return false;
        }
        ArrayList<Navigator> arrayList = new ArrayList();
        Iterator it = CollectionsKt.D0(v()).iterator();
        while (true) {
            if (!it.hasNext()) {
                navDestination = null;
                break;
            }
            NavDestination navDestinationF = ((NavBackStackEntry) it.next()).f();
            Navigator navigatorD = this.f13801w.d(navDestinationF.o());
            if (z10 || navDestinationF.n() != i11) {
                arrayList.add(navigatorD);
            }
            if (navDestinationF.n() == i11) {
                navDestination = navDestinationF;
                break;
            }
        }
        if (navDestination == null) {
            String strB = NavDestination.f13829j.b(this.f13779a, i11);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Ignoring popBackStack to destination ");
            sb2.append(strB);
            sb2.append(" as it was not found on the current back stack");
            return false;
        }
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        final ArrayDeque arrayDeque = new ArrayDeque();
        for (Navigator navigator : arrayList) {
            final Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            R(navigator, (NavBackStackEntry) v().last(), z11, new Function1<NavBackStackEntry, Unit>() { // from class: androidx.navigation.NavController$popBackStackInternal$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((NavBackStackEntry) obj);
                    return Unit.f67061a;
                }

                public final void invoke(NavBackStackEntry entry) {
                    Intrinsics.h(entry, "entry");
                    booleanRef2.element = true;
                    booleanRef.element = true;
                    this.U(entry, z11, arrayDeque);
                }
            });
            if (!booleanRef2.element) {
                break;
            }
        }
        if (z11) {
            if (!z10) {
                for (NavDestination navDestination2 : SequencesKt.B(SequencesKt.h(navDestination, new Function1<NavDestination, NavDestination>() { // from class: androidx.navigation.NavController$popBackStackInternal$3
                    @Override // kotlin.jvm.functions.Function1
                    public final NavDestination invoke(NavDestination destination) {
                        Intrinsics.h(destination, "destination");
                        NavGraph navGraphP = destination.p();
                        if (navGraphP != null && navGraphP.G() == destination.n()) {
                            return destination.p();
                        }
                        return null;
                    }
                }), new Function1<NavDestination, Boolean>() { // from class: androidx.navigation.NavController$popBackStackInternal$4
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(NavDestination destination) {
                        Intrinsics.h(destination, "destination");
                        return Boolean.valueOf(!this.this$0.f13791m.containsKey(Integer.valueOf(destination.n())));
                    }
                })) {
                    Map map = this.f13791m;
                    Integer numValueOf = Integer.valueOf(navDestination2.n());
                    NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) arrayDeque.h();
                    map.put(numValueOf, navBackStackEntryState == null ? null : navBackStackEntryState.getId());
                }
            }
            if (!arrayDeque.isEmpty()) {
                NavBackStackEntryState navBackStackEntryState2 = (NavBackStackEntryState) arrayDeque.first();
                Iterator f67431a = SequencesKt.B(SequencesKt.h(s(navBackStackEntryState2.getDestinationId()), new Function1<NavDestination, NavDestination>() { // from class: androidx.navigation.NavController$popBackStackInternal$6
                    @Override // kotlin.jvm.functions.Function1
                    public final NavDestination invoke(NavDestination destination) {
                        Intrinsics.h(destination, "destination");
                        NavGraph navGraphP = destination.p();
                        if (navGraphP != null && navGraphP.G() == destination.n()) {
                            return destination.p();
                        }
                        return null;
                    }
                }), new Function1<NavDestination, Boolean>() { // from class: androidx.navigation.NavController$popBackStackInternal$7
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(NavDestination destination) {
                        Intrinsics.h(destination, "destination");
                        return Boolean.valueOf(!this.this$0.f13791m.containsKey(Integer.valueOf(destination.n())));
                    }
                }).getF67431a();
                while (f67431a.hasNext()) {
                    this.f13791m.put(Integer.valueOf(((NavDestination) f67431a.next()).n()), navBackStackEntryState2.getId());
                }
                this.f13792n.put(navBackStackEntryState2.getId(), arrayDeque);
            }
        }
        i0();
        return booleanRef.element;
    }

    static /* synthetic */ boolean T(NavController navController, int i11, boolean z10, boolean z11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: popBackStackInternal");
        }
        if ((i12 & 4) != 0) {
            z11 = false;
        }
        return navController.S(i11, z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(NavBackStackEntry navBackStackEntry, boolean z10, ArrayDeque arrayDeque) {
        f fVar;
        i1 i1VarC;
        Set set;
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) v().last();
        if (!Intrinsics.c(navBackStackEntry2, navBackStackEntry)) {
            throw new IllegalStateException(("Attempted to pop " + navBackStackEntry.f() + ", which is not the top of the back stack (" + navBackStackEntry2.f() + ')').toString());
        }
        v().removeLast();
        NavControllerNavigatorState navControllerNavigatorState = (NavControllerNavigatorState) this.f13802x.get(F().d(navBackStackEntry2.f().o()));
        boolean z11 = true;
        if ((navControllerNavigatorState == null || (i1VarC = navControllerNavigatorState.c()) == null || (set = (Set) i1VarC.getValue()) == null || !set.contains(navBackStackEntry2)) && !this.f13790l.containsKey(navBackStackEntry2)) {
            z11 = false;
        }
        Lifecycle.State stateB = navBackStackEntry2.getLifecycle().b();
        Lifecycle.State state = Lifecycle.State.CREATED;
        if (stateB.isAtLeast(state)) {
            if (z10) {
                navBackStackEntry2.l(state);
                arrayDeque.addFirst(new NavBackStackEntryState(navBackStackEntry2));
            }
            if (z11) {
                navBackStackEntry2.l(state);
            } else {
                navBackStackEntry2.l(Lifecycle.State.DESTROYED);
                g0(navBackStackEntry2);
            }
        }
        if (z10 || z11 || (fVar = this.f13795q) == null) {
            return;
        }
        fVar.c(navBackStackEntry2.g());
    }

    static /* synthetic */ void V(NavController navController, NavBackStackEntry navBackStackEntry, boolean z10, ArrayDeque arrayDeque, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: popEntryFromBackStack");
        }
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            arrayDeque = new ArrayDeque();
        }
        navController.U(navBackStackEntry, z10, arrayDeque);
    }

    private final boolean Y(int i11, final Bundle bundle, l lVar, Navigator.a aVar) {
        NavBackStackEntry navBackStackEntry;
        NavDestination navDestinationF;
        if (!this.f13791m.containsKey(Integer.valueOf(i11))) {
            return false;
        }
        final String str = (String) this.f13791m.get(Integer.valueOf(i11));
        CollectionsKt.G(this.f13791m.values(), new Function1<String, Boolean>() { // from class: androidx.navigation.NavController$restoreStateInternal$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String str2) {
                return Boolean.valueOf(Intrinsics.c(str2, str));
            }
        });
        final List listH = H((ArrayDeque) this.f13792n.remove(str));
        ArrayList<List> arrayList = new ArrayList();
        ArrayList<NavBackStackEntry> arrayList2 = new ArrayList();
        for (Object obj : listH) {
            if (!(((NavBackStackEntry) obj).f() instanceof NavGraph)) {
                arrayList2.add(obj);
            }
        }
        for (NavBackStackEntry navBackStackEntry2 : arrayList2) {
            List list = (List) CollectionsKt.v0(arrayList);
            String strO = null;
            if (list != null && (navBackStackEntry = (NavBackStackEntry) CollectionsKt.u0(list)) != null && (navDestinationF = navBackStackEntry.f()) != null) {
                strO = navDestinationF.o();
            }
            if (Intrinsics.c(strO, navBackStackEntry2.f().o())) {
                list.add(navBackStackEntry2);
            } else {
                arrayList.add(CollectionsKt.q(navBackStackEntry2));
            }
        }
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        for (List list2 : arrayList) {
            Navigator navigatorD = this.f13801w.d(((NavBackStackEntry) CollectionsKt.i0(list2)).f().o());
            final Ref.IntRef intRef = new Ref.IntRef();
            L(navigatorD, list2, lVar, aVar, new Function1<NavBackStackEntry, Unit>() { // from class: androidx.navigation.NavController$restoreStateInternal$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    invoke((NavBackStackEntry) obj2);
                    return Unit.f67061a;
                }

                public final void invoke(NavBackStackEntry entry) {
                    List<NavBackStackEntry> listL;
                    Intrinsics.h(entry, "entry");
                    booleanRef.element = true;
                    int iIndexOf = listH.indexOf(entry);
                    if (iIndexOf != -1) {
                        int i12 = iIndexOf + 1;
                        listL = listH.subList(intRef.element, i12);
                        intRef.element = i12;
                    } else {
                        listL = CollectionsKt.l();
                    }
                    this.n(entry.f(), bundle, entry, listL);
                }
            });
        }
        return booleanRef.element;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000e  */
    private final void i0() {
        boolean z10;
        androidx.activity.u uVar = this.f13799u;
        if (this.f13800v) {
            z10 = B() > 1;
        }
        uVar.setEnabled(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(NavDestination navDestination, Bundle bundle, NavBackStackEntry navBackStackEntry, List list) {
        List list2;
        Object objPrevious;
        Object objPrevious2;
        List list3 = list;
        NavDestination navDestinationF = navBackStackEntry.f();
        if (!(navDestinationF instanceof androidx.navigation.b)) {
            while (!v().isEmpty() && (((NavBackStackEntry) v().last()).f() instanceof androidx.navigation.b) && T(this, ((NavBackStackEntry) v().last()).f().n(), true, false, 4, null)) {
            }
        }
        ArrayDeque<NavBackStackEntry> arrayDeque = new ArrayDeque();
        Object obj = null;
        if (navDestination instanceof NavGraph) {
            NavDestination navDestination2 = navDestinationF;
            while (true) {
                Intrinsics.e(navDestination2);
                NavGraph navGraphP = navDestination2.p();
                if (navGraphP != null) {
                    ListIterator listIterator = list3.listIterator(list.size());
                    do {
                        if (!listIterator.hasPrevious()) {
                            objPrevious2 = null;
                            break;
                        }
                        objPrevious2 = listIterator.previous();
                    } while (!Intrinsics.c(((NavBackStackEntry) objPrevious2).f(), navGraphP));
                    NavBackStackEntry navBackStackEntryB = (NavBackStackEntry) objPrevious2;
                    if (navBackStackEntryB == null) {
                        navBackStackEntryB = NavBackStackEntry.a.b(NavBackStackEntry.f13763n, this.f13779a, navGraphP, bundle, D(), this.f13795q, null, null, 96, null);
                    }
                    arrayDeque.addFirst(navBackStackEntryB);
                    if (v().isEmpty() || ((NavBackStackEntry) v().last()).f() != navGraphP) {
                        list2 = list;
                    } else {
                        list2 = list;
                        V(this, (NavBackStackEntry) v().last(), false, null, 6, null);
                    }
                } else {
                    navDestinationF = navDestinationF;
                    list2 = list3;
                }
                if (navGraphP == 0 || navGraphP == navDestination) {
                    break;
                }
                arrayDeque = arrayDeque;
                list3 = list2;
                navDestination2 = navGraphP;
                navDestinationF = navDestinationF;
            }
        } else {
            bundle = bundle;
            navBackStackEntry = navBackStackEntry;
            arrayDeque = arrayDeque;
            navDestinationF = navDestinationF;
            list2 = list3;
        }
        NavDestination navDestinationF2 = arrayDeque.isEmpty() ? navDestinationF : ((NavBackStackEntry) arrayDeque.first()).f();
        while (navDestinationF2 != null && s(navDestinationF2.n()) == null) {
            navDestinationF2 = navDestinationF2.p();
            if (navDestinationF2 != null) {
                ListIterator listIterator2 = list2.listIterator(list.size());
                do {
                    if (!listIterator2.hasPrevious()) {
                        objPrevious = null;
                        break;
                    }
                    objPrevious = listIterator2.previous();
                } while (!Intrinsics.c(((NavBackStackEntry) objPrevious).f(), navDestinationF2));
                NavBackStackEntry navBackStackEntryB2 = (NavBackStackEntry) objPrevious;
                if (navBackStackEntryB2 == null) {
                    navBackStackEntryB2 = NavBackStackEntry.a.b(NavBackStackEntry.f13763n, this.f13779a, navDestinationF2, navDestinationF2.f(bundle), D(), this.f13795q, null, null, 96, null);
                }
                arrayDeque.addFirst(navBackStackEntryB2);
            }
        }
        NavDestination navDestinationF3 = arrayDeque.isEmpty() ? navDestinationF : ((NavBackStackEntry) arrayDeque.last()).f();
        while (!v().isEmpty() && (((NavBackStackEntry) v().last()).f() instanceof NavGraph) && ((NavGraph) ((NavBackStackEntry) v().last()).f()).B(navDestinationF3.n(), false) == null) {
            V(this, (NavBackStackEntry) v().last(), false, null, 6, null);
        }
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) v().h();
        if (navBackStackEntry2 == null) {
            navBackStackEntry2 = (NavBackStackEntry) arrayDeque.h();
        }
        if (!Intrinsics.c(navBackStackEntry2 == null ? null : navBackStackEntry2.f(), this.f13782d)) {
            ListIterator listIterator3 = list2.listIterator(list.size());
            while (listIterator3.hasPrevious()) {
                Object objPrevious3 = listIterator3.previous();
                NavDestination navDestinationF4 = ((NavBackStackEntry) objPrevious3).f();
                NavGraph navGraph = this.f13782d;
                Intrinsics.e(navGraph);
                if (Intrinsics.c(navDestinationF4, navGraph)) {
                    obj = objPrevious3;
                    break;
                }
            }
            NavBackStackEntry navBackStackEntryB3 = (NavBackStackEntry) obj;
            if (navBackStackEntryB3 == null) {
                NavBackStackEntry.a aVar = NavBackStackEntry.f13763n;
                Context context = this.f13779a;
                NavGraph navGraph2 = this.f13782d;
                Intrinsics.e(navGraph2);
                NavGraph navGraph3 = this.f13782d;
                Intrinsics.e(navGraph3);
                navBackStackEntryB3 = NavBackStackEntry.a.b(aVar, context, navGraph2, navGraph3.f(bundle), D(), this.f13795q, null, null, 96, null);
            }
            arrayDeque.addFirst(navBackStackEntryB3);
        }
        for (NavBackStackEntry navBackStackEntry3 : arrayDeque) {
            Object obj2 = this.f13802x.get(this.f13801w.d(navBackStackEntry3.f().o()));
            if (obj2 == null) {
                throw new IllegalStateException(("NavigatorBackStack for " + navDestination.o() + " should already be created").toString());
            }
            ((NavControllerNavigatorState) obj2).k(navBackStackEntry3);
        }
        v().addAll(arrayDeque);
        v().add(navBackStackEntry);
        for (NavBackStackEntry navBackStackEntry4 : CollectionsKt.C0(arrayDeque, navBackStackEntry)) {
            NavGraph navGraphP2 = navBackStackEntry4.f().p();
            if (navGraphP2 != null) {
                J(navBackStackEntry4, w(navGraphP2.n()));
            }
        }
    }

    static /* synthetic */ void o(NavController navController, NavDestination navDestination, Bundle bundle, NavBackStackEntry navBackStackEntry, List list, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addEntryToBackStack");
        }
        if ((i11 & 8) != 0) {
            list = CollectionsKt.l();
        }
        navController.n(navDestination, bundle, navBackStackEntry, list);
    }

    private final boolean p(int i11) {
        Iterator it = this.f13802x.values().iterator();
        while (it.hasNext()) {
            ((NavControllerNavigatorState) it.next()).i(true);
        }
        boolean zY = Y(i11, null, null, null);
        Iterator it2 = this.f13802x.values().iterator();
        while (it2.hasNext()) {
            ((NavControllerNavigatorState) it2.next()).i(false);
        }
        return zY && S(i11, true, false);
    }

    private final boolean q() {
        while (!v().isEmpty() && (((NavBackStackEntry) v().last()).f() instanceof NavGraph)) {
            V(this, (NavBackStackEntry) v().last(), false, null, 6, null);
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) v().l();
        if (navBackStackEntry != null) {
            this.C.add(navBackStackEntry);
        }
        this.B++;
        h0();
        int i11 = this.B - 1;
        this.B = i11;
        if (i11 == 0) {
            List<NavBackStackEntry> listU0 = CollectionsKt.U0(this.C);
            this.C.clear();
            for (NavBackStackEntry navBackStackEntry2 : listU0) {
                Iterator it = this.f13796r.iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.c.a(it.next());
                    navBackStackEntry2.f();
                    navBackStackEntry2.d();
                    throw null;
                }
                this.E.b(navBackStackEntry2);
            }
            this.f13787i.b(W());
        }
        return navBackStackEntry != null;
    }

    private final NavDestination t(NavDestination navDestination, int i11) {
        NavGraph navGraphP;
        if (navDestination.n() == i11) {
            return navDestination;
        }
        if (navDestination instanceof NavGraph) {
            navGraphP = (NavGraph) navDestination;
        } else {
            navGraphP = navDestination.p();
            Intrinsics.e(navGraphP);
        }
        return navGraphP.A(i11);
    }

    private final String u(int[] iArr) {
        NavGraph navGraph = this.f13782d;
        int length = iArr.length;
        int i11 = 0;
        while (true) {
            NavDestination navDestinationA = null;
            if (i11 >= length) {
                return null;
            }
            int i12 = i11 + 1;
            int i13 = iArr[i11];
            if (i11 == 0) {
                NavGraph navGraph2 = this.f13782d;
                Intrinsics.e(navGraph2);
                if (navGraph2.n() == i13) {
                    navDestinationA = this.f13782d;
                }
            } else {
                Intrinsics.e(navGraph);
                navDestinationA = navGraph.A(i13);
            }
            if (navDestinationA == null) {
                return NavDestination.f13829j.b(this.f13779a, i13);
            }
            if (i11 != iArr.length - 1 && (navDestinationA instanceof NavGraph)) {
                navGraph = (NavGraph) navDestinationA;
                while (true) {
                    Intrinsics.e(navGraph);
                    if (navGraph.A(navGraph.G()) instanceof NavGraph) {
                        navGraph = (NavGraph) navGraph.A(navGraph.G());
                    }
                }
            }
            i11 = i12;
        }
    }

    public NavDestination A() {
        NavBackStackEntry navBackStackEntryZ = z();
        if (navBackStackEntryZ == null) {
            return null;
        }
        return navBackStackEntryZ.f();
    }

    public NavGraph C() {
        NavGraph navGraph = this.f13782d;
        if (navGraph == null) {
            throw new IllegalStateException("You must call setGraph() before calling getGraph()");
        }
        if (navGraph != null) {
            return navGraph;
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.navigation.NavGraph");
    }

    public final Lifecycle.State D() {
        return this.f13793o == null ? Lifecycle.State.CREATED : this.f13797s;
    }

    public k E() {
        return (k) this.D.getValue();
    }

    public q F() {
        return this.f13801w;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0063  */
    public boolean G(Intent intent) {
        int[] iArr;
        NavDestination navDestinationA;
        Bundle bundle;
        int i11 = 0;
        if (intent == null) {
            return false;
        }
        Bundle extras = intent.getExtras();
        int[] intArray = extras == null ? null : extras.getIntArray("android-support-nav:controller:deepLinkIds");
        ArrayList parcelableArrayList = extras == null ? null : extras.getParcelableArrayList("android-support-nav:controller:deepLinkArgs");
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = extras == null ? null : extras.getBundle("android-support-nav:controller:deepLinkExtras");
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        if (intArray == null || intArray.length == 0) {
            NavGraph navGraph = this.f13782d;
            Intrinsics.e(navGraph);
            NavDestination.a aVarR = navGraph.r(new g(intent));
            if (aVarR != null) {
                NavDestination navDestinationB = aVarR.b();
                int[] iArrJ = NavDestination.j(navDestinationB, null, 1, null);
                Bundle bundleF = navDestinationB.f(aVarR.d());
                if (bundleF != null) {
                    bundle2.putAll(bundleF);
                }
                iArr = iArrJ;
                parcelableArrayList = null;
            } else {
                iArr = intArray;
            }
        } else {
            iArr = intArray;
        }
        if (iArr == null || iArr.length == 0) {
            return false;
        }
        String strU = u(iArr);
        if (strU != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not find destination ");
            sb2.append((Object) strU);
            sb2.append(" in the navigation graph, ignoring the deep link from ");
            sb2.append(intent);
            return false;
        }
        bundle2.putParcelable("android-support-nav:controller:deepLinkIntent", intent);
        int length = iArr.length;
        Bundle[] bundleArr = new Bundle[length];
        int i12 = 0;
        while (i12 < length) {
            int i13 = i12 + 1;
            Bundle bundle4 = new Bundle();
            bundle4.putAll(bundle2);
            if (parcelableArrayList != null && (bundle = (Bundle) parcelableArrayList.get(i12)) != null) {
                bundle4.putAll(bundle);
            }
            bundleArr[i12] = bundle4;
            i12 = i13;
        }
        int flags = intent.getFlags();
        int i14 = 268435456 & flags;
        if (i14 != 0 && (flags & 32768) == 0) {
            intent.addFlags(32768);
            b0 b0VarB = b0.f(this.f13779a).b(intent);
            Intrinsics.g(b0VarB, "create(context)\n        …ntWithParentStack(intent)");
            b0VarB.g();
            Activity activity = this.f13780b;
            if (activity != null) {
                activity.finish();
                activity.overridePendingTransition(0, 0);
            }
            return true;
        }
        if (i14 != 0) {
            if (!v().isEmpty()) {
                NavGraph navGraph2 = this.f13782d;
                Intrinsics.e(navGraph2);
                T(this, navGraph2.n(), true, false, 4, null);
            }
            while (i11 < iArr.length) {
                int i15 = iArr[i11];
                int i16 = i11 + 1;
                Bundle bundle5 = bundleArr[i11];
                final NavDestination navDestinationS = s(i15);
                if (navDestinationS == null) {
                    throw new IllegalStateException("Deep Linking failed: destination " + NavDestination.f13829j.b(this.f13779a, i15) + " cannot be found from the current destination " + A());
                }
                K(navDestinationS, bundle5, n.a(new Function1<m, Unit>() { // from class: androidx.navigation.NavController$handleDeepLink$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        invoke((m) obj);
                        return Unit.f67061a;
                    }

                    public final void invoke(m navOptions) {
                        Intrinsics.h(navOptions, "$this$navOptions");
                        navOptions.a(new Function1<a, Unit>() { // from class: androidx.navigation.NavController$handleDeepLink$2.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((a) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(a anim) {
                                Intrinsics.h(anim, "$this$anim");
                                anim.e(0);
                                anim.f(0);
                            }
                        });
                        NavDestination navDestination = navDestinationS;
                        if (navDestination instanceof NavGraph) {
                            Sequence<NavDestination> sequenceC = NavDestination.f13829j.c(navDestination);
                            NavController navController = this;
                            for (NavDestination navDestination2 : sequenceC) {
                                NavDestination navDestinationA2 = navController.A();
                                if (Intrinsics.c(navDestination2, navDestinationA2 == null ? null : navDestinationA2.p())) {
                                    return;
                                }
                            }
                            if (NavController.H) {
                                navOptions.g(NavGraph.f13845p.a(this.C()).n(), new Function1<s, Unit>() { // from class: androidx.navigation.NavController$handleDeepLink$2.2
                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                        invoke((s) obj);
                                        return Unit.f67061a;
                                    }

                                    public final void invoke(s popUpTo) {
                                        Intrinsics.h(popUpTo, "$this$popUpTo");
                                        popUpTo.c(true);
                                    }
                                });
                            }
                        }
                    }
                }), null);
                i11 = i16;
            }
            return true;
        }
        NavGraph navGraph3 = this.f13782d;
        int length2 = iArr.length;
        int i17 = 0;
        while (i17 < length2) {
            int i18 = i17 + 1;
            int i19 = iArr[i17];
            Bundle bundle6 = bundleArr[i17];
            if (i17 == 0) {
                navDestinationA = this.f13782d;
            } else {
                Intrinsics.e(navGraph3);
                navDestinationA = navGraph3.A(i19);
            }
            if (navDestinationA == null) {
                throw new IllegalStateException("Deep Linking failed: destination " + NavDestination.f13829j.b(this.f13779a, i19) + " cannot be found in graph " + navGraph3);
            }
            if (i17 == iArr.length - 1) {
                l.a aVar = new l.a();
                NavGraph navGraph4 = this.f13782d;
                Intrinsics.e(navGraph4);
                K(navDestinationA, bundle6, l.a.i(aVar, navGraph4.n(), true, false, 4, null).b(0).c(0).a(), null);
            } else if (navDestinationA instanceof NavGraph) {
                navGraph3 = (NavGraph) navDestinationA;
                while (true) {
                    Intrinsics.e(navGraph3);
                    if (navGraph3.A(navGraph3.G()) instanceof NavGraph) {
                        navGraph3 = (NavGraph) navGraph3.A(navGraph3.G());
                    }
                }
            }
            i17 = i18;
        }
        this.f13785g = true;
        return true;
    }

    public boolean N() {
        if (v().isEmpty()) {
            return false;
        }
        NavDestination navDestinationA = A();
        Intrinsics.e(navDestinationA);
        return O(navDestinationA.n(), true);
    }

    public boolean O(int i11, boolean z10) {
        return P(i11, z10, false);
    }

    public boolean P(int i11, boolean z10, boolean z11) {
        return S(i11, z10, z11) && q();
    }

    public final void Q(NavBackStackEntry popUpTo, Function0 onComplete) {
        Intrinsics.h(popUpTo, "popUpTo");
        Intrinsics.h(onComplete, "onComplete");
        int iIndexOf = v().indexOf(popUpTo);
        if (iIndexOf < 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Ignoring pop of ");
            sb2.append(popUpTo);
            sb2.append(" as it was not found on the current back stack");
            return;
        }
        int i11 = iIndexOf + 1;
        if (i11 != v().size()) {
            S(((NavBackStackEntry) v().get(i11)).f().n(), true, false);
        }
        V(this, popUpTo, false, null, 6, null);
        onComplete.invoke();
        i0();
        q();
    }

    public final List W() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f13802x.values().iterator();
        while (it.hasNext()) {
            Iterable iterable = (Iterable) ((NavControllerNavigatorState) it.next()).c().getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : iterable) {
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                if (!arrayList.contains(navBackStackEntry) && !navBackStackEntry.getLifecycle().b().isAtLeast(Lifecycle.State.STARTED)) {
                    arrayList2.add(obj);
                }
            }
            CollectionsKt.B(arrayList, arrayList2);
        }
        ArrayDeque arrayDequeV = v();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : arrayDequeV) {
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj2;
            if (!arrayList.contains(navBackStackEntry2) && navBackStackEntry2.getLifecycle().b().isAtLeast(Lifecycle.State.STARTED)) {
                arrayList3.add(obj2);
            }
        }
        CollectionsKt.B(arrayList, arrayList3);
        ArrayList arrayList4 = new ArrayList();
        for (Object obj3 : arrayList) {
            if (!(((NavBackStackEntry) obj3).f() instanceof NavGraph)) {
                arrayList4.add(obj3);
            }
        }
        return arrayList4;
    }

    public void X(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(this.f13779a.getClassLoader());
        this.f13783e = bundle.getBundle("android-support-nav:controller:navigatorState");
        this.f13784f = bundle.getParcelableArray("android-support-nav:controller:backStack");
        this.f13792n.clear();
        int[] intArray = bundle.getIntArray("android-support-nav:controller:backStackDestIds");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("android-support-nav:controller:backStackIds");
        if (intArray != null && stringArrayList != null) {
            int length = intArray.length;
            int i11 = 0;
            int i12 = 0;
            while (i11 < length) {
                int i13 = intArray[i11];
                i11++;
                this.f13791m.put(Integer.valueOf(i13), stringArrayList.get(i12));
                i12++;
            }
        }
        ArrayList<String> stringArrayList2 = bundle.getStringArrayList("android-support-nav:controller:backStackStates");
        if (stringArrayList2 != null) {
            for (String id2 : stringArrayList2) {
                Parcelable[] parcelableArray = bundle.getParcelableArray(Intrinsics.q("android-support-nav:controller:backStackStates:", id2));
                if (parcelableArray != null) {
                    Map map = this.f13792n;
                    Intrinsics.g(id2, "id");
                    ArrayDeque arrayDeque = new ArrayDeque(parcelableArray.length);
                    Iterator itA = ArrayIteratorKt.a(parcelableArray);
                    while (itA.hasNext()) {
                        Parcelable parcelable = (Parcelable) itA.next();
                        if (parcelable == null) {
                            throw new NullPointerException("null cannot be cast to non-null type androidx.navigation.NavBackStackEntryState");
                        }
                        arrayDeque.add((NavBackStackEntryState) parcelable);
                    }
                    Unit unit = Unit.f67061a;
                    map.put(id2, arrayDeque);
                }
            }
        }
        this.f13785g = bundle.getBoolean("android-support-nav:controller:deepLinkHandled");
    }

    public Bundle Z() {
        Bundle bundle;
        ArrayList<String> arrayList = new ArrayList<>();
        Bundle bundle2 = new Bundle();
        for (Map.Entry entry : this.f13801w.e().entrySet()) {
            String str = (String) entry.getKey();
            Bundle bundleI = ((Navigator) entry.getValue()).i();
            if (bundleI != null) {
                arrayList.add(str);
                bundle2.putBundle(str, bundleI);
            }
        }
        if (arrayList.isEmpty()) {
            bundle = null;
        } else {
            bundle = new Bundle();
            bundle2.putStringArrayList("android-support-nav:controller:navigatorState:names", arrayList);
            bundle.putBundle("android-support-nav:controller:navigatorState", bundle2);
        }
        if (!v().isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            Parcelable[] parcelableArr = new Parcelable[v().size()];
            Iterator<E> it = v().iterator();
            int i11 = 0;
            while (it.hasNext()) {
                parcelableArr[i11] = new NavBackStackEntryState((NavBackStackEntry) it.next());
                i11++;
            }
            bundle.putParcelableArray("android-support-nav:controller:backStack", parcelableArr);
        }
        if (!this.f13791m.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            int[] iArr = new int[this.f13791m.size()];
            ArrayList<String> arrayList2 = new ArrayList<>();
            int i12 = 0;
            for (Map.Entry entry2 : this.f13791m.entrySet()) {
                int iIntValue = ((Number) entry2.getKey()).intValue();
                String str2 = (String) entry2.getValue();
                iArr[i12] = iIntValue;
                arrayList2.add(str2);
                i12++;
            }
            bundle.putIntArray("android-support-nav:controller:backStackDestIds", iArr);
            bundle.putStringArrayList("android-support-nav:controller:backStackIds", arrayList2);
        }
        if (!this.f13792n.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            ArrayList<String> arrayList3 = new ArrayList<>();
            for (Map.Entry entry3 : this.f13792n.entrySet()) {
                String str3 = (String) entry3.getKey();
                ArrayDeque arrayDeque = (ArrayDeque) entry3.getValue();
                arrayList3.add(str3);
                Parcelable[] parcelableArr2 = new Parcelable[arrayDeque.size()];
                int i13 = 0;
                for (Object obj : arrayDeque) {
                    int i14 = i13 + 1;
                    if (i13 < 0) {
                        CollectionsKt.u();
                    }
                    parcelableArr2[i13] = (NavBackStackEntryState) obj;
                    i13 = i14;
                }
                bundle.putParcelableArray(Intrinsics.q("android-support-nav:controller:backStackStates:", str3), parcelableArr2);
            }
            bundle.putStringArrayList("android-support-nav:controller:backStackStates", arrayList3);
        }
        if (this.f13785g) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android-support-nav:controller:deepLinkHandled", this.f13785g);
        }
        return bundle;
    }

    public void a0(int i11) {
        c0(E().b(i11), null);
    }

    public void b0(int i11, Bundle bundle) {
        c0(E().b(i11), bundle);
    }

    public void c0(NavGraph graph, Bundle bundle) {
        Intrinsics.h(graph, "graph");
        if (!Intrinsics.c(this.f13782d, graph)) {
            NavGraph navGraph = this.f13782d;
            if (navGraph != null) {
                for (Integer id2 : new ArrayList(this.f13791m.keySet())) {
                    Intrinsics.g(id2, "id");
                    p(id2.intValue());
                }
                T(this, navGraph.n(), true, false, 4, null);
            }
            this.f13782d = graph;
            M(bundle);
            return;
        }
        int iP = graph.E().p();
        int i11 = 0;
        while (i11 < iP) {
            int i12 = i11 + 1;
            NavDestination newDestination = (NavDestination) graph.E().q(i11);
            NavGraph navGraph2 = this.f13782d;
            Intrinsics.e(navGraph2);
            navGraph2.E().o(i11, newDestination);
            ArrayDeque arrayDequeV = v();
            ArrayList<NavBackStackEntry> arrayList = new ArrayList();
            for (Object obj : arrayDequeV) {
                int iN = ((NavBackStackEntry) obj).f().n();
                if (newDestination != null && iN == newDestination.n()) {
                    arrayList.add(obj);
                }
            }
            for (NavBackStackEntry navBackStackEntry : arrayList) {
                Intrinsics.g(newDestination, "newDestination");
                navBackStackEntry.k(newDestination);
            }
            i11 = i12;
        }
    }

    public void d0(u owner) {
        Lifecycle lifecycle;
        Intrinsics.h(owner, "owner");
        if (Intrinsics.c(owner, this.f13793o)) {
            return;
        }
        u uVar = this.f13793o;
        if (uVar != null && (lifecycle = uVar.getLifecycle()) != null) {
            lifecycle.d(this.f13798t);
        }
        this.f13793o = owner;
        owner.getLifecycle().a(this.f13798t);
    }

    public void e0(OnBackPressedDispatcher dispatcher) {
        Intrinsics.h(dispatcher, "dispatcher");
        if (Intrinsics.c(dispatcher, this.f13794p)) {
            return;
        }
        u uVar = this.f13793o;
        if (uVar == null) {
            throw new IllegalStateException("You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()");
        }
        this.f13799u.remove();
        this.f13794p = dispatcher;
        dispatcher.i(uVar, this.f13799u);
        Lifecycle lifecycle = uVar.getLifecycle();
        lifecycle.d(this.f13798t);
        lifecycle.a(this.f13798t);
    }

    public void f0(androidx.p009lifecycle.x0 viewModelStore) {
        Intrinsics.h(viewModelStore, "viewModelStore");
        f fVar = this.f13795q;
        f.b bVar = f.f13872b;
        if (Intrinsics.c(fVar, bVar.a(viewModelStore))) {
            return;
        }
        if (!v().isEmpty()) {
            throw new IllegalStateException("ViewModelStore should be set before setGraph call");
        }
        this.f13795q = bVar.a(viewModelStore);
    }

    public final NavBackStackEntry g0(NavBackStackEntry child) {
        Intrinsics.h(child, "child");
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.f13789k.remove(child);
        if (navBackStackEntry == null) {
            return null;
        }
        AtomicInteger atomicInteger = (AtomicInteger) this.f13790l.get(navBackStackEntry);
        Integer numValueOf = atomicInteger != null ? Integer.valueOf(atomicInteger.decrementAndGet()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            NavControllerNavigatorState navControllerNavigatorState = (NavControllerNavigatorState) this.f13802x.get(this.f13801w.d(navBackStackEntry.f().o()));
            if (navControllerNavigatorState != null) {
                navControllerNavigatorState.e(navBackStackEntry);
            }
            this.f13790l.remove(navBackStackEntry);
        }
        return navBackStackEntry;
    }

    public final void h0() {
        NavDestination navDestinationP;
        i1 i1VarC;
        Set set;
        AtomicInteger atomicInteger;
        List<NavBackStackEntry> listU0 = CollectionsKt.U0(v());
        if (listU0.isEmpty()) {
            return;
        }
        NavDestination navDestinationF = ((NavBackStackEntry) CollectionsKt.u0(listU0)).f();
        if (!(navDestinationF instanceof androidx.navigation.b)) {
            navDestinationP = null;
            break;
        }
        Iterator it = CollectionsKt.D0(listU0).iterator();
        while (true) {
            if (!it.hasNext()) {
                navDestinationP = null;
                break;
            }
            navDestinationP = ((NavBackStackEntry) it.next()).f();
            if (!(navDestinationP instanceof NavGraph) && !(navDestinationP instanceof androidx.navigation.b)) {
                break;
            }
        }
        HashMap map = new HashMap();
        for (NavBackStackEntry navBackStackEntry : CollectionsKt.D0(listU0)) {
            Lifecycle.State stateH = navBackStackEntry.h();
            NavDestination navDestinationF2 = navBackStackEntry.f();
            if (navDestinationF != null && navDestinationF2.n() == navDestinationF.n()) {
                Lifecycle.State state = Lifecycle.State.RESUMED;
                if (stateH != state) {
                    NavControllerNavigatorState navControllerNavigatorState = (NavControllerNavigatorState) this.f13802x.get(F().d(navBackStackEntry.f().o()));
                    if (Intrinsics.c((navControllerNavigatorState == null || (i1VarC = navControllerNavigatorState.c()) == null || (set = (Set) i1VarC.getValue()) == null) ? null : Boolean.valueOf(set.contains(navBackStackEntry)), Boolean.TRUE) || ((atomicInteger = (AtomicInteger) this.f13790l.get(navBackStackEntry)) != null && atomicInteger.get() == 0)) {
                        map.put(navBackStackEntry, Lifecycle.State.STARTED);
                    } else {
                        map.put(navBackStackEntry, state);
                    }
                }
                navDestinationF = navDestinationF.p();
            } else if (navDestinationP == null || navDestinationF2.n() != navDestinationP.n()) {
                navBackStackEntry.l(Lifecycle.State.CREATED);
            } else {
                if (stateH == Lifecycle.State.RESUMED) {
                    navBackStackEntry.l(Lifecycle.State.STARTED);
                } else {
                    Lifecycle.State state2 = Lifecycle.State.STARTED;
                    if (stateH != state2) {
                        map.put(navBackStackEntry, state2);
                    }
                }
                navDestinationP = navDestinationP.p();
            }
        }
        for (NavBackStackEntry navBackStackEntry2 : listU0) {
            Lifecycle.State state3 = (Lifecycle.State) map.get(navBackStackEntry2);
            if (state3 != null) {
                navBackStackEntry2.l(state3);
            } else {
                navBackStackEntry2.m();
            }
        }
    }

    public void r(boolean z10) {
        this.f13800v = z10;
        i0();
    }

    public final NavDestination s(int i11) {
        NavGraph navGraph = this.f13782d;
        if (navGraph == null) {
            return null;
        }
        Intrinsics.e(navGraph);
        if (navGraph.n() == i11) {
            return this.f13782d;
        }
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) v().l();
        NavDestination navDestinationF = navBackStackEntry != null ? navBackStackEntry.f() : null;
        if (navDestinationF == null) {
            navDestinationF = this.f13782d;
            Intrinsics.e(navDestinationF);
        }
        return t(navDestinationF, i11);
    }

    public ArrayDeque v() {
        return this.f13786h;
    }

    public NavBackStackEntry w(int i11) {
        Object objPrevious;
        ArrayDeque arrayDequeV = v();
        ListIterator<E> listIterator = arrayDequeV.listIterator(arrayDequeV.size());
        do {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
        } while (((NavBackStackEntry) objPrevious).f().n() != i11);
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) objPrevious;
        if (navBackStackEntry != null) {
            return navBackStackEntry;
        }
        throw new IllegalArgumentException(("No destination with ID " + i11 + " is on the NavController's back stack. The current destination is " + A()).toString());
    }

    public final NavBackStackEntry x(String route) {
        Object objPrevious;
        Intrinsics.h(route, "route");
        ArrayDeque arrayDequeV = v();
        ListIterator<E> listIterator = arrayDequeV.listIterator(arrayDequeV.size());
        do {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
        } while (!Intrinsics.c(((NavBackStackEntry) objPrevious).f().q(), route));
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) objPrevious;
        if (navBackStackEntry != null) {
            return navBackStackEntry;
        }
        throw new IllegalArgumentException(("No destination with route " + route + " is on the NavController's back stack. The current destination is " + A()).toString());
    }

    public final Context y() {
        return this.f13779a;
    }

    public NavBackStackEntry z() {
        return (NavBackStackEntry) v().l();
    }
}
