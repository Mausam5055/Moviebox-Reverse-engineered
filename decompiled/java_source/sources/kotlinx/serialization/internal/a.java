package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a implements kotlinx.serialization.b {
    private a() {
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static /* synthetic */ void i(a aVar, e00.c cVar, int i11, Object obj, boolean z10, int i12, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readElement");
        }
        if ((i12 & 8) != 0) {
            z10 = true;
        }
        aVar.h(cVar, i11, obj, z10);
    }

    private final int j(e00.c cVar, Object obj) {
        int iK = cVar.k(getDescriptor());
        c(obj, iK);
        return iK;
    }

    protected abstract Object a();

    protected abstract int b(Object obj);

    protected abstract void c(Object obj, int i11);

    protected abstract Iterator d(Object obj);

    @Override // kotlinx.serialization.a
    public Object deserialize(e00.e decoder) {
        Intrinsics.h(decoder, "decoder");
        return f(decoder, null);
    }

    protected abstract int e(Object obj);

    public final Object f(e00.e decoder, Object obj) {
        Object objA;
        Intrinsics.h(decoder, "decoder");
        if (obj == null || (objA = k(obj)) == null) {
            objA = a();
        }
        int iB = b(objA);
        e00.c cVarB = decoder.b(getDescriptor());
        if (!cVarB.p()) {
            while (true) {
                int iO = cVarB.o(getDescriptor());
                if (iO == -1) {
                    break;
                }
                i(this, cVarB, iB + iO, objA, false, 8, null);
            }
        } else {
            g(cVarB, objA, iB, j(cVarB, objA));
        }
        cVarB.c(getDescriptor());
        return l(objA);
    }

    protected abstract void g(e00.c cVar, Object obj, int i11, int i12);

    protected abstract void h(e00.c cVar, int i11, Object obj, boolean z10);

    protected abstract Object k(Object obj);

    protected abstract Object l(Object obj);
}
