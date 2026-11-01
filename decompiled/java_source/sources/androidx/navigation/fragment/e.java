package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import androidx.navigation.l;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0017\u0018\u0000 .2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002/0B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ1\u0010\u001d\u001a\u00020\u00112\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0011\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u001fH\u0016¢\u0006\u0004\b\"\u0010#R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010(R\u001a\u0010-\u001a\b\u0012\u0004\u0012\u00020*0)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,¨\u00061"}, d2 = {"Landroidx/navigation/fragment/e;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/fragment/e$b;", "Landroid/content/Context;", "context", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "containerId", "<init>", "(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V", "Landroidx/navigation/NavBackStackEntry;", "entry", "Landroidx/navigation/l;", "navOptions", "Landroidx/navigation/Navigator$a;", "navigatorExtras", "", "m", "(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)V", "popUpTo", "", "savedState", "j", "(Landroidx/navigation/NavBackStackEntry;Z)V", "l", "()Landroidx/navigation/fragment/e$b;", "", "entries", "e", "(Ljava/util/List;Landroidx/navigation/l;Landroidx/navigation/Navigator$a;)V", "Landroid/os/Bundle;", "i", "()Landroid/os/Bundle;", "h", "(Landroid/os/Bundle;)V", "c", "Landroid/content/Context;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/fragment/app/FragmentManager;", "I", "", "", "f", "Ljava/util/Set;", "savedIds", "g", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "navigation-fragment_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@Navigator.b("fragment")
public class e extends Navigator {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final a f13895g = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Context context;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final FragmentManager fragmentManager;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final int containerId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Set savedIds;

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static class b extends NavDestination {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private String f13900l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Navigator fragmentNavigator) {
            super(fragmentNavigator);
            Intrinsics.h(fragmentNavigator, "fragmentNavigator");
        }

        public final b A(String className) {
            Intrinsics.h(className, "className");
            this.f13900l = className;
            return this;
        }

        @Override // androidx.navigation.NavDestination
        public boolean equals(Object obj) {
            return obj != null && (obj instanceof b) && super.equals(obj) && Intrinsics.c(this.f13900l, ((b) obj).f13900l);
        }

        @Override // androidx.navigation.NavDestination
        public int hashCode() {
            int iHashCode = super.hashCode() * 31;
            String str = this.f13900l;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        @Override // androidx.navigation.NavDestination
        public void s(Context context, AttributeSet attrs) {
            Intrinsics.h(context, "context");
            Intrinsics.h(attrs, "attrs");
            super.s(context, attrs);
            TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attrs, R$styleable.FragmentNavigator);
            Intrinsics.g(typedArrayObtainAttributes, "context.resources.obtain…leable.FragmentNavigator)");
            String string = typedArrayObtainAttributes.getString(R$styleable.FragmentNavigator_android_name);
            if (string != null) {
                A(string);
            }
            Unit unit = Unit.f67061a;
            typedArrayObtainAttributes.recycle();
        }

        @Override // androidx.navigation.NavDestination
        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(super.toString());
            sb2.append(" class=");
            String str = this.f13900l;
            if (str == null) {
                sb2.append("null");
            } else {
                sb2.append(str);
            }
            String string = sb2.toString();
            Intrinsics.g(string, "sb.toString()");
            return string;
        }

        public final String z() {
            String str = this.f13900l;
            if (str == null) {
                throw new IllegalStateException("Fragment class was not set");
            }
            if (str != null) {
                return str;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
        }
    }

    public e(Context context, FragmentManager fragmentManager, int i11) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fragmentManager, "fragmentManager");
        this.context = context;
        this.fragmentManager = fragmentManager;
        this.containerId = i11;
        this.savedIds = new LinkedHashSet();
    }

    private final void m(NavBackStackEntry entry, l navOptions, Navigator.a navigatorExtras) {
        List list = (List) b().b().getValue();
        boolean zIsEmpty = list.isEmpty();
        if (navOptions != null && !zIsEmpty && navOptions.i() && this.savedIds.remove(entry.g())) {
            this.fragmentManager.u1(entry.g());
            b().h(entry);
            return;
        }
        b bVar = (b) entry.f();
        Bundle bundleD = entry.d();
        String strZ = bVar.z();
        boolean z10 = false;
        if (strZ.charAt(0) == '.') {
            strZ = Intrinsics.q(this.context.getPackageName(), strZ);
        }
        Fragment fragmentInstantiate = this.fragmentManager.w0().instantiate(this.context.getClassLoader(), strZ);
        Intrinsics.g(fragmentInstantiate, "fragmentManager.fragment…t.classLoader, className)");
        fragmentInstantiate.setArguments(bundleD);
        w wVarP = this.fragmentManager.p();
        Intrinsics.g(wVarP, "fragmentManager.beginTransaction()");
        int iA = navOptions == null ? -1 : navOptions.a();
        int iB = navOptions == null ? -1 : navOptions.b();
        int iC = navOptions == null ? -1 : navOptions.c();
        int iD = navOptions == null ? -1 : navOptions.d();
        if (iA != -1 || iB != -1 || iC != -1 || iD != -1) {
            if (iA == -1) {
                iA = 0;
            }
            if (iB == -1) {
                iB = 0;
            }
            if (iC == -1) {
                iC = 0;
            }
            if (iD == -1) {
                iD = 0;
            }
            wVarP.u(iA, iB, iC, iD);
        }
        wVarP.s(this.containerId, fragmentInstantiate);
        wVarP.w(fragmentInstantiate);
        boolean z11 = navOptions != null && !zIsEmpty && navOptions.g() && ((NavBackStackEntry) CollectionsKt.u0(list)).f().n() == bVar.n();
        if (zIsEmpty) {
            z10 = true;
        } else if (!z11) {
            wVarP.g(entry.g());
            z10 = true;
        } else if (list.size() > 1) {
            this.fragmentManager.i1(entry.g(), 1);
            wVarP.g(entry.g());
        }
        wVarP.x(true);
        wVarP.i();
        if (z10) {
            b().h(entry);
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
            m((NavBackStackEntry) it.next(), navOptions, navigatorExtras);
        }
    }

    @Override // androidx.navigation.Navigator
    public void h(Bundle savedState) {
        Intrinsics.h(savedState, "savedState");
        ArrayList<String> stringArrayList = savedState.getStringArrayList("androidx-nav-fragment:navigator:savedIds");
        if (stringArrayList != null) {
            this.savedIds.clear();
            CollectionsKt.B(this.savedIds, stringArrayList);
        }
    }

    @Override // androidx.navigation.Navigator
    public Bundle i() {
        if (this.savedIds.isEmpty()) {
            return null;
        }
        return androidx.core.os.d.b(TuplesKt.a("androidx-nav-fragment:navigator:savedIds", new ArrayList(this.savedIds)));
    }

    @Override // androidx.navigation.Navigator
    public void j(NavBackStackEntry popUpTo, boolean savedState) {
        Intrinsics.h(popUpTo, "popUpTo");
        if (this.fragmentManager.T0()) {
            return;
        }
        if (savedState) {
            List list = (List) b().b().getValue();
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) CollectionsKt.i0(list);
            for (NavBackStackEntry navBackStackEntry2 : CollectionsKt.D0(list.subList(list.indexOf(popUpTo), list.size()))) {
                if (Intrinsics.c(navBackStackEntry2, navBackStackEntry)) {
                    Intrinsics.q("FragmentManager cannot save the state of the initial destination ", navBackStackEntry2);
                } else {
                    this.fragmentManager.z1(navBackStackEntry2.g());
                    this.savedIds.add(navBackStackEntry2.g());
                }
            }
        } else {
            this.fragmentManager.i1(popUpTo.g(), 1);
        }
        b().g(popUpTo, savedState);
    }

    @Override // androidx.navigation.Navigator
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public b a() {
        return new b(this);
    }
}
