package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.s;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import androidx.navigation.l;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 ,2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002-.B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J1\u0010\u001b\u001a\u00020\u000b2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\u00152\b\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020&0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010'R\u0014\u0010+\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010*¨\u0006/"}, d2 = {"Landroidx/navigation/fragment/c;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/fragment/c$b;", "Landroid/content/Context;", "context", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "<init>", "(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V", "Landroidx/navigation/NavBackStackEntry;", "entry", "", "o", "(Landroidx/navigation/NavBackStackEntry;)V", "popUpTo", "", "savedState", "j", "(Landroidx/navigation/NavBackStackEntry;Z)V", "n", "()Landroidx/navigation/fragment/c$b;", "", "entries", "Landroidx/navigation/l;", "navOptions", "Landroidx/navigation/Navigator$a;", "navigatorExtras", "e", "(Ljava/util/List;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)V", "Landroidx/navigation/r;", "state", "f", "(Landroidx/navigation/r;)V", "c", "Landroid/content/Context;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/fragment/app/FragmentManager;", "", "", "Ljava/util/Set;", "restoredTagsAwaitingAttach", "Landroidx/lifecycle/r;", "Landroidx/lifecycle/r;", "observer", "g", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "navigation-fragment_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@Navigator.b("dialog")
public final class c extends Navigator {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final a f13889g = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Context context;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final FragmentManager fragmentManager;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Set restoredTagsAwaitingAttach;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final r observer;

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static class b extends NavDestination implements androidx.navigation.b {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private String f13894l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Navigator fragmentNavigator) {
            super(fragmentNavigator);
            Intrinsics.h(fragmentNavigator, "fragmentNavigator");
        }

        public final b A(String className) {
            Intrinsics.h(className, "className");
            this.f13894l = className;
            return this;
        }

        @Override // androidx.navigation.NavDestination
        public boolean equals(Object obj) {
            return obj != null && (obj instanceof b) && super.equals(obj) && Intrinsics.c(this.f13894l, ((b) obj).f13894l);
        }

        @Override // androidx.navigation.NavDestination
        public int hashCode() {
            int iHashCode = super.hashCode() * 31;
            String str = this.f13894l;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        @Override // androidx.navigation.NavDestination
        public void s(Context context, AttributeSet attrs) {
            Intrinsics.h(context, "context");
            Intrinsics.h(attrs, "attrs");
            super.s(context, attrs);
            TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attrs, R$styleable.DialogFragmentNavigator);
            Intrinsics.g(typedArrayObtainAttributes, "context.resources.obtain…ntNavigator\n            )");
            String string = typedArrayObtainAttributes.getString(R$styleable.DialogFragmentNavigator_android_name);
            if (string != null) {
                A(string);
            }
            typedArrayObtainAttributes.recycle();
        }

        public final String z() {
            String str = this.f13894l;
            if (str == null) {
                throw new IllegalStateException("DialogFragment class was not set");
            }
            if (str != null) {
                return str;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
        }
    }

