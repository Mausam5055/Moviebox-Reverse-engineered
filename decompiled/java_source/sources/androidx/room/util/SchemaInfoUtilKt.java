package androidx.room.util;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SchemaInfoUtilKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f14790a = {"tokenize=", "compress=", "content=", "languageid=", "matchinfo=", "notindexed=", "order=", "prefix=", "uncompress="};

    public static final int a(String str) {
        if (str == null) {
            return 5;
        }
        String upperCase = str.toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        if (StringsKt.c0(upperCase, "INT", false, 2, null)) {
            return 3;
        }
        if (StringsKt.c0(upperCase, "CHAR", false, 2, null) || StringsKt.c0(upperCase, "CLOB", false, 2, null) || StringsKt.c0(upperCase, "TEXT", false, 2, null)) {
            return 2;
        }
        if (StringsKt.c0(upperCase, "BLOB", false, 2, null)) {
            return 5;
        }
        return (StringsKt.c0(upperCase, "REAL", false, 2, null) || StringsKt.c0(upperCase, "FLOA", false, 2, null) || StringsKt.c0(upperCase, "DOUB", false, 2, null)) ? 4 : 1;
    }

    private static final Map b(z3.b bVar, String str) throws Exception {
        z3.e eVarD0 = bVar.D0("PRAGMA table_info(`" + str + "`)");
        try {
            String str2 = null;
            if (!eVarD0.A0()) {
                Map mapH = MapsKt.h();
                AutoCloseableKt.a(eVarD0, null);
                return mapH;
            }
            int iA = k.a(eVarD0, "name");
            int iA2 = k.a(eVarD0, NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iA3 = k.a(eVarD0, "notnull");
            int iA4 = k.a(eVarD0, "pk");
            int iA5 = k.a(eVarD0, "dflt_value");
            Map mapC = MapsKt.c();
            while (true) {
                String strN0 = eVarD0.n0(iA);
                mapC.put(strN0, new o.a(strN0, eVarD0.n0(iA2), eVarD0.getLong(iA3) != 0, (int) eVarD0.getLong(iA4), eVarD0.isNull(iA5) ? str2 : eVarD0.n0(iA5), 2));
                if (!eVarD0.A0()) {
                    Map mapB = MapsKt.b(mapC);
                    AutoCloseableKt.a(eVarD0, null);
                    return mapB;
                }
                str2 = null;
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarD0, th2);
                throw th3;
            }
        }
    }

    private static final List c(z3.e eVar) {
        int iA = k.a(eVar, "id");
        int iA2 = k.a(eVar, "seq");
        int iA3 = k.a(eVar, "from");
        int iA4 = k.a(eVar, "to");
        List listC = CollectionsKt.c();
        while (eVar.A0()) {
            listC.add(new e((int) eVar.getLong(iA), (int) eVar.getLong(iA2), eVar.n0(iA3), eVar.n0(iA4)));
        }
        return CollectionsKt.H0(CollectionsKt.a(listC));
    }

    private static final Set d(z3.b bVar, String str) throws Exception {
        z3.e eVarD0 = bVar.D0("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int iA = k.a(eVarD0, "id");
            int iA2 = k.a(eVarD0, "seq");
            int iA3 = k.a(eVarD0, "table");
            int iA4 = k.a(eVarD0, "on_delete");
            int iA5 = k.a(eVarD0, "on_update");
            List listC = c(eVarD0);
            eVarD0.reset();
            Set setB = SetsKt.b();
            while (eVarD0.A0()) {
                if (eVarD0.getLong(iA2) == 0) {
                    int i11 = (int) eVarD0.getLong(iA);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList<e> arrayList3 = new ArrayList();
                    for (Object obj : listC) {
                        if (((e) obj).d() == i11) {
                            arrayList3.add(obj);
                        }
                    }
                    for (e eVar : arrayList3) {
                        arrayList.add(eVar.b());
                        arrayList2.add(eVar.e());
                    }
                    setB.add(new o.c(eVarD0.n0(iA3), eVarD0.n0(iA4), eVarD0.n0(iA5), arrayList, arrayList2));
                }
            }
            Set setA = SetsKt.a(setB);
            AutoCloseableKt.a(eVarD0, null);
            return setA;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarD0, th2);
                throw th3;
            }
        }
    }

    private static final o.d e(z3.b bVar, String str, boolean z10) throws Exception {
        z3.e eVarD0 = bVar.D0("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int iA = k.a(eVarD0, "seqno");
            int iA2 = k.a(eVarD0, BidResponsedEx.KEY_CID);
            int iA3 = k.a(eVarD0, "name");
            int iA4 = k.a(eVarD0, CampaignEx.JSON_KEY_DESC);
            if (iA != -1 && iA2 != -1 && iA3 != -1 && iA4 != -1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                while (eVarD0.A0()) {
                    if (((int) eVarD0.getLong(iA2)) >= 0) {
                        int i11 = (int) eVarD0.getLong(iA);
                        String strN0 = eVarD0.n0(iA3);
                        String str2 = eVarD0.getLong(iA4) > 0 ? "DESC" : "ASC";
                        linkedHashMap.put(Integer.valueOf(i11), strN0);
                        linkedHashMap2.put(Integer.valueOf(i11), str2);
                    }
                }
                List listI0 = CollectionsKt.I0(linkedHashMap.entrySet(), new Comparator() { // from class: androidx.room.util.SchemaInfoUtilKt$readIndex$lambda$13$$inlined$sortedBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t11, T t12) {
                        return ComparisonsKt.d((Integer) ((Map.Entry) t11).getKey(), (Integer) ((Map.Entry) t12).getKey());
                    }
                });
                ArrayList arrayList = new ArrayList(CollectionsKt.v(listI0, 10));
                Iterator it = listI0.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) ((Map.Entry) it.next()).getValue());
                }
                List listR0 = CollectionsKt.R0(arrayList);
                List listI1 = CollectionsKt.I0(linkedHashMap2.entrySet(), new Comparator() { // from class: androidx.room.util.SchemaInfoUtilKt$readIndex$lambda$13$$inlined$sortedBy$2
                    @Override // java.util.Comparator
                    public final int compare(T t11, T t12) {
                        return ComparisonsKt.d((Integer) ((Map.Entry) t11).getKey(), (Integer) ((Map.Entry) t12).getKey());
                    }
                });
                ArrayList arrayList2 = new ArrayList(CollectionsKt.v(listI1, 10));
                Iterator it2 = listI1.iterator();
                while (it2.hasNext()) {
                    arrayList2.add((String) ((Map.Entry) it2.next()).getValue());
                }
                o.d dVar = new o.d(str, z10, listR0, CollectionsKt.R0(arrayList2));
                AutoCloseableKt.a(eVarD0, null);
                return dVar;
            }
            AutoCloseableKt.a(eVarD0, null);
            return null;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarD0, th2);
                throw th3;
            }
        }
    }

    private static final Set f(z3.b bVar, String str) throws Exception {
        z3.e eVarD0 = bVar.D0("PRAGMA index_list(`" + str + "`)");
        try {
            int iA = k.a(eVarD0, "name");
            int iA2 = k.a(eVarD0, "origin");
            int iA3 = k.a(eVarD0, "unique");
            if (iA != -1 && iA2 != -1 && iA3 != -1) {
                Set setB = SetsKt.b();
                while (eVarD0.A0()) {
                    if (Intrinsics.c("c", eVarD0.n0(iA2))) {
                        o.d dVarE = e(bVar, eVarD0.n0(iA), eVarD0.getLong(iA3) == 1);
                        if (dVarE == null) {
                            AutoCloseableKt.a(eVarD0, null);
                            return null;
                        }
                        setB.add(dVarE);
                    }
                }
                Set setA = SetsKt.a(setB);
                AutoCloseableKt.a(eVarD0, null);
                return setA;
            }
            AutoCloseableKt.a(eVarD0, null);
            return null;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarD0, th2);
                throw th3;
            }
        }
    }

    public static final o g(z3.b connection, String tableName) {
        Intrinsics.h(connection, "connection");
        Intrinsics.h(tableName, "tableName");
        return new o(tableName, b(connection, tableName), d(connection, tableName), f(connection, tableName));
    }
}
