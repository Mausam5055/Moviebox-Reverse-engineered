package kotlin.io;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
class b {
    private static final int a(String str) {
        int iN0;
        char c11 = File.separatorChar;
        int iN1 = StringsKt.n0(str, c11, 0, false, 4, null);
        if (iN1 == 0) {
            if (str.length() <= 1 || str.charAt(1) != c11 || (iN0 = StringsKt.n0(str, c11, 2, false, 4, null)) < 0) {
                return 1;
            }
            int iN2 = StringsKt.n0(str, c11, iN0 + 1, false, 4, null);
            return iN2 >= 0 ? iN2 + 1 : str.length();
        }
        if (iN1 > 0 && str.charAt(iN1 - 1) == ':') {
            return iN1 + 1;
        }
        if (iN1 == -1 && StringsKt.f0(str, ':', false, 2, null)) {
            return str.length();
        }
        return 0;
    }

    public static final FilePathComponents b(File file) {
        List listL;
        Intrinsics.h(file, "<this>");
        String path = file.getPath();
        Intrinsics.e(path);
        int iA = a(path);
        String strSubstring = path.substring(0, iA);
        Intrinsics.g(strSubstring, "substring(...)");
        String strSubstring2 = path.substring(iA);
        Intrinsics.g(strSubstring2, "substring(...)");
        if (strSubstring2.length() == 0) {
            listL = CollectionsKt.l();
        } else {
            List listR0 = StringsKt.R0(strSubstring2, new char[]{File.separatorChar}, false, 0, 6, null);
            ArrayList arrayList = new ArrayList(CollectionsKt.v(listR0, 10));
            Iterator it = listR0.iterator();
            while (it.hasNext()) {
                arrayList.add(new File((String) it.next()));
            }
            listL = arrayList;
        }
        return new FilePathComponents(new File(strSubstring), listL);
    }
}
