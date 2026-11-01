package e00;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.g;

/* JADX INFO: loaded from: classes7.dex */
public interface f {

    public static final class a {
        public static d a(f fVar, kotlinx.serialization.descriptors.f descriptor, int i11) {
            Intrinsics.h(descriptor, "descriptor");
            return fVar.b(descriptor);
        }

        public static void b(f fVar) {
        }

        public static void c(f fVar, g serializer, Object obj) {
            Intrinsics.h(serializer, "serializer");
            if (serializer.getDescriptor().b()) {
                fVar.e(serializer, obj);
            } else if (obj == null) {
                fVar.o();
            } else {
                fVar.v();
                fVar.e(serializer, obj);
            }
        }

        public static void d(f fVar, g serializer, Object obj) {
            Intrinsics.h(serializer, "serializer");
            serializer.serialize(fVar, obj);
        }
    }

    void B(int i11);

    void G(String str);

    f00.c a();

    d b(kotlinx.serialization.descriptors.f fVar);

    void e(g gVar, Object obj);

    void g(double d11);

    void h(byte b11);

    d j(kotlinx.serialization.descriptors.f fVar, int i11);

    void k(kotlinx.serialization.descriptors.f fVar, int i11);

    f l(kotlinx.serialization.descriptors.f fVar);

    void m(long j11);

    void o();

    void q(short s11);

    void r(boolean z10);

    void t(float f11);

    void u(char c11);

    void v();
}
