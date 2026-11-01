package androidx.navigation;

import android.view.View;
import java.lang.ref.WeakReference;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes.dex */
public final class Navigation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Navigation f13853a = new Navigation();

    private Navigation() {
    }

    public static final NavController b(View view) {
        Intrinsics.h(view, "view");
        NavController navControllerC = f13853a.c(view);
        if (navControllerC != null) {
            return navControllerC;
        }
        throw new IllegalStateException("View " + view + " does not have a NavController set");
    }

    private final NavController c(View view) {
        return (NavController) SequencesKt.t(SequencesKt.z(SequencesKt.h(view, new Function1<View, View>() { // from class: androidx.navigation.Navigation$findViewNavController$1
            @Override // kotlin.jvm.functions.Function1
            public final View invoke(View it) {
                Intrinsics.h(it, "it");
                Object parent = it.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            }
        }), new Function1<View, NavController>() { // from class: androidx.navigation.Navigation$findViewNavController$2
            @Override // kotlin.jvm.functions.Function1
            public final NavController invoke(View it) {
                Intrinsics.h(it, "it");
                return Navigation.f13853a.d(it);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NavController d(View view) {
        Object tag = view.getTag(R$id.nav_controller_view_tag);
        if (tag instanceof WeakReference) {
            return (NavController) ((WeakReference) tag).get();
        }
        if (tag instanceof NavController) {
            return (NavController) tag;
        }
        return null;
    }

    public static final void e(View view, NavController navController) {
        Intrinsics.h(view, "view");
        view.setTag(R$id.nav_controller_view_tag, navController);
    }
}
