package e00;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.g;

/* JADX INFO: loaded from: classes7.dex */
public interface d {

    public static final class a {
        public static boolean a(d dVar, kotlinx.serialization.descriptors.f descriptor, int i11) {
            Intrinsics.h(descriptor, "descriptor");
            return true;
        }
    }

    void C(kotlinx.serialization.descriptors.f fVar, int i11, g gVar, Object obj);

    void D(kotlinx.serialization.descriptors.f fVar, int i11, short s11);

    void E(kotlinx.serialization.descriptors.f fVar, int i11, double d11);

    void F(kotlinx.serialization.descriptors.f fVar, int i11, long j11);

    void c(kotlinx.serialization.descriptors.f fVar);

    f f(kotlinx.serialization.descriptors.f fVar, int i11);

    void i(kotlinx.serialization.descriptors.f fVar, int i11, g gVar, Object obj);

    void n(kotlinx.serialization.descriptors.f fVar, int i11, char c11);

    void p(kotlinx.serialization.descriptors.f fVar, int i11, byte b11);

    void s(kotlinx.serialization.descriptors.f fVar, int i11, float f11);

    void w(kotlinx.serialization.descriptors.f fVar, int i11, int i12);

    void x(kotlinx.serialization.descriptors.f fVar, int i11, boolean z10);

    void y(kotlinx.serialization.descriptors.f fVar, int i11, String str);

    boolean z(kotlinx.serialization.descriptors.f fVar, int i11);
}
