package androidx.compose.foundation.lazy.layout;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {
    public static final List a(m mVar, w wVar, e eVar) {
        if (!eVar.d() && wVar.isEmpty()) {
            return CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        IntRange intRange = eVar.d() ? new IntRange(eVar.c(), Math.min(eVar.b(), mVar.getItemCount() - 1)) : IntRange.INSTANCE.a();
        int size = wVar.size();
        for (int i11 = 0; i11 < size; i11++) {
            w.a aVar = (w.a) wVar.get(i11);
            int iA = n.a(mVar, aVar.getKey(), aVar.getIndex());
            int first = intRange.getFirst();
            if ((iA > intRange.getLast() || first > iA) && iA >= 0 && iA < mVar.getItemCount()) {
                arrayList.add(Integer.valueOf(iA));
            }
        }
        int first2 = intRange.getFirst();
        int last = intRange.getLast();
        if (first2 <= last) {
            while (true) {
                arrayList.add(Integer.valueOf(first2));
                if (first2 == last) {
                    break;
                }
                first2++;
            }
        }
        return arrayList;
    }
}