    public c(Context context, FragmentManager fragmentManager) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fragmentManager, "fragmentManager");
        this.context = context;
        this.fragmentManager = fragmentManager;
        this.restoredTagsAwaitingAttach = new LinkedHashSet();
        this.observer = new r() { // from class: androidx.navigation.fragment.a
            @Override // androidx.p009lifecycle.r
            public final void onStateChanged(u uVar, Lifecycle.Event event) {
                c.p(this.f13887a, uVar, event);
            }
        };
    }

    private final void o(NavBackStackEntry entry) {
        b bVar = (b) entry.f();
        String strZ = bVar.z();
        if (strZ.charAt(0) == '.') {
            strZ = Intrinsics.q(this.context.getPackageName(), strZ);
        }
        Fragment fragmentInstantiate = this.fragmentManager.w0().instantiate(this.context.getClassLoader(), strZ);
        Intrinsics.g(fragmentInstantiate, "fragmentManager.fragment…ader, className\n        )");
        if (!DialogFragment.class.isAssignableFrom(fragmentInstantiate.getClass())) {
            throw new IllegalArgumentException(("Dialog destination " + bVar.z() + " is not an instance of DialogFragment").toString());
        }
        DialogFragment dialogFragment = (DialogFragment) fragmentInstantiate;
        dialogFragment.setArguments(entry.d());
        dialogFragment.getLifecycle().a(this.observer);
        dialogFragment.show(this.fragmentManager, entry.g());
        b().h(entry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(c this$0, u source, Lifecycle.Event event) {
        Object objPrevious;
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (event == Lifecycle.Event.ON_CREATE) {
            DialogFragment dialogFragment = (DialogFragment) source;
            Iterable iterable = (Iterable) this$0.b().b().getValue();
            if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    if (Intrinsics.c(((NavBackStackEntry) it.next()).g(), dialogFragment.getTag())) {
                        return;
                    }
                }
            }
            dialogFragment.dismiss();
            return;
        }
        if (event == Lifecycle.Event.ON_STOP) {
            DialogFragment dialogFragment2 = (DialogFragment) source;
            if (dialogFragment2.requireDialog().isShowing()) {
                return;
            }
            List list = (List) this$0.b().b().getValue();
            ListIterator listIterator = list.listIterator(list.size());
            do {
                if (!listIterator.hasPrevious()) {
                    objPrevious = null;
                    break;
                }
                objPrevious = listIterator.previous();
            } while (!Intrinsics.c(((NavBackStackEntry) objPrevious).g(), dialogFragment2.getTag()));
            if (objPrevious == null) {
                throw new IllegalStateException(("Dialog " + dialogFragment2 + " has already been popped off of the Navigation back stack").toString());
            }
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) objPrevious;
            if (!Intrinsics.c(CollectionsKt.v0(list), navBackStackEntry)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Dialog ");
                sb2.append(dialogFragment2);
                sb2.append(" was dismissed while it was not the top of the back stack, popping all dialogs above this dismissed dialog");
            }
            this$0.j(navBackStackEntry, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(c this$0, FragmentManager noName_0, Fragment childFragment) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(noName_0, "$noName_0");
        Intrinsics.h(childFragment, "childFragment");
        if (this$0.restoredTagsAwaitingAttach.remove(childFragment.getTag())) {
            childFragment.getLifecycle().a(this$0.observer);
        }
    }

    @Override // androidx.navigation.Navigator
    public void e(List entries, l navOptions, Navigator.a navigatorExtras) {
        Intrinsics.h(entries, "entries");
        if (this.fragmentManager.T0()) {
            return;
        }
        Iterator it = entries.iterator();
        while (it.hasNext()) {
            o((NavBackStackEntry) it.next());
        }
    }

    @Override // androidx.navigation.Navigator
    public void f(androidx.navigation.r state) {
        Lifecycle lifecycle;
        Intrinsics.h(state, "state");
        super.f(state);
        for (NavBackStackEntry navBackStackEntry : (List) state.b().getValue()) {
            DialogFragment dialogFragment = (DialogFragment) this.fragmentManager.k0(navBackStackEntry.g());
            Unit unit = null;
            if (dialogFragment != null && (lifecycle = dialogFragment.getLifecycle()) != null) {
                lifecycle.a(this.observer);
                unit = Unit.f67061a;
            }
            if (unit == null) {
                this.restoredTagsAwaitingAttach.add(navBackStackEntry.g());
            }
        }
        this.fragmentManager.k(new s() { // from class: androidx.navigation.fragment.b
            @Override // androidx.fragment.app.s
            public final void a(FragmentManager fragmentManager, Fragment fragment) {
                c.q(this.f13888a, fragmentManager, fragment);
            }
        });
    }

    @Override // androidx.navigation.Navigator
    public void j(NavBackStackEntry popUpTo, boolean savedState) {
        Intrinsics.h(popUpTo, "popUpTo");
        if (this.fragmentManager.T0()) {
            return;
        }
        List list = (List) b().b().getValue();
        Iterator it = CollectionsKt.D0(list.subList(list.indexOf(popUpTo), list.size())).iterator();
        while (it.hasNext()) {
            Fragment fragmentK0 = this.fragmentManager.k0(((NavBackStackEntry) it.next()).g());
            if (fragmentK0 != null) {
                fragmentK0.getLifecycle().d(this.observer);
                ((DialogFragment) fragmentK0).dismiss();
            }
        }
        b().g(popUpTo, savedState);
    }

    @Override // androidx.navigation.Navigator
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public b a() {
        return new b(this);
    }
}
