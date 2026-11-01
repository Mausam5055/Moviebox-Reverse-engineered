package li;

import com.blankj.utilcode.util.o;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class a {
    public final String a(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return null;
        }
        return o.j(list);
    }

    public final List b(String str) {
        String[] strArr;
        if (str == null || StringsKt.q0(str) || (strArr = (String[]) o.d(str, String[].class)) == null) {
            return null;
        }
        return ArraysKt.K0(strArr);
    }
}
