package androidx.appcompat.app;

import java.util.LinkedHashSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
abstract class z {
    private static androidx.core.os.i a(androidx.core.os.i iVar, androidx.core.os.i iVar2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i11 = 0;
        while (i11 < iVar.g() + iVar2.g()) {
            Locale localeD = i11 < iVar.g() ? iVar.d(i11) : iVar2.d(i11 - iVar.g());
            if (localeD != null) {
                linkedHashSet.add(localeD);
            }
            i11++;
        }
        return androidx.core.os.i.a((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
    }

    static androidx.core.os.i b(androidx.core.os.i iVar, androidx.core.os.i iVar2) {
        return (iVar == null || iVar.f()) ? androidx.core.os.i.e() : a(iVar, iVar2);
    }
}
