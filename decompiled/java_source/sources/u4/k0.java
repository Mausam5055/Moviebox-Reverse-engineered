package u4;

import com.airbnb.lottie.parser.moshi.JsonReader;

/* JADX INFO: loaded from: classes2.dex */
abstract class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static JsonReader.a f76653a = JsonReader.a.a("nm", "ind", "ks", "hd");

    static r4.l a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        String strR = null;
        int iP = 0;
        boolean zN = false;
        q4.h hVarK = null;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76653a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                iP = jsonReader.p();
            } else if (iV == 2) {
                hVarK = d.k(jsonReader, hVar);
            } else if (iV != 3) {
                jsonReader.x();
            } else {
                zN = jsonReader.n();
            }
        }
        return new r4.l(strR, iP, hVarK, zN);
    }
}
