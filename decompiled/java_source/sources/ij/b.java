package ij;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class b {
    public final String a(ArrayList arrayList) {
        if (arrayList != null) {
            return CollectionsKt.s0(arrayList, ",", null, null, 0, null, null, 62, null);
        }
        return null;
    }

    public final ArrayList b(String str) {
        List listS0;
        if (str == null || (listS0 = StringsKt.S0(str, new String[]{","}, false, 0, 6, null)) == null) {
            return null;
        }
        return new ArrayList(listS0);
    }
}
