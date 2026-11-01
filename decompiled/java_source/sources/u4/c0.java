package u4;

import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes2.dex */
abstract class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76625a = JsonReader.a.a("nm", "sy", "pt", TtmlNode.TAG_P, CampaignEx.JSON_KEY_AD_R, "or", "os", "ir", "is", "hd", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);

    static PolystarShape a(JsonReader jsonReader, com.airbnb.lottie.h hVar, int i11) {
        boolean zN = false;
        boolean z10 = i11 == 3;
        String strR = null;
        PolystarShape.Type typeForValue = null;
        q4.b bVarF = null;
        q4.o oVarB = null;
        q4.b bVarF2 = null;
        q4.b bVarE = null;
        q4.b bVarE2 = null;
        q4.b bVarF3 = null;
        q4.b bVarF4 = null;
        while (jsonReader.m()) {
            switch (jsonReader.v(f76625a)) {
                case 0:
                    strR = jsonReader.r();
                    break;
                case 1:
                    typeForValue = PolystarShape.Type.forValue(jsonReader.p());
                    break;
                case 2:
                    bVarF = d.f(jsonReader, hVar, false);
                    break;
                case 3:
                    oVarB = a.b(jsonReader, hVar);
                    break;
                case 4:
                    bVarF2 = d.f(jsonReader, hVar, false);
                    break;
                case 5:
                    bVarE2 = d.e(jsonReader, hVar);
                    break;
                case 6:
                    bVarF4 = d.f(jsonReader, hVar, false);
                    break;
                case 7:
                    bVarE = d.e(jsonReader, hVar);
                    break;
                case 8:
                    bVarF3 = d.f(jsonReader, hVar, false);
                    break;
                case 9:
                    zN = jsonReader.n();
                    break;
                case 10:
                    z10 = jsonReader.p() == 3;
                    break;
                default:
                    jsonReader.w();
                    jsonReader.x();
                    break;
            }
        }
        return new PolystarShape(strR, typeForValue, bVarF, oVarB, bVarF2, bVarE, bVarE2, bVarF3, bVarF4, zN, z10);
    }
}
