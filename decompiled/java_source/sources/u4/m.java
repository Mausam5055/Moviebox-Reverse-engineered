package u4;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76657a = JsonReader.a.a("ch", "size", "w", TtmlNode.TAG_STYLE, "fFamily", "data");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f76658b = JsonReader.a.a("shapes");

    static p4.c a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        ArrayList arrayList = new ArrayList();
        jsonReader.h();
        double dO = 0.0d;
        String strR = null;
        String strR2 = null;
        char cCharAt = 0;
        double dO2 = 0.0d;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76657a);
            if (iV == 0) {
                cCharAt = jsonReader.r().charAt(0);
            } else if (iV == 1) {
                dO2 = jsonReader.o();
            } else if (iV == 2) {
                dO = jsonReader.o();
            } else if (iV == 3) {
                strR = jsonReader.r();
            } else if (iV == 4) {
                strR2 = jsonReader.r();
            } else if (iV != 5) {
                jsonReader.w();
                jsonReader.x();
            } else {
                jsonReader.h();
                while (jsonReader.m()) {
                    if (jsonReader.v(f76658b) != 0) {
                        jsonReader.w();
                        jsonReader.x();
                    } else {
                        jsonReader.d();
                        while (jsonReader.m()) {
                            arrayList.add((r4.k) h.a(jsonReader, hVar));
                        }
                        jsonReader.k();
                    }
                }
                jsonReader.l();
            }
        }
        jsonReader.l();
        return new p4.c(arrayList, cCharAt, dO2, dO, strR, strR2);
    }
}
