package u4;

import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.parser.moshi.JsonReader;

/* JADX INFO: loaded from: classes2.dex */
abstract class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76659a = JsonReader.a.a("s", "e", "o", "nm", "m", "hd");

    static ShapeTrimPath a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        String strR = null;
        ShapeTrimPath.Type typeForId = null;
        q4.b bVarF = null;
        q4.b bVarF2 = null;
        q4.b bVarF3 = null;
        boolean zN = false;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76659a);
            if (iV == 0) {
                bVarF = d.f(jsonReader, hVar, false);
            } else if (iV == 1) {
                bVarF2 = d.f(jsonReader, hVar, false);
            } else if (iV == 2) {
                bVarF3 = d.f(jsonReader, hVar, false);
            } else if (iV == 3) {
                strR = jsonReader.r();
            } else if (iV == 4) {
                typeForId = ShapeTrimPath.Type.forId(jsonReader.p());
            } else if (iV != 5) {
                jsonReader.x();
            } else {
                zN = jsonReader.n();
            }
        }
        return new ShapeTrimPath(strR, typeForId, bVarF, bVarF2, bVarF3, zN);
    }
}
