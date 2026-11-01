package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class NavDeepLink {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final b f13808l = new b(null);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Pattern f13809m = Pattern.compile("^[a-zA-Z]+[+\\w\\-.]*:");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f13810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f13811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f13812c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f13815f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f13817h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f13818i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f13820k;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f13813d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f13814e = new LinkedHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f13816g = LazyKt.b(new Function0<Pattern>() { // from class: androidx.navigation.NavDeepLink$pattern$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Pattern invoke() {
            String str = this.this$0.f13815f;
            if (str == null) {
                return null;
            }
            return Pattern.compile(str, 2);
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f13819j = LazyKt.b(new Function0<Pattern>() { // from class: androidx.navigation.NavDeepLink$mimeTypePattern$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Pattern invoke() {
            String str = this.this$0.f13818i;
            if (str == null) {
                return null;
            }
            return Pattern.compile(str);
        }
    });

    public static final class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final C0106a f13821d = new C0106a(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13822a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f13823b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f13824c;

        /* JADX INFO: renamed from: androidx.navigation.NavDeepLink$a$a, reason: collision with other inner class name */
        public static final class C0106a {
            private C0106a() {
            }

            public /* synthetic */ C0106a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public final NavDeepLink a() {
            return new NavDeepLink(this.f13822a, this.f13823b, this.f13824c);
        }

        public final a b(String action) {
            Intrinsics.h(action, "action");
            if (action.length() <= 0) {
                throw new IllegalArgumentException("The NavDeepLink cannot have an empty action.");
            }
            this.f13823b = action;
            return this;
        }

        public final a c(String mimeType) {
            Intrinsics.h(mimeType, "mimeType");
            this.f13824c = mimeType;
            return this;
        }

        public final a d(String uriPattern) {
            Intrinsics.h(uriPattern, "uriPattern");
            this.f13822a = uriPattern;
            return this;
        }
    }

    private static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private static final class c implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13825a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f13826b;

        public c(String mimeType) {
            List listL;
            Intrinsics.h(mimeType, "mimeType");
            List<String> listSplit = new Regex("/").split(mimeType, 0);
            if (listSplit.isEmpty()) {
                listL = CollectionsKt.l();
            } else {
                ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                while (listIterator.hasPrevious()) {
                    if (listIterator.previous().length() != 0) {
                        listL = CollectionsKt.K0(listSplit, listIterator.nextIndex() + 1);
                    }
                }
                listL = CollectionsKt.l();
            }
            this.f13825a = (String) listL.get(0);
            this.f13826b = (String) listL.get(1);
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(c other) {
            Intrinsics.h(other, "other");
            int i11 = Intrinsics.c(this.f13825a, other.f13825a) ? 2 : 0;
            return Intrinsics.c(this.f13826b, other.f13826b) ? i11 + 1 : i11;
        }

        public final String b() {
            return this.f13826b;
        }

        public final String d() {
            return this.f13825a;
        }
    }

    private static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f13827a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List f13828b = new ArrayList();

        public final void a(String name) {
            Intrinsics.h(name, "name");
            this.f13828b.add(name);
        }

        public final String b(int i11) {
            return (String) this.f13828b.get(i11);
        }

        public final List c() {
            return this.f13828b;
        }

        public final String d() {
            return this.f13827a;
        }

        public final void e(String str) {
            this.f13827a = str;
        }

        public final int f() {
            return this.f13828b.size();
        }
    }

    public NavDeepLink(String str, String str2, String str3) {
        this.f13810a = str;
        this.f13811b = str2;
        this.f13812c = str3;
        if (str != null) {
            Uri uri = Uri.parse(str);
            this.f13817h = uri.getQuery() != null;
            StringBuilder sb2 = new StringBuilder("^");
            if (!f13809m.matcher(str).find()) {
                sb2.append("http[s]?://");
            }
            Pattern fillInPattern = Pattern.compile("\\{(.+?)\\}");
            if (this.f13817h) {
                Matcher matcher = Pattern.compile("(\\?)").matcher(str);
                if (matcher.find()) {
                    String strSubstring = str.substring(0, matcher.start());
                    Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    Intrinsics.g(fillInPattern, "fillInPattern");
                    this.f13820k = c(strSubstring, sb2, fillInPattern);
                }
                for (String paramName : uri.getQueryParameterNames()) {
                    StringBuilder sb3 = new StringBuilder();
                    String queryParameter = uri.getQueryParameter(paramName);
                    if (queryParameter == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                    }
                    Matcher matcher2 = fillInPattern.matcher(queryParameter);
                    d dVar = new d();
                    int iEnd = 0;
                    while (matcher2.find()) {
                        String strGroup = matcher2.group(1);
                        if (strGroup == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                        }
                        dVar.a(strGroup);
                        String strSubstring2 = queryParameter.substring(iEnd, matcher2.start());
                        Intrinsics.g(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                        sb3.append(Pattern.quote(strSubstring2));
                        sb3.append("(.+?)?");
                        iEnd = matcher2.end();
                    }
                    if (iEnd < queryParameter.length()) {
                        String strSubstring3 = queryParameter.substring(iEnd);
                        Intrinsics.g(strSubstring3, "this as java.lang.String).substring(startIndex)");
                        sb3.append(Pattern.quote(strSubstring3));
                    }
                    String string = sb3.toString();
                    Intrinsics.g(string, "argRegex.toString()");
                    dVar.e(StringsKt.Q(string, ".*", "\\E.*\\Q", false, 4, null));
                    Map map = this.f13814e;
                    Intrinsics.g(paramName, "paramName");
                    map.put(paramName, dVar);
                }
            } else {
                Intrinsics.g(fillInPattern, "fillInPattern");
                this.f13820k = c(str, sb2, fillInPattern);
            }
            String string2 = sb2.toString();
            Intrinsics.g(string2, "uriRegex.toString()");
            this.f13815f = StringsKt.Q(string2, ".*", "\\E.*\\Q", false, 4, null);
        }
        if (this.f13812c != null) {
            if (!Pattern.compile("^[\\s\\S]+/[\\s\\S]+$").matcher(this.f13812c).matches()) {
                throw new IllegalArgumentException(("The given mimeType " + ((Object) g()) + " does not match to required \"type/subtype\" format").toString());
            }
            c cVar = new c(this.f13812c);
            this.f13818i = StringsKt.Q("^(" + cVar.d() + "|[*]+)/(" + cVar.b() + "|[*]+)$", "*|[*]", "[\\s\\S]", false, 4, null);
        }
    }

    private final boolean c(String str, StringBuilder sb2, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        boolean z10 = !StringsKt.c0(str, ".*", false, 2, null);
        int iEnd = 0;
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (strGroup == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
            this.f13813d.add(strGroup);
            String strSubstring = str.substring(iEnd, matcher.start());
            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            sb2.append(Pattern.quote(strSubstring));
            sb2.append("([^/]+?)");
            iEnd = matcher.end();
            z10 = false;
        }
        if (iEnd < str.length()) {
            String strSubstring2 = str.substring(iEnd);
            Intrinsics.g(strSubstring2, "this as java.lang.String).substring(startIndex)");
            sb2.append(Pattern.quote(strSubstring2));
        }
        sb2.append("($|(\\?(.)*)|(\\#(.)*))");
        return z10;
    }

    private final Pattern i() {
        return (Pattern) this.f13819j.getValue();
    }

    private final Pattern j() {
        return (Pattern) this.f13816g.getValue();
    }

    private final boolean m(Bundle bundle, String str, String str2, androidx.navigation.d dVar) {
        if (dVar != null) {
            dVar.a().d(bundle, str, str2);
            return false;
        }
        bundle.putString(str, str2);
        return false;
    }

    public final String d() {
        return this.f13811b;
    }

    public final List e() {
        List list = this.f13813d;
        Collection collectionValues = this.f13814e.values();
        ArrayList arrayList = new ArrayList();
        Iterator it = collectionValues.iterator();
        while (it.hasNext()) {
            CollectionsKt.B(arrayList, ((d) it.next()).c());
        }
        return CollectionsKt.B0(list, arrayList);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof NavDeepLink)) {
            return false;
        }
        NavDeepLink navDeepLink = (NavDeepLink) obj;
        return Intrinsics.c(this.f13810a, navDeepLink.f13810a) && Intrinsics.c(this.f13811b, navDeepLink.f13811b) && Intrinsics.c(this.f13812c, navDeepLink.f13812c);
    }

    public final Bundle f(Uri deepLink, Map arguments) {
        Matcher matcher;
        String strGroup;
        Intrinsics.h(deepLink, "deepLink");
        Intrinsics.h(arguments, "arguments");
        Pattern patternJ = j();
        Matcher matcher2 = patternJ == null ? null : patternJ.matcher(deepLink.toString());
        if (matcher2 == null || !matcher2.matches()) {
            return null;
        }
        Bundle bundle = new Bundle();
        int size = this.f13813d.size();
        int i11 = 0;
        while (i11 < size) {
            int i12 = i11 + 1;
            String str = (String) this.f13813d.get(i11);
            String value = Uri.decode(matcher2.group(i12));
            androidx.navigation.d dVar = (androidx.navigation.d) arguments.get(str);
            try {
                Intrinsics.g(value, "value");
                if (m(bundle, str, value, dVar)) {
                    return null;
                }
                i11 = i12;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        if (this.f13817h) {
            for (String str2 : this.f13814e.keySet()) {
                d dVar2 = (d) this.f13814e.get(str2);
                String queryParameter = deepLink.getQueryParameter(str2);
                if (queryParameter != null) {
                    Intrinsics.e(dVar2);
                    matcher = Pattern.compile(dVar2.d(), 32).matcher(queryParameter);
                    if (!matcher.matches()) {
                        return null;
                    }
                } else {
                    matcher = null;
                }
                Bundle bundle2 = new Bundle();
                try {
                    Intrinsics.e(dVar2);
                    int iF = dVar2.f();
                    int i13 = 0;
                    while (i13 < iF) {
                        int i14 = i13 + 1;
                        if (matcher != null) {
                            strGroup = matcher.group(i14);
                            if (strGroup == null) {
                                strGroup = "";
                            }
                        } else {
                            strGroup = null;
                        }
                        String strB = dVar2.b(i13);
                        androidx.navigation.d dVar3 = (androidx.navigation.d) arguments.get(strB);
                        if (strGroup != null) {
                            if (!Intrinsics.c(strGroup, '{' + strB + '}') && m(bundle2, strB, strGroup, dVar3)) {
                                return null;
                            }
                        }
                        i13 = i14;
                    }
                    bundle.putAll(bundle2);
                } catch (IllegalArgumentException unused2) {
                }
            }
        }
        for (Map.Entry entry : arguments.entrySet()) {
            String str3 = (String) entry.getKey();
            androidx.navigation.d dVar4 = (androidx.navigation.d) entry.getValue();
            if (dVar4 != null && !dVar4.c() && !dVar4.b() && !bundle.containsKey(str3)) {
                return null;
            }
        }
        return bundle;
    }

    public final String g() {
        return this.f13812c;
    }

    public final int h(String mimeType) {
        Intrinsics.h(mimeType, "mimeType");
        if (this.f13812c != null) {
            Pattern patternI = i();
            Intrinsics.e(patternI);
            if (patternI.matcher(mimeType).matches()) {
                return new c(this.f13812c).compareTo(new c(mimeType));
            }
        }
        return -1;
    }

    public int hashCode() {
        String str = this.f13810a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f13811b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f13812c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String k() {
        return this.f13810a;
    }

    public final boolean l() {
        return this.f13820k;
    }
}
