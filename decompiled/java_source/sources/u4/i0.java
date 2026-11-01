package u4;

import android.graphics.Path;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
abstract class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76639a = JsonReader.a.a("nm", "c", "o", "fillEnabled", CampaignEx.JSON_KEY_AD_R, "hd");

    static r4.j a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        q4.d dVar = null;
        String strR = null;
        q4.a aVarC = null;
        boolean zN = false;
        boolean zN2 = false;
        int iP = 1;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76639a);
            if (iV == 0) {
                strR = jsonReader.r();
            } else if (iV == 1) {
                aVarC = d.c(jsonReader, hVar);
            } else if (iV == 2) {
                dVar = d.h(jsonReader, hVar);
            } else if (iV == 3) {
                zN = jsonReader.n();
            } else if (iV == 4) {
                iP = jsonReader.p();
            } else if (iV != 5) {
                jsonReader.w();
                jsonReader.x();
            } else {
                zN2 = jsonReader.n();
            }
        }
        if (dVar == null) {
            dVar = new q4.d(Collections.singletonList(new w4.a(100)));
        }
        return new r4.j(strR, zN, iP == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, aVarC, dVar, zN2);
    }
}
