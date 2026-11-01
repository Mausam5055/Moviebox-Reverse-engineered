package u4;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes2.dex */
abstract class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76626a = JsonReader.a.a("nm", TtmlNode.TAG_P, "s", CampaignEx.JSON_KEY_AD_R, "hd");

    static r4.f a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        String strR = null;
        q4.o oVarB = null;
        q4.f fVarI = null;
        q4.b bVarE = null;
        boolean zN = false;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76626a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                oVarB = a.b(jsonReader, hVar);
            } else if (iV == 2) {
                fVarI = d.i(jsonReader, hVar);
            } else if (iV == 3) {
                bVarE = d.e(jsonReader, hVar);
            } else if (iV != 4) {
                jsonReader.x();
            } else {
                zN = jsonReader.n();
            }
        }
        return new r4.f(strR, oVarB, fVarI, bVarE, zN);
    }
}
