package u4;

import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
abstract class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76664a = JsonReader.a.a("nm", "g", "o", "t", "s", "e", "w", "lc", "lj", "ml", "hd", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f76665b = JsonReader.a.a(TtmlNode.TAG_P, CampaignEx.JSON_KEY_AD_K);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final JsonReader.a f76666c = JsonReader.a.a("n", "v");

    static com.airbnb.lottie.model.content.a a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        ArrayList arrayList = new ArrayList();
        float fO = 0.0f;
        String strR = null;
        GradientType gradientType = null;
        q4.c cVarG = null;
        q4.f fVarI = null;
        q4.f fVarI2 = null;
        q4.b bVarE = null;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        q4.b bVar = null;
        boolean zN = false;
        q4.d dVar = null;
        while (jsonReader.m()) {
            switch (jsonReader.v(f76664a)) {
                case 0:
                    strR = jsonReader.r();
                    continue;
                case 1:
                    jsonReader.h();
                    int iP = -1;
                    while (jsonReader.m()) {
                        int iV = jsonReader.v(f76665b);
                        if (iV == 0) {
                            iP = jsonReader.p();
                        } else if (iV != 1) {
                            jsonReader.w();
                            jsonReader.x();
                        } else {
                            cVarG = d.g(jsonReader, hVar, iP);
                        }
                        cVarG = cVarG;
                    }
                    jsonReader.l();
                    break;
                case 2:
                    dVar = d.h(jsonReader, hVar);
                    continue;
                case 3:
                    gradientType = jsonReader.p() == 1 ? GradientType.LINEAR : GradientType.RADIAL;
                    break;
                case 4:
                    fVarI = d.i(jsonReader, hVar);
                    continue;
                case 5:
                    fVarI2 = d.i(jsonReader, hVar);
                    continue;
                case 6:
                    bVarE = d.e(jsonReader, hVar);
                    continue;
                case 7:
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.p() - 1];
                    break;
                case 8:
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.p() - 1];
                    break;
                case 9:
                    fO = (float) jsonReader.o();
                    break;
                case 10:
                    zN = jsonReader.n();
                    continue;
                case 11:
                    jsonReader.d();
                    while (jsonReader.m()) {
                        jsonReader.h();
                        String strR2 = null;
                        q4.b bVarE2 = null;
                        while (jsonReader.m()) {
                            int iV2 = jsonReader.v(f76666c);
                            if (iV2 != 0) {
                                q4.b bVar2 = bVar;
                                if (iV2 != 1) {
                                    jsonReader.w();
                                    jsonReader.x();
                                } else {
                                    bVarE2 = d.e(jsonReader, hVar);
                                }
                                bVar = bVar2;
                            } else {
                                strR2 = jsonReader.r();
                            }
                        }
                        q4.b bVar3 = bVar;
                        jsonReader.l();
                        if (strR2.equals("o")) {
                            bVar = bVarE2;
                        } else {
                            if (strR2.equals(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D) || strR2.equals("g")) {
                                hVar.u(true);
                                arrayList.add(bVarE2);
                            }
                            bVar = bVar3;
                        }
                    }
                    q4.b bVar4 = bVar;
                    jsonReader.k();
                    if (arrayList.size() == 1) {
                        arrayList.add((q4.b) arrayList.get(0));
                    }
                    bVar = bVar4;
                    continue;
                default:
                    jsonReader.w();
                    jsonReader.x();
                    continue;
            }
            strR = strR;
        }
        String str = strR;
        if (dVar == null) {
            dVar = new q4.d(Collections.singletonList(new w4.a(100)));
        }
        return new com.airbnb.lottie.model.content.a(str, gradientType, cVarG, dVar, fVarI, fVarI2, bVarE, lineCapType, lineJoinType, fO, arrayList, bVar, zN);
    }
}
