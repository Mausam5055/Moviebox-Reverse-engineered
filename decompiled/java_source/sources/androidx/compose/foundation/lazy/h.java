package androidx.compose.foundation.lazy;

import java.util.List;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {
    public static final n a(List list, o oVar, List list2, int i11, int i12, int i13) {
        int index = ((n) CollectionsKt.i0(list)).getIndex();
        int size = list2.size();
        int iIntValue = -1;
        int iIntValue2 = -1;
        int i14 = 0;
        while (i14 < size && ((Number) list2.get(i14)).intValue() <= index) {
            iIntValue2 = ((Number) list2.get(i14)).intValue();
            i14++;
            iIntValue = ((Number) ((i14 < 0 || i14 > CollectionsKt.n(list2)) ? -1 : list2.get(i14))).intValue();
        }
        int size2 = list.size();
        int iG = Integer.MIN_VALUE;
        int iG2 = Integer.MIN_VALUE;
        int i15 = -1;
        for (int i16 = 0; i16 < size2; i16++) {
            n nVar = (n) list.get(i16);
            if (nVar.getIndex() == iIntValue2) {
                iG = nVar.g();
                i15 = i16;
            } else if (nVar.getIndex() == iIntValue) {
                iG2 = nVar.g();
            }
        }
        if (iIntValue2 == -1) {
            return null;
        }
        n nVarE = o.e(oVar, iIntValue2, 0L, 2, null);
        nVarE.c(true);
        int iMax = iG != Integer.MIN_VALUE ? Math.max(-i11, iG) : -i11;
        if (iG2 != Integer.MIN_VALUE) {
            iMax = Math.min(iMax, iG2 - nVarE.getSize());
        }
        nVarE.r(iMax, i12, i13);
        if (i15 != -1) {
            list.set(i15, nVarE);
        } else {
            list.add(0, nVarE);
        }
        return nVarE;
    }
}
