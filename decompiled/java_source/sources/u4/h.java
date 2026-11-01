package u4;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;

/* JADX INFO: loaded from: classes2.dex */
abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76634a = JsonReader.a.a("ty", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);

    static r4.c a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        r4.c cVarA;
        String strR;
        byte b11 = 1;
        jsonReader.h();
        int iP = 2;
        while (true) {
            cVarA = null;
            if (!jsonReader.m()) {
                strR = null;
                break;
            }
            int iV = jsonReader.v(f76634a);
            if (iV == 0) {
                strR = jsonReader.r();
                break;
            }
            if (iV != 1) {
                jsonReader.w();
                jsonReader.x();
            } else {
                iP = jsonReader.p();
            }
        }
        if (strR == null) {
            return null;
        }
        switch (strR.hashCode()) {
            case 3239:
                b11 = !strR.equals("el") ? (byte) -1 : (byte) 0;
                break;
            case 3270:
                if (!strR.equals("fl")) {
                    b11 = -1;
                }
                break;
            case 3295:
                b11 = !strR.equals("gf") ? (byte) -1 : (byte) 2;
                break;
            case 3307:
                b11 = !strR.equals("gr") ? (byte) -1 : (byte) 3;
                break;
            case 3308:
                b11 = !strR.equals("gs") ? (byte) -1 : (byte) 4;
                break;
            case 3488:
                b11 = !strR.equals("mm") ? (byte) -1 : (byte) 5;
                break;
            case 3633:
                b11 = !strR.equals(DownloadCommon.DOWNLOAD_REPORT_RETRY_COUNT) ? (byte) -1 : (byte) 6;
                break;
            case 3634:
                b11 = !strR.equals("rd") ? (byte) -1 : (byte) 7;
                break;
            case 3646:
                b11 = !strR.equals("rp") ? (byte) -1 : (byte) 8;
                break;
            case 3669:
                b11 = !strR.equals(com.mbridge.msdk.foundation.entity.b.JSON_KEY_SH) ? (byte) -1 : (byte) 9;
                break;
            case 3679:
                b11 = !strR.equals("sr") ? (byte) -1 : (byte) 10;
                break;
            case 3681:
                b11 = !strR.equals("st") ? (byte) -1 : (byte) 11;
                break;
            case 3705:
                b11 = !strR.equals("tm") ? (byte) -1 : (byte) 12;
                break;
            case 3710:
                b11 = !strR.equals("tr") ? (byte) -1 : (byte) 13;
                break;
            default:
                b11 = -1;
                break;
        }
        switch (b11) {
            case 0:
                cVarA = f.a(jsonReader, hVar, iP);
                break;
            case 1:
                cVarA = i0.a(jsonReader, hVar);
                break;
            case 2:
                cVarA = p.a(jsonReader, hVar);
                break;
            case 3:
                cVarA = j0.a(jsonReader, hVar);
                break;
            case 4:
                cVarA = q.a(jsonReader, hVar);
                break;
            case 5:
                cVarA = y.a(jsonReader);
                hVar.a("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                break;
            case 6:
                cVarA = d0.a(jsonReader, hVar);
                break;
            case 7:
                cVarA = f0.a(jsonReader, hVar);
                break;
            case 8:
                cVarA = e0.a(jsonReader, hVar);
                break;
            case 9:
                cVarA = k0.a(jsonReader, hVar);
                break;
            case 10:
                cVarA = c0.a(jsonReader, hVar, iP);
                break;
            case 11:
                cVarA = l0.a(jsonReader, hVar);
                break;
            case 12:
                cVarA = m0.a(jsonReader, hVar);
                break;
            case 13:
                cVarA = c.g(jsonReader, hVar);
                break;
            default:
                v4.f.c("Unknown shape type " + strR);
                break;
        }
        while (jsonReader.m()) {
            jsonReader.x();
        }
        jsonReader.l();
        return cVarA;
    }
}
