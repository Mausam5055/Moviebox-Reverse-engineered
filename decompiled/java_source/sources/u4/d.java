package u4;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {
    private static List a(JsonReader jsonReader, float f11, com.airbnb.lottie.h hVar, n0 n0Var) {
        return u.a(jsonReader, hVar, f11, n0Var, false);
    }

    private static List b(JsonReader jsonReader, com.airbnb.lottie.h hVar, n0 n0Var) {
        return u.a(jsonReader, hVar, 1.0f, n0Var, false);
    }

    static q4.a c(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        return new q4.a(b(jsonReader, hVar, g.f76632a));
    }

    static q4.j d(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        return new q4.j(a(jsonReader, v4.l.e(), hVar, i.f76637a));
    }

    public static q4.b e(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        return f(jsonReader, hVar, true);
    }

    public static q4.b f(JsonReader jsonReader, com.airbnb.lottie.h hVar, boolean z10) {
        return new q4.b(a(jsonReader, z10 ? v4.l.e() : 1.0f, hVar, l.f76654a));
    }

    static q4.c g(JsonReader jsonReader, com.airbnb.lottie.h hVar, int i11) {
        return new q4.c(b(jsonReader, hVar, new o(i11)));
    }

    static q4.d h(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        return new q4.d(b(jsonReader, hVar, r.f76667a));
    }

    static q4.f i(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        return new q4.f(u.a(jsonReader, hVar, v4.l.e(), b0.f76622a, true));
    }

    static q4.g j(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        return new q4.g(b(jsonReader, hVar, g0.f76633a));
    }

    static q4.h k(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        return new q4.h(a(jsonReader, v4.l.e(), hVar, h0.f76635a));
    }
}
