package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.collection.a1;
import androidx.collection.y0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class NavDestination {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Companion f13829j = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Map f13830k = new LinkedHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f13831a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NavGraph f13832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f13833c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CharSequence f13834d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f13835e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final y0 f13836f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map f13837g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f13838h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f13839i;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a(String str) {
            return str != null ? Intrinsics.q("android-app://androidx.navigation/", str) : "";
        }

        public final String b(Context context, int i11) {
            String strValueOf;
            Intrinsics.h(context, "context");
            if (i11 <= 16777215) {
                return String.valueOf(i11);
            }
            try {
                strValueOf = context.getResources().getResourceName(i11);
            } catch (Resources.NotFoundException unused) {
                strValueOf = String.valueOf(i11);
            }
            Intrinsics.g(strValueOf, "try {\n                co….toString()\n            }");
            return strValueOf;
        }

        public final Sequence c(NavDestination navDestination) {
            Intrinsics.h(navDestination, "<this>");
            return SequencesKt.h(navDestination, new Function1<NavDestination, NavDestination>() { // from class: androidx.navigation.NavDestination$Companion$hierarchy$1
                @Override // kotlin.jvm.functions.Function1
                public final NavDestination invoke(NavDestination it) {
                    Intrinsics.h(it, "it");
                    return it.p();
                }
            });
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final NavDestination f13840a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Bundle f13841b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f13842c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f13843d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f13844e;

        public a(NavDestination destination, Bundle bundle, boolean z10, boolean z11, int i11) {
            Intrinsics.h(destination, "destination");
            this.f13840a = destination;
            this.f13841b = bundle;
            this.f13842c = z10;
            this.f13843d = z11;
            this.f13844e = i11;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(a other) {
            Intrinsics.h(other, "other");
            boolean z10 = this.f13842c;
            if (z10 && !other.f13842c) {
                return 1;
            }
            if (!z10 && other.f13842c) {
                return -1;
            }
            Bundle bundle = this.f13841b;
            if (bundle != null && other.f13841b == null) {
                return 1;
            }
            if (bundle == null && other.f13841b != null) {
                return -1;
            }
            if (bundle != null) {
                int size = bundle.size();
                Bundle bundle2 = other.f13841b;
                Intrinsics.e(bundle2);
                int size2 = size - bundle2.size();
                if (size2 > 0) {
                    return 1;
                }
                if (size2 < 0) {
                    return -1;
                }
            }
            boolean z11 = this.f13843d;
            if (z11 && !other.f13843d) {
                return 1;
            }
            if (z11 || !other.f13843d) {
                return this.f13844e - other.f13844e;
            }
            return -1;
        }

        public final NavDestination b() {
            return this.f13840a;
        }

        public final Bundle d() {
            return this.f13841b;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDestination(Navigator navigator) {
        this(q.f13955b.a(navigator.getClass()));
        Intrinsics.h(navigator, "navigator");
    }

    public NavDestination(String navigatorName) {
        Intrinsics.h(navigatorName, "navigatorName");
        this.f13831a = navigatorName;
        this.f13835e = new ArrayList();
        this.f13836f = new y0();
        this.f13837g = new LinkedHashMap();
    }

    public static /* synthetic */ int[] j(NavDestination navDestination, NavDestination navDestination2, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: buildDeepLinkIds");
        }
        if ((i11 & 1) != 0) {
            navDestination2 = null;
        }
        return navDestination.h(navDestination2);
    }

    public final void a(String argumentName, d argument) {
        Intrinsics.h(argumentName, "argumentName");
        Intrinsics.h(argument, "argument");
        this.f13837g.put(argumentName, argument);
    }

    public final void c(NavDeepLink navDeepLink) {
        Intrinsics.h(navDeepLink, "navDeepLink");
        Map mapL = l();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : mapL.entrySet()) {
            d dVar = (d) entry.getValue();
            if (!dVar.c() && !dVar.b()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Set setKeySet = linkedHashMap.keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setKeySet) {
            if (!navDeepLink.e().contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            this.f13835e.add(navDeepLink);
            return;
        }
        throw new IllegalArgumentException(("Deep link " + ((Object) navDeepLink.k()) + " can't be used to open destination " + this + ".\nFollowing required arguments are missing: " + arrayList).toString());
    }

    public final void e(String uriPattern) {
        Intrinsics.h(uriPattern, "uriPattern");
        c(new NavDeepLink.a().d(uriPattern).a());
    }

    public boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        if (obj == null || !(obj instanceof NavDestination)) {
            return false;
        }
        NavDestination navDestination = (NavDestination) obj;
        boolean z12 = CollectionsKt.o0(this.f13835e, navDestination.f13835e).size() == this.f13835e.size();
        if (this.f13836f.p() != navDestination.f13836f.p()) {
            z10 = false;
            break;
        }
        Iterator it = SequencesKt.e(a1.a(this.f13836f)).getF67431a();
        while (true) {
            if (!it.hasNext()) {
                Iterator it2 = SequencesKt.e(a1.a(navDestination.f13836f)).getF67431a();
                while (true) {
                    if (!it2.hasNext()) {
                        z10 = true;
                        break;
                    }
                    if (!this.f13836f.e((c) it2.next())) {
                    }
                }
            } else {
                if (!navDestination.f13836f.e((c) it.next())) {
                }
            }
            z10 = false;
            break;
        }
        if (l().size() != navDestination.l().size()) {
            z11 = false;
            break;
        }
        Iterator it3 = MapsKt.x(l()).getF67431a();
        while (true) {
            if (!it3.hasNext()) {
                Iterator it4 = MapsKt.x(navDestination.l()).getF67431a();
                while (true) {
                    if (!it4.hasNext()) {
                        z11 = true;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it4.next();
                    if (!l().containsKey(entry.getKey()) || !Intrinsics.c(l().get(entry.getKey()), entry.getValue())) {
                    }
                }
            } else {
                Map.Entry entry2 = (Map.Entry) it3.next();
                if (!navDestination.l().containsKey(entry2.getKey()) || !Intrinsics.c(navDestination.l().get(entry2.getKey()), entry2.getValue())) {
                }
            }
            z11 = false;
            break;
        }
        return this.f13838h == navDestination.f13838h && Intrinsics.c(this.f13839i, navDestination.f13839i) && z12 && z10 && z11;
    }

    public final Bundle f(Bundle bundle) {
        Map map;
        if (bundle == null && ((map = this.f13837g) == null || map.isEmpty())) {
            return null;
        }
        Bundle bundle2 = new Bundle();
        for (Map.Entry entry : this.f13837g.entrySet()) {
            ((d) entry.getValue()).d((String) entry.getKey(), bundle2);
        }
        if (bundle != null) {
            bundle2.putAll(bundle);
            for (Map.Entry entry2 : this.f13837g.entrySet()) {
                String str = (String) entry2.getKey();
                d dVar = (d) entry2.getValue();
                if (!dVar.e(str, bundle2)) {
                    throw new IllegalArgumentException(("Wrong argument type for '" + str + "' in argument bundle. " + dVar.a().b() + " expected.").toString());
                }
            }
        }
        return bundle2;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0024  */
    /* JADX WARN: Code duplicated, block: B:14:0x002e  */
    public final int[] h(NavDestination navDestination) {
        ArrayDeque arrayDeque = new ArrayDeque();
        NavDestination navDestination2 = this;
        while (true) {
            Intrinsics.e(navDestination2);
            NavGraph navGraph = navDestination2.f13832b;
            if ((navDestination == null ? null : navDestination.f13832b) != null) {
                NavGraph navGraph2 = navDestination.f13832b;
                Intrinsics.e(navGraph2);
                if (navGraph2.A(navDestination2.f13838h) != navDestination2) {
                    if (navGraph != null || navGraph.G() != navDestination2.f13838h) {
                        arrayDeque.addFirst(navDestination2);
                    }
                    if (!Intrinsics.c(navGraph, navDestination) || navGraph == null) {
                        break;
                    }
                    navDestination2 = navGraph;
                } else {
                    arrayDeque.addFirst(navDestination2);
                    break;
                }
            } else {
                if (navGraph != null) {
                    arrayDeque.addFirst(navDestination2);
                } else {
                    arrayDeque.addFirst(navDestination2);
                }
                if (!Intrinsics.c(navGraph, navDestination)) {
                    break;
                }
                navDestination2 = navGraph;
            }
        }
        List listR0 = CollectionsKt.R0(arrayDeque);
        ArrayList arrayList = new ArrayList(CollectionsKt.v(listR0, 10));
        Iterator it = listR0.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((NavDestination) it.next()).n()));
        }
        return CollectionsKt.Q0(arrayList);
    }

    public int hashCode() {
        Set<String> setKeySet;
        int i11 = this.f13838h * 31;
        String str = this.f13839i;
        int iHashCode = i11 + (str == null ? 0 : str.hashCode());
        for (NavDeepLink navDeepLink : this.f13835e) {
            int i12 = iHashCode * 31;
            String strK = navDeepLink.k();
            int iHashCode2 = (i12 + (strK == null ? 0 : strK.hashCode())) * 31;
            String strD = navDeepLink.d();
            int iHashCode3 = (iHashCode2 + (strD == null ? 0 : strD.hashCode())) * 31;
            String strG = navDeepLink.g();
            iHashCode = iHashCode3 + (strG == null ? 0 : strG.hashCode());
        }
        Iterator itA = a1.a(this.f13836f);
        while (itA.hasNext()) {
            c cVar = (c) itA.next();
            int iB = ((iHashCode * 31) + cVar.b()) * 31;
            l lVarC = cVar.c();
            iHashCode = iB + (lVarC == null ? 0 : lVarC.hashCode());
            Bundle bundleA = cVar.a();
            if (bundleA != null && (setKeySet = bundleA.keySet()) != null) {
                for (String str2 : setKeySet) {
                    int i13 = iHashCode * 31;
                    Bundle bundleA2 = cVar.a();
                    Intrinsics.e(bundleA2);
                    Object obj = bundleA2.get(str2);
                    iHashCode = i13 + (obj == null ? 0 : obj.hashCode());
                }
            }
        }
        for (String str3 : l().keySet()) {
            int iHashCode4 = ((iHashCode * 31) + str3.hashCode()) * 31;
            Object obj2 = l().get(str3);
            iHashCode = iHashCode4 + (obj2 == null ? 0 : obj2.hashCode());
        }
        return iHashCode;
    }

    public final Map l() {
        return MapsKt.u(this.f13837g);
    }

    public String m() {
        String str = this.f13833c;
        return str == null ? String.valueOf(this.f13838h) : str;
    }

    public final int n() {
        return this.f13838h;
    }

    public final String o() {
        return this.f13831a;
    }

    public final NavGraph p() {
        return this.f13832b;
    }

    public final String q() {
        return this.f13839i;
    }

    public a r(g navDeepLinkRequest) {
        Intrinsics.h(navDeepLinkRequest, "navDeepLinkRequest");
        if (this.f13835e.isEmpty()) {
            return null;
        }
        a aVar = null;
        for (NavDeepLink navDeepLink : this.f13835e) {
            Uri uriC = navDeepLinkRequest.c();
            Bundle bundleF = uriC != null ? navDeepLink.f(uriC, l()) : null;
            String strA = navDeepLinkRequest.a();
            boolean z10 = strA != null && Intrinsics.c(strA, navDeepLink.d());
            String strB = navDeepLinkRequest.b();
            int iH = strB != null ? navDeepLink.h(strB) : -1;
            if (bundleF != null || z10 || iH > -1) {
                a aVar2 = new a(this, bundleF, navDeepLink.l(), z10, iH);
                if (aVar == null || aVar2.compareTo(aVar) > 0) {
                    aVar = aVar2;
                }
            }
        }
        return aVar;
    }

    public void s(Context context, AttributeSet attrs) {
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attrs, androidx.navigation.common.R$styleable.Navigator);
        Intrinsics.g(typedArrayObtainAttributes, "context.resources.obtain…s, R.styleable.Navigator)");
        x(typedArrayObtainAttributes.getString(androidx.navigation.common.R$styleable.Navigator_route));
        if (typedArrayObtainAttributes.hasValue(androidx.navigation.common.R$styleable.Navigator_android_id)) {
            u(typedArrayObtainAttributes.getResourceId(androidx.navigation.common.R$styleable.Navigator_android_id, 0));
            this.f13833c = f13829j.b(context, n());
        }
        v(typedArrayObtainAttributes.getText(androidx.navigation.common.R$styleable.Navigator_android_label));
        Unit unit = Unit.f67061a;
        typedArrayObtainAttributes.recycle();
    }

    public final void t(int i11, c action) {
        Intrinsics.h(action, "action");
        if (y()) {
            if (i11 == 0) {
                throw new IllegalArgumentException("Cannot have an action with actionId 0");
            }
            this.f13836f.l(i11, action);
        } else {
            throw new UnsupportedOperationException("Cannot add action " + i11 + " to " + this + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append("(");
        String str = this.f13833c;
        if (str == null) {
            sb2.append("0x");
            sb2.append(Integer.toHexString(this.f13838h));
        } else {
            sb2.append(str);
        }
        sb2.append(")");
        String str2 = this.f13839i;
        if (str2 != null && !StringsKt.q0(str2)) {
            sb2.append(" route=");
            sb2.append(this.f13839i);
        }
        if (this.f13834d != null) {
            sb2.append(" label=");
            sb2.append(this.f13834d);
        }
        String string = sb2.toString();
        Intrinsics.g(string, "sb.toString()");
        return string;
    }

    public final void u(int i11) {
        this.f13838h = i11;
        this.f13833c = null;
    }

    public final void v(CharSequence charSequence) {
        this.f13834d = charSequence;
    }

    public final void w(NavGraph navGraph) {
        this.f13832b = navGraph;
    }

    public final void x(String str) {
        if (str == null) {
            u(0);
        } else {
            if (StringsKt.q0(str)) {
                throw new IllegalArgumentException("Cannot have an empty route");
            }
            String strA = f13829j.a(str);
            u(strA.hashCode());
            e(strA);
        }
        List list = this.f13835e;
        List list2 = list;
        for (Object obj : list) {
            if (Intrinsics.c(((NavDeepLink) obj).k(), f13829j.a(this.f13839i))) {
                list2.remove(obj);
                this.f13839i = str;
            }
        }
        obj = null;
        list2.remove(obj);
        this.f13839i = str;
    }

    public boolean y() {
        return true;
    }
}
