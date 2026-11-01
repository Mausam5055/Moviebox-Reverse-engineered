package u4;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
abstract class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76645a = JsonReader.a.a("nm", "hd", "it");

    static r4.k a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        ArrayList arrayList = new ArrayList();
        String strR = null;
        boolean zN = false;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76645a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                zN = jsonReader.n();
            } else if (iV != 2) {
                jsonReader.x();
            } else {
                jsonReader.d();
                while (jsonReader.m()) {
                    r4.c cVarA = h.a(jsonReader, hVar);
                    if (cVarA != null) {
                        arrayList.add(cVarA);
                    }
                }
                jsonReader.k();
            }
        }
        return new r4.k(strR, arrayList, zN);
    }
}
