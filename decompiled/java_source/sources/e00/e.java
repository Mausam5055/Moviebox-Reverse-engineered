package e00;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public interface e {

    public static final class a {
        public static Object a(e eVar, kotlinx.serialization.a deserializer) {
            Intrinsics.h(deserializer, "deserializer");
            return deserializer.deserialize(eVar);
        }
    }

    boolean D();

    Object G(kotlinx.serialization.a aVar);

    byte H();

    f00.c a();

    c b(kotlinx.serialization.descriptors.f fVar);

    int e(kotlinx.serialization.descriptors.f fVar);

    int h();

    Void j();

    long l();

    e q(kotlinx.serialization.descriptors.f fVar);

    short s();

    float t();

    double v();

    boolean w();

    char x();

    String z();
}
