package u4;

import com.airbnb.lottie.parser.moshi.JsonReader;

/* JADX INFO: loaded from: classes2.dex */
abstract class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76629a = JsonReader.a.a("nm", "c", "o", "tr", "hd");

    static r4.g a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        String strR = null;
        q4.b bVarF = null;
        q4.b bVarF2 = null;
        q4.n nVarG = null;
        boolean zN = false;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76629a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                bVarF = d.f(jsonReader, hVar, false);
            } else if (iV == 2) {
                bVarF2 = d.f(jsonReader, hVar, false);
            } else if (iV == 3) {
                nVarG = c.g(jsonReader, hVar);
            } else if (iV != 4) {
                jsonReader.x();
            } else {
                zN = jsonReader.n();
            }
        }
        return new r4.g(strR, bVarF, bVarF2, nVarG, zN);
    }
}
