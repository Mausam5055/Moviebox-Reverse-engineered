package kotlin.collections;

import java.lang.reflect.Array;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class d {
    public static final Object[] a(Object[] reference, int i11) {
        Intrinsics.h(reference, "reference");
        Object objNewInstance = Array.newInstance(reference.getClass().getComponentType(), i11);
        Intrinsics.f(objNewInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
        return (Object[]) objNewInstance;
    }

    public static int b(Object[] objArr) {
        return Arrays.deepHashCode(objArr);
    }

    public static final void c(int i11, int i12) {
        if (i11 <= i12) {
            return;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i11 + ") is greater than size (" + i12 + ").");
    }
}
