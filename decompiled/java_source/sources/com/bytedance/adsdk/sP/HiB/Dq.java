package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.b;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
class Dq {
    static com.bytedance.adsdk.sP.TKC.sP.TKC Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        com.bytedance.adsdk.sP.TKC.sP.TKC tkcSj;
        String strNextString;
        jsonReader.beginObject();
        byte b11 = 2;
        int iNextInt = 2;
        while (true) {
            tkcSj = null;
            if (!jsonReader.hasNext()) {
                strNextString = null;
                break;
            }
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (!strNextName.equals(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D)) {
                if (strNextName.equals("ty")) {
                    strNextString = jsonReader.nextString();
                    break;
                }
                jsonReader.skipValue();
            } else {
                iNextInt = jsonReader.nextInt();
            }
        }
        if (strNextString == null) {
            return null;
        }
        switch (strNextString.hashCode()) {
            case 3239:
                b11 = !strNextString.equals("el") ? (byte) -1 : (byte) 0;
                break;
            case 3270:
                b11 = !strNextString.equals("fl") ? (byte) -1 : (byte) 1;
                break;
            case 3295:
                if (!strNextString.equals("gf")) {
                    b11 = -1;
                }
                break;
            case 3307:
                b11 = !strNextString.equals("gr") ? (byte) -1 : (byte) 3;
                break;
            case 3308:
                b11 = !strNextString.equals("gs") ? (byte) -1 : (byte) 4;
                break;
            case 3488:
                b11 = !strNextString.equals("mm") ? (byte) -1 : (byte) 5;
                break;
            case 3633:
                b11 = !strNextString.equals(DownloadCommon.DOWNLOAD_REPORT_RETRY_COUNT) ? (byte) -1 : (byte) 6;
                break;
            case 3634:
                b11 = !strNextString.equals("rd") ? (byte) -1 : (byte) 7;
                break;
            case 3646:
                b11 = !strNextString.equals("rp") ? (byte) -1 : (byte) 8;
                break;
            case 3669:
                b11 = !strNextString.equals(b.JSON_KEY_SH) ? (byte) -1 : (byte) 9;
                break;
            case 3679:
                b11 = !strNextString.equals("sr") ? (byte) -1 : (byte) 10;
                break;
            case 3681:
                b11 = !strNextString.equals("st") ? (byte) -1 : (byte) 11;
                break;
            case 3705:
                b11 = !strNextString.equals("tm") ? (byte) -1 : (byte) 12;
                break;
            case 3710:
                b11 = !strNextString.equals("tr") ? (byte) -1 : (byte) 13;
                break;
            default:
                b11 = -1;
                break;
        }
        switch (b11) {
            case 0:
                tkcSj = vS.Sj(jsonReader, jcg, iNextInt);
                break;
            case 1:
                tkcSj = FPG.Sj(jsonReader, jcg);
                break;
            case 2:
                tkcSj = uvD.Sj(jsonReader, jcg);
                break;
            case 3:
                tkcSj = Wjd.Sj(jsonReader, jcg);
                break;
            case 4:
                tkcSj = dNu.Sj(jsonReader, jcg);
                break;
            case 5:
                tkcSj = uP.Sj(jsonReader);
                jcg.Sj("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                break;
            case 6:
                tkcSj = LD.Sj(jsonReader, jcg);
                break;
            case 7:
                tkcSj = JcM.Sj(jsonReader, jcg);
                break;
            case 8:
                tkcSj = fF.Sj(jsonReader, jcg);
                break;
            case 9:
                tkcSj = xD.Sj(jsonReader, jcg);
                break;
            case 10:
                tkcSj = Yf.Sj(jsonReader, jcg, iNextInt);
                break;
            case 11:
                tkcSj = Fm.Sj(jsonReader, jcg);
                break;
            case 12:
                tkcSj = jb.Sj(jsonReader, jcg);
                break;
            case 13:
                tkcSj = TKC.Sj(jsonReader, jcg);
                break;
        }
        while (jsonReader.hasNext()) {
            jsonReader.skipValue();
        }
        jsonReader.endObject();
        return tkcSj;
    }
}
