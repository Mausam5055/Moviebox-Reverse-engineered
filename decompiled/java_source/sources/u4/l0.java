package u4;

import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
abstract class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76655a = JsonReader.a.a("nm", "c", "w", "o", "lc", "lj", "ml", "hd", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f76656b = JsonReader.a.a("n", "v");

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    static ShapeStroke a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        ArrayList arrayList = new ArrayList();
        float fO = 0.0f;
        boolean zN = false;
        String strR = null;
        q4.b bVar = null;
        q4.a aVarC = null;
        q4.b bVarE = null;
        q4.d dVarH = null;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        while (jsonReader.m()) {
            switch (jsonReader.v(f76655a)) {
                case 0:
                    strR = jsonReader.r();
                    break;
                case 1:
                    aVarC = d.c(jsonReader, hVar);
                    break;
                case 2:
                    bVarE = d.e(jsonReader, hVar);
                    break;
                case 3:
                    dVarH = d.h(jsonReader, hVar);
                    break;
                case 4:
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.p() - 1];
                    break;
                case 5:
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.p() - 1];
                    break;
                case 6:
                    fO = (float) jsonReader.o();
                    break;
                case 7:
                    zN = jsonReader.n();
                    break;
                case 8:
                    jsonReader.d();
                    while (jsonReader.m()) {
                        jsonReader.h();
                        String strR2 = null;
                        q4.b bVarE2 = null;
                        while (jsonReader.m()) {
                            int iV = jsonReader.v(f76656b);
                            if (iV == 0) {
                                strR2 = jsonReader.r();
                            } else if (iV != 1) {
                                jsonReader.w();
                                jsonReader.x();
                            } else {
                                bVarE2 = d.e(jsonReader, hVar);
                            }
                        }
                        jsonReader.l();
                        strR2.hashCode();
                        switch (strR2) {
                            case "d":
                            case "g":
                                hVar.u(true);
                                arrayList.add(bVarE2);
                                break;
                            case "o":
                                bVar = bVarE2;
                                break;
                        }
                    }
                    jsonReader.k();
                    if (arrayList.size() == 1) {
                        arrayList.add((q4.b) arrayList.get(0));
                    }
                    break;
                default:
                    jsonReader.x();
                    break;
            }
        }
        return new ShapeStroke(strR, bVar, arrayList, aVarC, dVarH == null ? new q4.d(Collections.singletonList(new w4.a(100))) : dVarH, bVarE, lineCapType == null ? ShapeStroke.LineCapType.BUTT : lineCapType, lineJoinType == null ? ShapeStroke.LineJoinType.MITER : lineJoinType, fO, zN);
    }
}
