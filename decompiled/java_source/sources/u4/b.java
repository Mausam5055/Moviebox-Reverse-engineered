package u4;

import com.airbnb.lottie.model.content.TextRangeUnits;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76619a = JsonReader.a.a("s", "a");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f76620b = JsonReader.a.a("s", "e", "o", CampaignEx.JSON_KEY_AD_R);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final JsonReader.a f76621c = JsonReader.a.a("fc", "sc", "sw", "t", "o");

    public static q4.k a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        jsonReader.h();
        q4.m mVarC = null;
        q4.l lVarB = null;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76619a);
            if (iV == 0) {
                lVarB = b(jsonReader, hVar);
            } else if (iV != 1) {
                jsonReader.w();
                jsonReader.x();
            } else {
                mVarC = c(jsonReader, hVar);
            }
        }
        jsonReader.l();
        return new q4.k(mVarC, lVarB);
    }

    private static q4.l b(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        jsonReader.h();
        q4.d dVar = null;
        q4.d dVarH = null;
        q4.d dVarH2 = null;
        TextRangeUnits textRangeUnits = null;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76620b);
            if (iV == 0) {
                dVar = d.h(jsonReader, hVar);
            } else if (iV == 1) {
                dVarH = d.h(jsonReader, hVar);
            } else if (iV == 2) {
                dVarH2 = d.h(jsonReader, hVar);
            } else if (iV != 3) {
                jsonReader.w();
                jsonReader.x();
            } else {
                int iP = jsonReader.p();
                if (iP == 1 || iP == 2) {
                    textRangeUnits = iP == 1 ? TextRangeUnits.PERCENT : TextRangeUnits.INDEX;
                } else {
                    hVar.a("Unsupported text range units: " + iP);
                    textRangeUnits = TextRangeUnits.INDEX;
                }
            }
        }
        jsonReader.l();
        if (dVar == null && dVarH != null) {
            dVar = new q4.d(Collections.singletonList(new w4.a(0)));
        }
        return new q4.l(dVar, dVarH, dVarH2, textRangeUnits);
    }

    private static q4.m c(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        jsonReader.h();
        q4.a aVarC = null;
        q4.a aVarC2 = null;
        q4.b bVarE = null;
        q4.b bVarE2 = null;
        q4.d dVarH = null;
        while (jsonReader.m()) {
            int iV = jsonReader.v(f76621c);
            if (iV == 0) {
                aVarC = d.c(jsonReader, hVar);
            } else if (iV == 1) {
                aVarC2 = d.c(jsonReader, hVar);
            } else if (iV == 2) {
                bVarE = d.e(jsonReader, hVar);
            } else if (iV == 3) {
                bVarE2 = d.e(jsonReader, hVar);
            } else if (iV != 4) {
                jsonReader.w();
                jsonReader.x();
            } else {
                dVarH = d.h(jsonReader, hVar);
            }
        }
        jsonReader.l();
        return new q4.m(aVarC, aVarC2, bVarE, bVarE2, dVarH);
    }
}
