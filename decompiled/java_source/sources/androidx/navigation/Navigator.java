package androidx.navigation;

import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class Navigator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private r f13854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f13855b;

    /* JADX INFO: loaded from: classes2.dex */
    public interface a {
    }

    /* JADX INFO: loaded from: classes2.dex */
    @Retention(RetentionPolicy.RUNTIME)
    public @interface b {
        String value();
    }

    public abstract NavDestination a();

    protected final r b() {
        r rVar = this.f13854a;
        if (rVar != null) {
            return rVar;
        }
        throw new IllegalStateException("You cannot access the Navigator's state until the Navigator is attached");
    }

    public final boolean c() {
        return this.f13855b;
    }

    public NavDestination d(NavDestination destination, Bundle bundle, l lVar, a aVar) {
        Intrinsics.h(destination, "destination");
        return destination;
    }

    public void e(List entries, final l lVar, final a aVar) {
        Intrinsics.h(entries, "entries");
        Iterator f67431a = SequencesKt.r(SequencesKt.y(CollectionsKt.Z(entries), new Function1<NavBackStackEntry, NavBackStackEntry>(lVar, aVar) { // from class: androidx.navigation.Navigator$navigate$1
            final /* synthetic */ l $navOptions;
            final /* synthetic */ Navigator.a $navigatorExtras;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final NavBackStackEntry invoke(NavBackStackEntry backStackEntry) {
                NavDestination navDestinationD;
                Intrinsics.h(backStackEntry, "backStackEntry");
                NavDestination navDestinationF = backStackEntry.f();
                if (!(navDestinationF instanceof NavDestination)) {
                    navDestinationF = null;
                }
                if (navDestinationF != null && (navDestinationD = this.this$0.d(navDestinationF, backStackEntry.d(), this.$navOptions, null)) != null) {
                    return Intrinsics.c(navDestinationD, navDestinationF) ? backStackEntry : this.this$0.b().a(navDestinationD, navDestinationD.f(backStackEntry.d()));
                }
                return null;
            }
        })).getF67431a();
        while (f67431a.hasNext()) {
            b().h((NavBackStackEntry) f67431a.next());
        }
    }

    public void f(r state) {
        Intrinsics.h(state, "state");
        this.f13854a = state;
        this.f13855b = true;
    }

    public void g(NavBackStackEntry backStackEntry) {
        Intrinsics.h(backStackEntry, "backStackEntry");
        NavDestination navDestinationF = backStackEntry.f();
        if (!(navDestinationF instanceof NavDestination)) {
            navDestinationF = null;
        }
        if (navDestinationF == null) {
            return;
        }
        d(navDestinationF, null, n.a(new Function1<m, Unit>() { // from class: androidx.navigation.Navigator$onLaunchSingleTop$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((m) obj);
                return Unit.f67061a;
            }

            public final void invoke(m navOptions) {
                Intrinsics.h(navOptions, "$this$navOptions");
                navOptions.h(true);
            }
        }), null);
        b().f(backStackEntry);
    }

    public void h(Bundle savedState) {
        Intrinsics.h(savedState, "savedState");
    }

    public Bundle i() {
        return null;
    }

    public void j(NavBackStackEntry popUpTo, boolean z10) {
        Intrinsics.h(popUpTo, "popUpTo");
        List list = (List) b().b().getValue();
        if (!list.contains(popUpTo)) {
            throw new IllegalStateException(("popBackStack was called with " + popUpTo + " which does not exist in back stack " + list).toString());
        }
        ListIterator listIterator = list.listIterator(list.size());
        NavBackStackEntry navBackStackEntry = null;
        while (k()) {
            navBackStackEntry = (NavBackStackEntry) listIterator.previous();
            if (Intrinsics.c(navBackStackEntry, popUpTo)) {
                break;
            }
        }
        if (navBackStackEntry != null) {
            b().g(navBackStackEntry, z10);
        }
    }

    public boolean k() {
        return true;
    }
}
