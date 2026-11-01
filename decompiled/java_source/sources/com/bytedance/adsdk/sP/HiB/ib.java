package com.bytedance.adsdk.sP.HiB;

import android.graphics.Rect;
import android.util.JsonReader;
import android.util.LongSparseArray;
import android.util.SparseArray;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ib {
    /* JADX WARN: Code duplicated, block: B:44:0x0085  */
    private static List<com.bytedance.adsdk.sP.TEQ.Sj> EjP(JsonReader jsonReader) {
        try {
            ArrayList arrayList = new ArrayList();
            while (jsonReader.hasNext()) {
                com.bytedance.adsdk.sP.TEQ.Sj sj2 = new com.bytedance.adsdk.sP.TEQ.Sj();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    switch (jsonReader.nextName()) {
                        case "l":
                            sj2.Sj = jsonReader.nextInt();
                            break;
                        case "le":
                            sj2.sP = jsonReader.nextInt();
                            break;
                        case "s":
                            sj2.HiB = jsonReader.nextInt();
                            break;
                        case "c":
                            sj2.TKC = jsonReader.nextString();
                            break;
                        case "f":
                            sj2.EjP = jsonReader.nextString();
                            break;
                        case "bs":
                            sj2.vS = jsonReader.nextInt();
                            break;
                        case "ali":
                            sj2.Jcg = jsonReader.nextString();
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                }
                jsonReader.endObject();
                arrayList.add(sj2);
            }
            return arrayList;
        } catch (Exception unused) {
            return null;
        }
    }

    public static com.bytedance.adsdk.sP.Jcg Sj(JsonReader jsonReader) throws IOException {
        float fSj = com.bytedance.adsdk.sP.vS.vS.Sj();
        LongSparseArray<com.bytedance.adsdk.sP.TKC.TKC.HiB> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        SparseArray<com.bytedance.adsdk.sP.TKC.EjP> sparseArray = new SparseArray<>();
        com.bytedance.adsdk.sP.Jcg.TKC tkc = new com.bytedance.adsdk.sP.Jcg.TKC();
        com.bytedance.adsdk.sP.Jcg.Sj sj2 = new com.bytedance.adsdk.sP.Jcg.Sj();
        com.bytedance.adsdk.sP.Jcg.sP sPVar = new com.bytedance.adsdk.sP.Jcg.sP();
        com.bytedance.adsdk.sP.Jcg jcg = new com.bytedance.adsdk.sP.Jcg();
        jsonReader.beginObject();
        int iNextInt = 0;
        int iNextInt2 = 0;
        String strNextString = null;
        float fNextDouble = 0.0f;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "assets":
                    Sj(jsonReader, jcg, map, map2);
                    continue;
                    break;
                case "layers":
                    Sj(jsonReader, jcg, arrayList, longSparseArray);
                    continue;
                    break;
                case "globalEvent":
                    Sj(jsonReader, sPVar);
                    continue;
                    break;
                case "h":
                    iNextInt2 = jsonReader.nextInt();
                    continue;
                    break;
                case "v":
                    String[] strArrSplit = jsonReader.nextString().split("\\.");
                    if (com.bytedance.adsdk.sP.vS.vS.Sj(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), 4, 4, 0)) {
                        continue;
                    } else {
                        jcg.Sj("Lottie only supports bodymovin >= 4.4.0");
                    }
                    break;
                case "w":
                    iNextInt = jsonReader.nextInt();
                    continue;
                    break;
                case "dl":
                    strNextString = jsonReader.nextString();
                    continue;
                    break;
                case "fr":
                    fNextDouble3 = (float) jsonReader.nextDouble();
                    continue;
                    break;
                case "gc":
                    Sj(jsonReader, sj2);
                    break;
                case "ip":
                    fNextDouble2 = (float) jsonReader.nextDouble();
                    continue;
                    break;
                case "op":
                    fNextDouble = ((float) jsonReader.nextDouble()) - 0.01f;
                    continue;
                    break;
                case "chars":
                    Sj(jsonReader, jcg, sparseArray);
                    break;
                case "fonts":
                    Sj(jsonReader, map3);
                    break;
                case "timer":
                    Sj(jsonReader, tkc);
                    break;
                case "markers":
                    Sj(jsonReader, arrayList2);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        jcg.Sj(new Rect(0, 0, (int) (iNextInt * fSj), (int) (iNextInt2 * fSj)), fNextDouble2, fNextDouble, fNextDouble3, arrayList, longSparseArray, map, map2, sparseArray, map3, arrayList2, tkc, strNextString, sj2, sPVar);
        return jcg;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x005d  */
    private static void Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg.Sj sj2) {
        byte b11;
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                int iHashCode = strNextName.hashCode();
                if (iHashCode != 3139) {
                    if (iHashCode != 3232) {
                        if (iHashCode != 3571) {
                            if (iHashCode != 3666) {
                                if (iHashCode == 98713 && strNextName.equals("cpf")) {
                                    b11 = 4;
                                } else {
                                    b11 = -1;
                                }
                            } else if (strNextName.equals("se")) {
                                b11 = 0;
                            } else {
                                b11 = -1;
                            }
                        } else if (strNextName.equals("pc")) {
                            b11 = 3;
                        } else {
                            b11 = -1;
                        }
                    } else if (strNextName.equals("ee")) {
                        b11 = 2;
                    } else {
                        b11 = -1;
                    }
                } else if (strNextName.equals("be")) {
                    b11 = 1;
                } else {
                    b11 = -1;
                }
                if (b11 == 0) {
                    sj2.Sj = jsonReader.nextInt();
                } else if (b11 == 1) {
                    sj2.sP = sP(jsonReader);
                } else if (b11 == 2) {
                    sj2.TKC = sP(jsonReader);
                } else if (b11 == 3) {
                    sj2.EjP = jsonReader.nextInt();
                } else if (b11 != 4) {
                    jsonReader.skipValue();
                } else {
                    sP(jsonReader, sj2);
                }
            }
            jsonReader.endObject();
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0079  */
    private static void Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg.TKC tkc) {
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                switch (jsonReader.nextName()) {
                    case "ke":
                        tkc.Sj = jsonReader.nextInt();
                        break;
                    case "id":
                        tkc.sP = jsonReader.nextString();
                        break;
                    case "tl":
                        tkc.TKC = jsonReader.nextString();
                        break;
                    case "at":
                        tkc.EjP = jsonReader.nextString();
                        break;
                    case "inel":
                        tkc.HiB = new int[]{-1, -1};
                        jsonReader.beginArray();
                        for (int i11 = 0; i11 < 2; i11++) {
                            if (jsonReader.hasNext()) {
                                tkc.HiB[i11] = jsonReader.nextInt();
                            }
                        }
                        jsonReader.endArray();
                        break;
                    case "el":
                        tkc.vS = jsonReader.nextString();
                        break;
                    case "lel":
                        tkc.Jcg = TKC(jsonReader);
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0042  */
    private static void Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg.sP sPVar) {
        byte b11;
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                int iHashCode = strNextName.hashCode();
                if (iHashCode != 3239) {
                    if (iHashCode != 107027) {
                        if (iHashCode == 3237004 && strNextName.equals("inel")) {
                            b11 = 0;
                        } else {
                            b11 = -1;
                        }
                    } else if (strNextName.equals("lel")) {
                        b11 = 2;
                    } else {
                        b11 = -1;
                    }
                } else if (strNextName.equals("el")) {
                    b11 = 1;
                } else {
                    b11 = -1;
                }
                if (b11 == 0) {
                    sPVar.sP = new int[][]{new int[]{-1, -1}};
                    jsonReader.beginArray();
                    if (jsonReader.hasNext()) {
                        jsonReader.beginArray();
                        for (int i11 = 0; i11 < 2; i11++) {
                            if (jsonReader.hasNext()) {
                                sPVar.sP[0][i11] = jsonReader.nextInt();
                            }
                        }
                        jsonReader.endArray();
                    }
                    jsonReader.endArray();
                } else if (b11 == 1) {
                    sPVar.Sj = jsonReader.nextString();
                } else if (b11 != 2) {
                    jsonReader.skipValue();
                } else {
                    sPVar.TKC = TKC(jsonReader);
                }
            }
            jsonReader.endObject();
        } catch (Exception unused) {
        }
    }

    private static void Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg, SparseArray<com.bytedance.adsdk.sP.TKC.EjP> sparseArray) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            com.bytedance.adsdk.sP.TKC.EjP ejPSj = Fmk.Sj(jsonReader, jcg);
            sparseArray.put(ejPSj.hashCode(), ejPSj);
        }
        jsonReader.endArray();
    }

    private static void Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg, List<com.bytedance.adsdk.sP.TKC.TKC.HiB> list, LongSparseArray<com.bytedance.adsdk.sP.TKC.TKC.HiB> longSparseArray) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            com.bytedance.adsdk.sP.TKC.TKC.HiB hiBSj = zR.Sj(jsonReader, jcg);
            hiBSj.Ym();
            com.bytedance.adsdk.sP.TKC.TKC.HiB.Sj sj2 = com.bytedance.adsdk.sP.TKC.TKC.HiB.Sj.PRE_COMP;
            list.add(hiBSj);
            longSparseArray.put(hiBSj.HiB(), hiBSj);
        }
        jsonReader.endArray();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static void Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg, Map<String, List<com.bytedance.adsdk.sP.TKC.TKC.HiB>> map, Map<String, com.bytedance.adsdk.sP.TEQ> map2) throws IOException {
        int i11;
        int i12 = 2;
        int i13 = -1;
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            ArrayList arrayList = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            jsonReader.beginObject();
            int iNextInt = 0;
            int iNextInt2 = 0;
            String strNextString = null;
            String strNextString2 = null;
            String strNextString3 = null;
            String strNextString4 = null;
            List<com.bytedance.adsdk.sP.TEQ.Sj> listEjP = null;
            String strNextString5 = null;
            int[][] iArr = null;
            JSONArray jSONArrayTKC = null;
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                strNextName.hashCode();
                switch (strNextName.hashCode()) {
                    case -1109732030:
                        i11 = strNextName.equals("layers") ? 0 : i13;
                        break;
                    case 104:
                        i11 = strNextName.equals("h") ? 1 : i13;
                        break;
                    case 112:
                        i11 = strNextName.equals(TtmlNode.TAG_P) ? i12 : i13;
                        break;
                    case ASSET_FAILED_STATUS_CODE_VALUE:
                        i11 = strNextName.equals(TmcStartParams.KEY_URL_SHORT) ? 3 : i13;
                        break;
                    case JSON_ENCODE_ERROR_VALUE:
                        i11 = strNextName.equals("w") ? 4 : i13;
                        break;
                    case 3239:
                        i11 = strNextName.equals("el") ? 5 : i13;
                        break;
                    case 3355:
                        i11 = strNextName.equals("id") ? 6 : i13;
                        break;
                    case 3695:
                        i11 = strNextName.equals("tc") ? 7 : i13;
                        break;
                    case 107027:
                        i11 = strNextName.equals("lel") ? 8 : i13;
                        break;
                    case 112793:
                        i11 = strNextName.equals("rel") ? 9 : i13;
                        break;
                    case 3237004:
                        i11 = strNextName.equals("inel") ? 10 : i13;
                        break;
                    default:
                        i11 = i13;
                        break;
                }
                switch (i11) {
                    case 0:
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            com.bytedance.adsdk.sP.TKC.TKC.HiB hiBSj = zR.Sj(jsonReader, jcg);
                            longSparseArray.put(hiBSj.HiB(), hiBSj);
                            arrayList.add(hiBSj);
                        }
                        jsonReader.endArray();
                        i12 = 2;
                        i13 = -1;
                        break;
                    case 1:
                        iNextInt2 = jsonReader.nextInt();
                        break;
                    case 2:
                        strNextString2 = jsonReader.nextString();
                        break;
                    case 3:
                        strNextString3 = jsonReader.nextString();
                        break;
                    case 4:
                        iNextInt = jsonReader.nextInt();
                        break;
                    case 5:
                        strNextString5 = jsonReader.nextString();
                        break;
                    case 6:
                        strNextString = jsonReader.nextString();
                        break;
                    case 7:
                        jsonReader.beginArray();
                        listEjP = EjP(jsonReader);
                        jsonReader.endArray();
                        break;
                    case 8:
                        jSONArrayTKC = TKC(jsonReader);
                        break;
                    case 9:
                        strNextString4 = jsonReader.nextString();
                        break;
                    case 10:
                        int[][] iArr2 = {new int[]{i13, i13}};
                        jsonReader.beginArray();
                        if (jsonReader.hasNext()) {
                            jsonReader.beginArray();
                            for (int i14 = 0; i14 < i12; i14++) {
                                if (jsonReader.hasNext()) {
                                    iArr2[0][i14] = jsonReader.nextInt();
                                }
                            }
                            jsonReader.endArray();
                        }
                        jsonReader.endArray();
                        iArr = iArr2;
                        break;
                    default:
                        jsonReader.skipValue();
                        i12 = 2;
                        i13 = -1;
                        break;
                }
            }
            jsonReader.endObject();
            if (strNextString2 != null) {
                com.bytedance.adsdk.sP.TEQ teq = new com.bytedance.adsdk.sP.TEQ(iNextInt, iNextInt2, strNextString, strNextString2, strNextString3, strNextString4, listEjP, strNextString5, iArr, jSONArrayTKC);
                map2.put(teq.Dq(), teq);
            } else {
                map.put(strNextString, arrayList);
            }
            i12 = 2;
            i13 = -1;
        }
        jsonReader.endArray();
    }

    private static void Sj(JsonReader jsonReader, List<com.bytedance.adsdk.sP.TKC.vS> list) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            float fNextDouble = 0.0f;
            String strNextString = null;
            float fNextDouble2 = 0.0f;
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                strNextName.hashCode();
                switch (strNextName) {
                    case "cm":
                        strNextString = jsonReader.nextString();
                        break;
                    case "dr":
                        fNextDouble2 = (float) jsonReader.nextDouble();
                        break;
                    case "tm":
                        fNextDouble = (float) jsonReader.nextDouble();
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
            list.add(new com.bytedance.adsdk.sP.TKC.vS(strNextString, fNextDouble, fNextDouble2));
        }
        jsonReader.endArray();
    }

    private static void Sj(JsonReader jsonReader, Map<String, com.bytedance.adsdk.sP.TKC.TKC> map) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("list")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    com.bytedance.adsdk.sP.TKC.TKC tkcSj = sef.Sj(jsonReader);
                    map.put(tkcSj.sP(), tkcSj);
                }
                jsonReader.endArray();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0046  */
    private static JSONArray TKC(JsonReader jsonReader) {
        byte b11;
        JSONArray jSONArray = new JSONArray();
        try {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                JSONObject jSONObject = new JSONObject();
                jSONArray.put(jSONObject);
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String strNextName = jsonReader.nextName();
                    int iHashCode = strNextName.hashCode();
                    if (iHashCode != 3324) {
                        if (iHashCode == 116753 && strNextName.equals("vid")) {
                            b11 = 0;
                        } else {
                            b11 = -1;
                        }
                    } else if (strNextName.equals("hd")) {
                        b11 = 1;
                    } else {
                        b11 = -1;
                    }
                    if (b11 == 0) {
                        jSONObject.put("vid", jsonReader.nextString());
                    } else if (b11 != 1) {
                        jsonReader.skipValue();
                    } else {
                        try {
                            jSONObject.put("hd", jsonReader.nextInt());
                        } catch (JSONException unused) {
                        }
                    }
                }
                jsonReader.endObject();
            }
            jsonReader.endArray();
        } catch (Exception unused2) {
        }
        return jSONArray;
    }

    private static Map<String, Object> sP(JsonReader jsonReader) throws IOException {
        HashMap map = new HashMap();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            if (strNextName.equals("lel")) {
                map.put("lel", TKC(jsonReader));
            } else if (strNextName.equals("lottie_back")) {
                JSONObject jSONObject = new JSONObject();
                map.put("lottie_back", jSONObject);
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String strNextName2 = jsonReader.nextName();
                    strNextName2.hashCode();
                    if (strNextName2.equals("hd")) {
                        try {
                            jSONObject.putOpt("hd", Integer.valueOf(jsonReader.nextInt()));
                            jSONObject.putOpt("vid", "lottie_back");
                        } catch (JSONException unused) {
                        }
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        Object objRemove = map.remove("lottie_back");
        if (objRemove instanceof JSONObject) {
            Object obj = map.get("lel");
            if (obj instanceof JSONArray) {
                ((JSONArray) obj).put(objRemove);
            } else {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(objRemove);
                map.put("lel", jSONArray);
            }
        }
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003f  */
    private static void sP(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg.Sj sj2) {
        byte b11;
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String strNextName = jsonReader.nextName();
                int iHashCode = strNextName.hashCode();
                if (iHashCode != 3239) {
                    if (iHashCode != 3276) {
                        if (iHashCode == 107027 && strNextName.equals("lel")) {
                            b11 = 2;
                        } else {
                            b11 = -1;
                        }
                    } else if (strNextName.equals("fr")) {
                        b11 = 0;
                    } else {
                        b11 = -1;
                    }
                } else if (strNextName.equals("el")) {
                    b11 = 1;
                } else {
                    b11 = -1;
                }
                if (b11 == 0) {
                    sj2.HiB = jsonReader.nextInt();
                } else if (b11 == 1) {
                    sj2.vS = jsonReader.nextString();
                } else if (b11 != 2) {
                    jsonReader.skipValue();
                } else {
                    sj2.Jcg = TKC(jsonReader);
                }
            }
            jsonReader.endObject();
        } catch (IOException unused) {
        }
    }
}
