package androidx.compose.ui.text;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {
    public static final int a(List list, int i11) {
        byte b11;
        int size = list.size() - 1;
        int i12 = 0;
        while (i12 <= size) {
            int i13 = (i12 + size) >>> 1;
            m mVar = (m) list.get(i13);
            if (mVar.f() > i11) {
                b11 = 1;
            } else {
                b11 = mVar.b() <= i11 ? (byte) -1 : (byte) 0;
            }
            if (b11 < 0) {
                i12 = i13 + 1;
            } else {
                if (b11 <= 0) {
                    return i13;
                }
                size = i13 - 1;
            }
        }
        return -(i12 + 1);
    }

    public static final int b(List list, int i11) {
        byte b11;
        int size = list.size() - 1;
        int i12 = 0;
        while (i12 <= size) {
            int i13 = (i12 + size) >>> 1;
            m mVar = (m) list.get(i13);
            if (mVar.g() > i11) {
                b11 = 1;
            } else {
                b11 = mVar.c() <= i11 ? (byte) -1 : (byte) 0;
            }
            if (b11 < 0) {
                i12 = i13 + 1;
            } else {
                if (b11 <= 0) {
                    return i13;
                }
                size = i13 - 1;
            }
        }
        return -(i12 + 1);
    }

    public static final int c(List list, float f11) {
        byte b11;
        if (f11 <= 0.0f) {
            return 0;
        }
        if (f11 >= ((m) CollectionsKt.u0(list)).a()) {
            return CollectionsKt.n(list);
        }
        int size = list.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) >>> 1;
            m mVar = (m) list.get(i12);
            if (mVar.h() > f11) {
                b11 = 1;
            } else {
                b11 = mVar.a() <= f11 ? (byte) -1 : (byte) 0;
            }
            if (b11 < 0) {
                i11 = i12 + 1;
            } else {
                if (b11 <= 0) {
                    return i12;
                }
                size = i12 - 1;
            }
        }
        return -(i11 + 1);
    }

    public static final void d(List list, long j11, Function1 function1) {
        int size = list.size();
        for (int iA = a(list, b0.j(j11)); iA < size; iA++) {
            m mVar = (m) list.get(iA);
            if (mVar.f() >= b0.i(j11)) {
                return;
            }
            if (mVar.f() != mVar.b()) {
                function1.invoke(mVar);
            }
        }
    }
}
