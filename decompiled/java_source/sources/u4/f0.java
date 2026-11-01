package u4;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76631a = JsonReader.a.a("nm", CampaignEx.JSON_KEY_AD_R, "hd");

    static r4.h a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        boolean zN = false;
        String strR = null;
        q4.b bVarF = null;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76631a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                bVarF = d.f(jsonReader, hVar, true);
            } else if (iV != 2) {
                jsonReader.x();
            } else {
                zN = jsonReader.n();
            }
        }
        if (zN) {
            return null;
        }
        return new r4.h(strR, bVarF);
    }
}
