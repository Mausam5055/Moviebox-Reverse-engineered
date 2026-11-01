package androidx.room.util;

import androidx.room.RoomDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {
    public static final boolean a(RoomDatabase.d dVar, int i11, int i12) {
        Intrinsics.h(dVar, "<this>");
        Map mapE = dVar.e();
        if (!mapE.containsKey(Integer.valueOf(i11))) {
            return false;
        }
        Map mapH = (Map) mapE.get(Integer.valueOf(i11));
        if (mapH == null) {
            mapH = MapsKt.h();
        }
        return mapH.containsKey(Integer.valueOf(i12));
    }

    public static final List b(RoomDatabase.d dVar, int i11, int i12) {
        Intrinsics.h(dVar, "<this>");
        if (i11 == i12) {
            return CollectionsKt.l();
        }
        return c(dVar, new ArrayList(), i12 > i11, i11, i12);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    /* JADX WARN: Code duplicated, block: B:15:0x002c  */
    /* JADX WARN: Code duplicated, block: B:27:0x0059 A[LOOP:0: B:2:0x0000->B:27:0x0059, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:31:0x0015 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x0058 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x003f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:0x0053 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x0038 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0009  */
    /* JADX WARN: Code duplicated, block: B:8:0x000e  */
    private static final List c(RoomDatabase.d dVar, List list, boolean z10, int i11, int i12) {
        Pair pairG;
        Iterator it;
        int iIntValue;
        boolean z11;
        while (true) {
            if (z10) {
                if (i11 >= i12) {
                    break;
                }
                if (z10) {
                    pairG = dVar.f(i11);
                } else {
                    pairG = dVar.g(i11);
                }
                if (pairG == null) {
                    return null;
                }
                Map map = (Map) pairG.component1();
                it = ((Iterable) pairG.component2()).iterator();
                while (true) {
                    if (it.hasNext()) {
                        iIntValue = i11;
                        z11 = false;
                        break;
                    }
                    iIntValue = ((Number) it.next()).intValue();
                    if (!z10) {
                        if (i12 <= iIntValue && iIntValue < i11) {
                            Object obj = map.get(Integer.valueOf(iIntValue));
                            Intrinsics.e(obj);
                            list.add(obj);
                            z11 = true;
                            break;
                        }
                    } else if (i11 + 1 <= iIntValue && iIntValue <= i12) {
                        Object obj2 = map.get(Integer.valueOf(iIntValue));
                        Intrinsics.e(obj2);
                        list.add(obj2);
                        z11 = true;
                        break;
                    }
                }
                if (!z11) {
                    return null;
                }
                i11 = iIntValue;
            } else {
                if (i11 <= i12) {
                    break;
                }
                if (z10) {
                    pairG = dVar.f(i11);
                } else {
                    pairG = dVar.g(i11);
                }
                if (pairG == null) {
                    return null;
                }
                Map map2 = (Map) pairG.component1();
                it = ((Iterable) pairG.component2()).iterator();
                while (true) {
                    if (it.hasNext()) {
                        iIntValue = i11;
                        z11 = false;
                        break;
                    }
                    iIntValue = ((Number) it.next()).intValue();
                    if (!z10) {
                        if (i11 + 1 <= iIntValue) {
                            continue;
                        }
                    } else if (i12 <= iIntValue) {
                        continue;
                    }
                }
                if (!z11) {
                    return null;
                }
                i11 = iIntValue;
            }
        }
        return list;
    }

    public static final boolean d(androidx.room.c cVar, int i11, int i12) {
        Intrinsics.h(cVar, "<this>");
        if (i11 > i12 && cVar.f14581l) {
            return false;
        }
        Set setC = cVar.c();
        if (cVar.f14580k) {
            return setC == null || !setC.contains(Integer.valueOf(i11));
        }
        return false;
    }
}
