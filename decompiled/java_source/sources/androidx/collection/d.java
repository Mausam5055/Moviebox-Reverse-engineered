package androidx.collection;

import java.util.ConcurrentModificationException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public static final void a(b bVar, int i11) {
        Intrinsics.h(bVar, "<this>");
        bVar.m(new int[i11]);
        bVar.l(new Object[i11]);
    }

    public static final int b(b bVar, int i11) {
        Intrinsics.h(bVar, "<this>");
        try {
            return n.a.a(bVar.e(), bVar.h(), i11);
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public static final int c(b bVar, Object obj, int i11) {
        Intrinsics.h(bVar, "<this>");
        int iH = bVar.h();
        if (iH == 0) {
            return -1;
        }
        int iB = b(bVar, i11);
        if (iB < 0 || Intrinsics.c(obj, bVar.c()[iB])) {
            return iB;
        }
        int i12 = iB + 1;
        while (i12 < iH && bVar.e()[i12] == i11) {
            if (Intrinsics.c(obj, bVar.c()[i12])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iB - 1; i13 >= 0 && bVar.e()[i13] == i11; i13--) {
            if (Intrinsics.c(obj, bVar.c()[i13])) {
                return i13;
            }
        }
        return ~i12;
    }

    public static final int d(b bVar) {
        Intrinsics.h(bVar, "<this>");
        return c(bVar, null, 0);
    }
}
