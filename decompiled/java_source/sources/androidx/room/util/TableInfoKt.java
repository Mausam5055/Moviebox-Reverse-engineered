package androidx.room.util;

import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TableInfoKt {
    private static final boolean a(String str) {
        if (str.length() == 0) {
            return false;
        }
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < str.length()) {
            char cCharAt = str.charAt(i11);
            int i14 = i13 + 1;
            if (i13 == 0 && cCharAt != '(') {
                return false;
            }
            if (cCharAt == '(') {
                i12++;
            } else if (cCharAt == ')' && (i12 = i12 - 1) == 0 && i13 != str.length() - 1) {
                return false;
            }
            i11++;
            i13 = i14;
        }
        return i12 == 0;
    }

    public static final boolean b(String current, String str) {
        Intrinsics.h(current, "current");
        if (Intrinsics.c(current, str)) {
            return true;
        }
        if (!a(current)) {
            return false;
        }
        String strSubstring = current.substring(1, current.length() - 1);
        Intrinsics.g(strSubstring, "substring(...)");
        return Intrinsics.c(StringsKt.n1(strSubstring).toString(), str);
    }

    public static final boolean c(o.a aVar, Object obj) {
        Intrinsics.h(aVar, "<this>");
        if (aVar == obj) {
            return true;
        }
        if (!(obj instanceof o.a)) {
            return false;
        }
        o.a aVar2 = (o.a) obj;
        if (aVar.a() != aVar2.a() || !Intrinsics.c(aVar.f14802a, aVar2.f14802a) || aVar.f14804c != aVar2.f14804c) {
            return false;
        }
        String str = aVar.f14806e;
        String str2 = aVar2.f14806e;
        if (aVar.f14807f == 1 && aVar2.f14807f == 2 && str != null && !b(str, str2)) {
            return false;
        }
        if (aVar.f14807f == 2 && aVar2.f14807f == 1 && str2 != null && !b(str2, str)) {
            return false;
        }
        int i11 = aVar.f14807f;
        return (i11 == 0 || i11 != aVar2.f14807f || (str == null ? str2 == null : b(str, str2))) && aVar.f14808g == aVar2.f14808g;
    }

    public static final boolean d(o.c cVar, Object obj) {
        Intrinsics.h(cVar, "<this>");
        if (cVar == obj) {
            return true;
        }
        if (!(obj instanceof o.c)) {
            return false;
        }
        o.c cVar2 = (o.c) obj;
        if (Intrinsics.c(cVar.f14809a, cVar2.f14809a) && Intrinsics.c(cVar.f14810b, cVar2.f14810b) && Intrinsics.c(cVar.f14811c, cVar2.f14811c) && Intrinsics.c(cVar.f14812d, cVar2.f14812d)) {
            return Intrinsics.c(cVar.f14813e, cVar2.f14813e);
        }
        return false;
    }

    public static final boolean e(o.d dVar, Object obj) {
        Intrinsics.h(dVar, "<this>");
        if (dVar == obj) {
            return true;
        }
        if (!(obj instanceof o.d)) {
            return false;
        }
        o.d dVar2 = (o.d) obj;
        if (dVar.f14816b == dVar2.f14816b && Intrinsics.c(dVar.f14817c, dVar2.f14817c) && Intrinsics.c(dVar.f14818d, dVar2.f14818d)) {
            return StringsKt.W(dVar.f14815a, "index_", false, 2, null) ? StringsKt.W(dVar2.f14815a, "index_", false, 2, null) : Intrinsics.c(dVar.f14815a, dVar2.f14815a);
        }
        return false;
    }

    public static final boolean f(o oVar, Object obj) {
        Set set;
        Intrinsics.h(oVar, "<this>");
        if (oVar == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar2 = (o) obj;
        if (!Intrinsics.c(oVar.f14797a, oVar2.f14797a) || !Intrinsics.c(oVar.f14798b, oVar2.f14798b) || !Intrinsics.c(oVar.f14799c, oVar2.f14799c)) {
            return false;
        }
        Set set2 = oVar.f14800d;
        if (set2 == null || (set = oVar2.f14800d) == null) {
            return true;
        }
        return Intrinsics.c(set2, set);
    }

    public static final String g(Collection collection) {
        Intrinsics.h(collection, "collection");
        if (collection.isEmpty()) {
            return " }";
        }
        return StringsKt.j(CollectionsKt.s0(collection, ",\n", "\n", "\n", 0, null, null, 56, null), null, 1, null) + "},";
    }

    public static final int h(o.a aVar) {
        Intrinsics.h(aVar, "<this>");
        return (((((aVar.f14802a.hashCode() * 31) + aVar.f14808g) * 31) + (aVar.f14804c ? 1231 : 1237)) * 31) + aVar.f14805d;
    }

    public static final int i(o.c cVar) {
        Intrinsics.h(cVar, "<this>");
        return (((((((cVar.f14809a.hashCode() * 31) + cVar.f14810b.hashCode()) * 31) + cVar.f14811c.hashCode()) * 31) + cVar.f14812d.hashCode()) * 31) + cVar.f14813e.hashCode();
    }

    public static final int j(o.d dVar) {
        Intrinsics.h(dVar, "<this>");
        return ((((((StringsKt.W(dVar.f14815a, "index_", false, 2, null) ? -1184239155 : dVar.f14815a.hashCode()) * 31) + (dVar.f14816b ? 1 : 0)) * 31) + dVar.f14817c.hashCode()) * 31) + dVar.f14818d.hashCode();
    }

    public static final int k(o oVar) {
        Intrinsics.h(oVar, "<this>");
        return (((oVar.f14797a.hashCode() * 31) + oVar.f14798b.hashCode()) * 31) + oVar.f14799c.hashCode();
    }

    private static final void l(Collection collection) {
        StringsKt.j(CollectionsKt.s0(collection, ",", null, null, 0, null, null, 62, null), null, 1, null);
        StringsKt.j(" }", null, 1, null);
    }

    private static final void m(Collection collection) {
        StringsKt.j(CollectionsKt.s0(collection, ",", null, null, 0, null, null, 62, null), null, 1, null);
        StringsKt.j("},", null, 1, null);
    }

    public static final String n(o.a aVar) {
        Intrinsics.h(aVar, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n            |Column {\n            |   name = '");
        sb2.append(aVar.f14802a);
        sb2.append("',\n            |   type = '");
        sb2.append(aVar.f14803b);
        sb2.append("',\n            |   affinity = '");
        sb2.append(aVar.f14808g);
        sb2.append("',\n            |   notNull = '");
        sb2.append(aVar.f14804c);
        sb2.append("',\n            |   primaryKeyPosition = '");
        sb2.append(aVar.f14805d);
        sb2.append("',\n            |   defaultValue = '");
        String str = aVar.f14806e;
        if (str == null) {
            str = "undefined";
        }
        sb2.append(str);
        sb2.append("'\n            |}\n        ");
        return StringsKt.j(StringsKt.p(sb2.toString(), null, 1, null), null, 1, null);
    }

    public static final String o(o.c cVar) {
        Intrinsics.h(cVar, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n            |ForeignKey {\n            |   referenceTable = '");
        sb2.append(cVar.f14809a);
        sb2.append("',\n            |   onDelete = '");
        sb2.append(cVar.f14810b);
        sb2.append("',\n            |   onUpdate = '");
        sb2.append(cVar.f14811c);
        sb2.append("',\n            |   columnNames = {");
        m(CollectionsKt.H0(cVar.f14812d));
        Unit unit = Unit.f67061a;
        sb2.append(unit);
        sb2.append("\n            |   referenceColumnNames = {");
        l(CollectionsKt.H0(cVar.f14813e));
        sb2.append(unit);
        sb2.append("\n            |}\n        ");
        return StringsKt.j(StringsKt.p(sb2.toString(), null, 1, null), null, 1, null);
    }

    public static final String p(o.d dVar) {
        Intrinsics.h(dVar, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n            |Index {\n            |   name = '");
        sb2.append(dVar.f14815a);
        sb2.append("',\n            |   unique = '");
        sb2.append(dVar.f14816b);
        sb2.append("',\n            |   columns = {");
        m(dVar.f14817c);
        Unit unit = Unit.f67061a;
        sb2.append(unit);
        sb2.append("\n            |   orders = {");
        l(dVar.f14818d);
        sb2.append(unit);
        sb2.append("\n            |}\n        ");
        return StringsKt.j(StringsKt.p(sb2.toString(), null, 1, null), null, 1, null);
    }

    public static final String q(o oVar) {
        List listL;
        Intrinsics.h(oVar, "<this>");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n            |TableInfo {\n            |    name = '");
        sb2.append(oVar.f14797a);
        sb2.append("',\n            |    columns = {");
        sb2.append(g(CollectionsKt.I0(oVar.f14798b.values(), new Comparator() { // from class: androidx.room.util.TableInfoKt$toStringCommon$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                return ComparisonsKt.d(((o.a) t11).f14802a, ((o.a) t12).f14802a);
            }
        })));
        sb2.append("\n            |    foreignKeys = {");
        sb2.append(g(oVar.f14799c));
        sb2.append("\n            |    indices = {");
        Set set = oVar.f14800d;
        if (set == null || (listL = CollectionsKt.I0(set, new Comparator() { // from class: androidx.room.util.TableInfoKt$toStringCommon$$inlined$sortedBy$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t11, T t12) {
                return ComparisonsKt.d(((o.d) t11).f14815a, ((o.d) t12).f14815a);
            }
        })) == null) {
            listL = CollectionsKt.l();
        }
        sb2.append(g(listL));
        sb2.append("\n            |}\n        ");
        return StringsKt.p(sb2.toString(), null, 1, null);
    }
}
