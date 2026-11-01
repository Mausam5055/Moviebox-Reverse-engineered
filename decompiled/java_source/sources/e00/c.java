package e00;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public interface c {

    public static final class a {
        public static int a(c cVar, kotlinx.serialization.descriptors.f descriptor) {
            Intrinsics.h(descriptor, "descriptor");
            return -1;
        }

        public static boolean b(c cVar) {
            return false;
        }

        public static /* synthetic */ Object c(c cVar, kotlinx.serialization.descriptors.f fVar, int i11, kotlinx.serialization.a aVar, Object obj, int i12, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decodeSerializableElement");
            }
            if ((i12 & 8) != 0) {
                obj = null;
            }
            return cVar.y(fVar, i11, aVar, obj);
        }
    }

    char A(kotlinx.serialization.descriptors.f fVar, int i11);

    byte B(kotlinx.serialization.descriptors.f fVar, int i11);

    boolean C(kotlinx.serialization.descriptors.f fVar, int i11);

    short E(kotlinx.serialization.descriptors.f fVar, int i11);

    double F(kotlinx.serialization.descriptors.f fVar, int i11);

    f00.c a();

    void c(kotlinx.serialization.descriptors.f fVar);

    long f(kotlinx.serialization.descriptors.f fVar, int i11);

    int i(kotlinx.serialization.descriptors.f fVar, int i11);

    int k(kotlinx.serialization.descriptors.f fVar);

    String m(kotlinx.serialization.descriptors.f fVar, int i11);

    Object n(kotlinx.serialization.descriptors.f fVar, int i11, kotlinx.serialization.a aVar, Object obj);

    int o(kotlinx.serialization.descriptors.f fVar);

    boolean p();

    e r(kotlinx.serialization.descriptors.f fVar, int i11);

    float u(kotlinx.serialization.descriptors.f fVar, int i11);

    Object y(kotlinx.serialization.descriptors.f fVar, int i11, kotlinx.serialization.a aVar, Object obj);
}
