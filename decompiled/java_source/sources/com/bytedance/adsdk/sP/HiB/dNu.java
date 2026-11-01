package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
class dNu {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0034  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    static com.bytedance.adsdk.sP.TKC.sP.vS Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        int i11;
        com.bytedance.adsdk.sP.TKC.sP.Jcg jcg2;
        int i12;
        int i13;
        int i14 = 1;
        ArrayList arrayList = new ArrayList();
        float fNextDouble = 0.0f;
        String strNextString = null;
        com.bytedance.adsdk.sP.TKC.sP.Jcg jcg3 = null;
        com.bytedance.adsdk.sP.TKC.Sj.TKC tkcSj = null;
        com.bytedance.adsdk.sP.TKC.Sj.vS vSVarTKC = null;
        com.bytedance.adsdk.sP.TKC.Sj.vS vSVarTKC2 = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj = null;
        com.bytedance.adsdk.sP.TKC.sP.TzV.Sj sj2 = null;
        com.bytedance.adsdk.sP.TKC.sP.TzV.sP sPVar = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVar2 = null;
        boolean zNextBoolean = false;
        com.bytedance.adsdk.sP.TKC.Sj.EjP ejPSP = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName.hashCode()) {
                case 100:
                    if (!strNextName.equals(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D)) {
                        i11 = -1;
                    } else {
                        i11 = 0;
                    }
                    break;
                case 101:
                    if (!strNextName.equals("e")) {
                        i11 = -1;
                    } else {
                        i11 = i14;
                    }
                    break;
                case 103:
                    if (!strNextName.equals("g")) {
                        i11 = -1;
                    } else {
                        i11 = 2;
                    }
                    break;
                case 111:
                    if (!strNextName.equals("o")) {
                        i11 = -1;
                    } else {
                        i11 = 3;
                    }
                    break;
                case INVALID_INDEX_URL_VALUE:
                    if (!strNextName.equals("s")) {
                        i11 = -1;
                    } else {
                        i11 = 4;
                    }
                    break;
                case GZIP_ENCODE_ERROR_VALUE:
                    if (!strNextName.equals("t")) {
                        i11 = -1;
                    } else {
                        i11 = 5;
                    }
                    break;
                case JSON_ENCODE_ERROR_VALUE:
                    if (!strNextName.equals("w")) {
                        i11 = -1;
                    } else {
                        i11 = 6;
                    }
                    break;
                case 3324:
                    if (!strNextName.equals("hd")) {
                        i11 = -1;
                    } else {
                        i11 = 7;
                    }
                    break;
                case 3447:
                    if (!strNextName.equals("lc")) {
                        i11 = -1;
                    } else {
                        i11 = 8;
                    }
                    break;
                case 3454:
                    if (!strNextName.equals("lj")) {
                        i11 = -1;
                    } else {
                        i11 = 9;
                    }
                    break;
                case 3487:
                    if (!strNextName.equals("ml")) {
                        i11 = -1;
                    } else {
                        i11 = 10;
                    }
                    break;
                case 3519:
                    if (!strNextName.equals("nm")) {
                        i11 = -1;
                    } else {
                        i11 = 11;
                    }
                    break;
                default:
                    i11 = -1;
                    break;
            }
            switch (i11) {
                case 0:
                    jcg2 = jcg3;
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj2 = null;
                        String strNextString2 = null;
                        while (jsonReader.hasNext()) {
                            String strNextName2 = jsonReader.nextName();
                            strNextName2.hashCode();
                            if (strNextName2.equals("n")) {
                                strNextString2 = jsonReader.nextString();
                            } else if (strNextName2.equals("v")) {
                                sPVarSj2 = EjP.Sj(jsonReader, jcg);
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                        if (strNextString2.equals("o")) {
                            sPVar2 = sPVarSj2;
                            i14 = 1;
                        } else {
                            if (strNextString2.equals(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D) || strNextString2.equals("g")) {
                                i13 = 1;
                                jcg.Sj(true);
                                arrayList.add(sPVarSj2);
                            } else {
                                i13 = 1;
                            }
                            i14 = i13;
                        }
                    }
                    i12 = i14;
                    jsonReader.endArray();
                    if (arrayList.size() == i12) {
                        arrayList.add(arrayList.get(0));
                    }
                    i14 = i12;
                    jcg3 = jcg2;
                    break;
                case 1:
                    vSVarTKC2 = EjP.TKC(jsonReader, jcg);
                    break;
                case 2:
                    jcg2 = jcg3;
                    jsonReader.beginObject();
                    int iNextInt = -1;
                    while (jsonReader.hasNext()) {
                        String strNextName3 = jsonReader.nextName();
                        strNextName3.hashCode();
                        if (strNextName3.equals(CampaignEx.JSON_KEY_AD_K)) {
                            tkcSj = EjP.Sj(jsonReader, jcg, iNextInt);
                        } else if (strNextName3.equals(TtmlNode.TAG_P)) {
                            iNextInt = jsonReader.nextInt();
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    jcg3 = jcg2;
                    break;
                case 3:
                    ejPSP = EjP.sP(jsonReader, jcg);
                    break;
                case 4:
                    vSVarTKC = EjP.TKC(jsonReader, jcg);
                    break;
                case 5:
                    jcg3 = jsonReader.nextInt() == i14 ? com.bytedance.adsdk.sP.TKC.sP.Jcg.LINEAR : com.bytedance.adsdk.sP.TKC.sP.Jcg.RADIAL;
                    break;
                case 6:
                    sPVarSj = EjP.Sj(jsonReader, jcg);
                    break;
                case 7:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case 8:
                    sj2 = com.bytedance.adsdk.sP.TKC.sP.TzV.Sj.values()[jsonReader.nextInt() - i14];
                    break;
                case 9:
                    sPVar = com.bytedance.adsdk.sP.TKC.sP.TzV.sP.values()[jsonReader.nextInt() - i14];
                    break;
                case 10:
                    jcg2 = jcg3;
                    fNextDouble = (float) jsonReader.nextDouble();
                    jcg3 = jcg2;
                    break;
                case 11:
                    strNextString = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    i12 = i14;
                    jcg2 = jcg3;
                    i14 = i12;
                    jcg3 = jcg2;
                    break;
            }
        }
        return new com.bytedance.adsdk.sP.TKC.sP.vS(strNextString, jcg3, tkcSj, ejPSP == null ? new com.bytedance.adsdk.sP.TKC.Sj.EjP(Collections.singletonList(new com.bytedance.adsdk.sP.Jcg.Sj(100))) : ejPSP, vSVarTKC, vSVarTKC2, sPVarSj, sj2, sPVar, fNextDouble, arrayList, sPVar2, zNextBoolean);
    }
}
