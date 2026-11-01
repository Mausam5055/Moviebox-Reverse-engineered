package com.bytedance.adsdk.sP.HiB;

import android.graphics.Color;
import android.graphics.Rect;
import android.util.JsonReader;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.b;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public class zR {

    /* JADX INFO: renamed from: com.bytedance.adsdk.sP.HiB.zR$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Sj;

        static {
            int[] iArr = new int[com.bytedance.adsdk.sP.TKC.TKC.HiB.sP.values().length];
            Sj = iArr;
            try {
                iArr[com.bytedance.adsdk.sP.TKC.TKC.HiB.sP.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[com.bytedance.adsdk.sP.TKC.TKC.HiB.sP.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r38v1 */
    /* JADX WARN: Type inference failed for: r38v10 */
    /* JADX WARN: Type inference failed for: r38v11 */
    /* JADX WARN: Type inference failed for: r38v12 */
    /* JADX WARN: Type inference failed for: r38v13 */
    /* JADX WARN: Type inference failed for: r38v14 */
    /* JADX WARN: Type inference failed for: r38v15 */
    /* JADX WARN: Type inference failed for: r38v16 */
    /* JADX WARN: Type inference failed for: r38v17 */
    /* JADX WARN: Type inference failed for: r38v18 */
    /* JADX WARN: Type inference failed for: r38v19 */
    /* JADX WARN: Type inference failed for: r38v2 */
    /* JADX WARN: Type inference failed for: r38v20 */
    /* JADX WARN: Type inference failed for: r38v21 */
    /* JADX WARN: Type inference failed for: r38v22 */
    /* JADX WARN: Type inference failed for: r38v23 */
    /* JADX WARN: Type inference failed for: r38v24 */
    /* JADX WARN: Type inference failed for: r38v25 */
    /* JADX WARN: Type inference failed for: r38v26 */
    /* JADX WARN: Type inference failed for: r38v27 */
    /* JADX WARN: Type inference failed for: r38v28 */
    /* JADX WARN: Type inference failed for: r38v29 */
    /* JADX WARN: Type inference failed for: r38v30 */
    /* JADX WARN: Type inference failed for: r38v31 */
    /* JADX WARN: Type inference failed for: r38v32 */
    /* JADX WARN: Type inference failed for: r38v33 */
    /* JADX WARN: Type inference failed for: r38v34 */
    /* JADX WARN: Type inference failed for: r38v35 */
    /* JADX WARN: Type inference failed for: r38v36 */
    /* JADX WARN: Type inference failed for: r38v37 */
    /* JADX WARN: Type inference failed for: r38v38 */
    /* JADX WARN: Type inference failed for: r38v39 */
    /* JADX WARN: Type inference failed for: r38v4 */
    /* JADX WARN: Type inference failed for: r38v40 */
    /* JADX WARN: Type inference failed for: r38v41 */
    /* JADX WARN: Type inference failed for: r38v42 */
    /* JADX WARN: Type inference failed for: r38v43 */
    /* JADX WARN: Type inference failed for: r38v44 */
    /* JADX WARN: Type inference failed for: r38v45 */
    /* JADX WARN: Type inference failed for: r38v46 */
    /* JADX WARN: Type inference failed for: r38v47 */
    /* JADX WARN: Type inference failed for: r38v48 */
    /* JADX WARN: Type inference failed for: r38v49 */
    /* JADX WARN: Type inference failed for: r38v5 */
    /* JADX WARN: Type inference failed for: r38v6 */
    /* JADX WARN: Type inference failed for: r38v7 */
    /* JADX WARN: Type inference failed for: r38v8 */
    /* JADX WARN: Type inference failed for: r38v9 */
    public static com.bytedance.adsdk.sP.TKC.TKC.HiB Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        int i11 = 2;
        int i12 = 1;
        com.bytedance.adsdk.sP.TKC.TKC.HiB.sP sPVar = com.bytedance.adsdk.sP.TKC.TKC.HiB.sP.NONE;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        jsonReader.beginObject();
        long jNextInt = 0;
        boolean z10 = false;
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(1.0f);
        com.bytedance.adsdk.sP.TKC.TKC.HiB.sP sPVar2 = sPVar;
        com.bytedance.adsdk.sP.TKC.Sj.aa aaVarSj = null;
        com.bytedance.adsdk.sP.TKC.Sj.TEQ teqVS = null;
        com.bytedance.adsdk.sP.TKC.Sj.Ym ymSj = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj = null;
        com.bytedance.adsdk.sP.TKC.sP.Sj Sj = null;
        TEQ teqSj = null;
        int iNextInt = 0;
        int iNextInt2 = 0;
        int color = 0;
        boolean zNextBoolean = false;
        float fNextDouble = 0.0f;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        float fJcg = 0.0f;
        long jNextInt2 = -1;
        float fNextDouble4 = 1.0f;
        com.bytedance.adsdk.sP.TKC.TKC.HiB.Sj sj2 = null;
        String strNextString = null;
        float fNextDouble5 = 0.0f;
        String strNextString2 = "UNSET";
        String strNextString3 = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            ?? r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            r38 = -1;
            switch (strNextName.hashCode()) {
                case -995424086:
                    if (strNextName.equals("parent")) {
                        r38 = z10;
                    }
                    break;
                case -903568142:
                    if (strNextName.equals("shapes")) {
                        r38 = i12;
                    }
                    break;
                case 104:
                    if (strNextName.equals("h")) {
                        r38 = i11;
                    }
                    break;
                case GZIP_ENCODE_ERROR_VALUE:
                    if (strNextName.equals("t")) {
                        r38 = 3;
                    }
                    break;
                case JSON_ENCODE_ERROR_VALUE:
                    if (strNextName.equals("w")) {
                        r38 = 4;
                    }
                    break;
                case 3177:
                    if (strNextName.equals("cl")) {
                        r38 = 5;
                    }
                    break;
                case 3233:
                    if (strNextName.equals("ef")) {
                        r38 = 6;
                    }
                    break;
                case 3324:
                    if (strNextName.equals("hd")) {
                        r38 = 7;
                    }
                    break;
                case 3367:
                    if (strNextName.equals("ip")) {
                        r38 = 8;
                    }
                    break;
                case 3432:
                    if (strNextName.equals("ks")) {
                        r38 = 9;
                    }
                    break;
                case 3519:
                    if (strNextName.equals("nm")) {
                        r38 = 10;
                    }
                    break;
                case 3553:
                    if (strNextName.equals("op")) {
                        r38 = 11;
                    }
                    break;
                case 3664:
                    if (strNextName.equals("sc")) {
                        r38 = 12;
                    }
                    break;
                case 3669:
                    if (strNextName.equals(b.JSON_KEY_SH)) {
                        r38 = 13;
                    }
                    break;
                case 3679:
                    if (strNextName.equals("sr")) {
                        r38 = 14;
                    }
                    break;
                case 3681:
                    if (strNextName.equals("st")) {
                        r38 = 15;
                    }
                    break;
                case 3684:
                    if (strNextName.equals("sw")) {
                        r38 = 16;
                    }
                    break;
                case 3705:
                    if (strNextName.equals("tm")) {
                        r38 = 17;
                    }
                    break;
                case 3712:
                    if (strNextName.equals(TtmlNode.TAG_TT)) {
                        r38 = 18;
                    }
                    break;
                case 3717:
                    if (strNextName.equals("ty")) {
                        r38 = 19;
                    }
                    break;
                case 104415:
                    if (strNextName.equals("ind")) {
                        r38 = 20;
                    }
                    break;
                case 108390670:
                    if (strNextName.equals("refId")) {
                        r38 = 21;
                    }
                    break;
                case 1441620890:
                    if (strNextName.equals("masksProperties")) {
                        r38 = 22;
                    }
                    break;
            }
            switch (r38) {
                case 0:
                    jNextInt2 = jsonReader.nextInt();
                    i11 = 2;
                    i12 = 1;
                    z10 = false;
                    break;
                case 1:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        com.bytedance.adsdk.sP.TKC.sP.TKC tkcSj = Dq.Sj(jsonReader, jcg);
                        if (tkcSj != null) {
                            arrayList2.add(tkcSj);
                        }
                    }
                    jsonReader.endArray();
                    i11 = 2;
                    i12 = 1;
                    z10 = false;
                    break;
                case 2:
                    fNextDouble3 = (float) (jsonReader.nextDouble() * ((double) com.bytedance.adsdk.sP.vS.vS.Sj()));
                    i11 = 2;
                    i12 = 1;
                    z10 = false;
                    break;
                case 3:
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        String strNextName2 = jsonReader.nextName();
                        strNextName2.hashCode();
                        if (strNextName2.equals("a")) {
                            jsonReader.beginArray();
                            if (jsonReader.hasNext()) {
                                ymSj = sP.Sj(jsonReader, jcg);
                            }
                            while (jsonReader.hasNext()) {
                                jsonReader.skipValue();
                            }
                            jsonReader.endArray();
                        } else if (strNextName2.equals(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D)) {
                            teqVS = EjP.vS(jsonReader, jcg);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    jsonReader.endObject();
                    i11 = 2;
                    i12 = 1;
                    z10 = false;
                    break;
                case 4:
                    fNextDouble2 = (float) (jsonReader.nextDouble() * ((double) com.bytedance.adsdk.sP.vS.vS.Sj()));
                    i11 = 2;
                    i12 = 1;
                    z10 = false;
                    break;
                case 5:
                    strNextString3 = jsonReader.nextString();
                    i11 = 2;
                    i12 = 1;
                    break;
                case 6:
                    jsonReader.beginArray();
                    ArrayList arrayList3 = new ArrayList();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String strNextName3 = jsonReader.nextName();
                            strNextName3.hashCode();
                            if (strNextName3.equals("nm")) {
                                arrayList3.add(jsonReader.nextString());
                            } else if (strNextName3.equals("ty")) {
                                int iNextInt3 = jsonReader.nextInt();
                                if (iNextInt3 == 29) {
                                    Sj = HiB.Sj(jsonReader, jcg);
                                } else if (iNextInt3 == 25) {
                                    teqSj = new Ym().Sj(jsonReader, jcg);
                                }
                            } else {
                                jsonReader.skipValue();
                            }
                        }
                        jsonReader.endObject();
                    }
                    jsonReader.endArray();
                    jcg.Sj("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: ".concat(String.valueOf(arrayList3)));
                    i11 = 2;
                    i12 = 1;
                    break;
                case 7:
                    zNextBoolean = jsonReader.nextBoolean();
                    i11 = 2;
                    i12 = 1;
                    break;
                case 8:
                    fNextDouble5 = (float) jsonReader.nextDouble();
                    i11 = 2;
                    i12 = 1;
                    break;
                case 9:
                    aaVarSj = TKC.Sj(jsonReader, jcg);
                    i11 = 2;
                    i12 = 1;
                    break;
                case 10:
                    strNextString2 = jsonReader.nextString();
                    i11 = 2;
                    i12 = 1;
                    break;
                case 11:
                    fJcg = (float) jsonReader.nextDouble();
                    i11 = 2;
                    i12 = 1;
                    break;
                case 12:
                    color = Color.parseColor(jsonReader.nextString());
                    i11 = 2;
                    i12 = 1;
                    break;
                case 13:
                    iNextInt2 = (int) (jsonReader.nextInt() * com.bytedance.adsdk.sP.vS.vS.Sj());
                    i11 = 2;
                    i12 = 1;
                    break;
                case 14:
                    fNextDouble4 = (float) jsonReader.nextDouble();
                    i11 = 2;
                    i12 = 1;
                    break;
                case 15:
                    fNextDouble = (float) jsonReader.nextDouble();
                    i11 = 2;
                    i12 = 1;
                    break;
                case 16:
                    iNextInt = (int) (jsonReader.nextInt() * com.bytedance.adsdk.sP.vS.vS.Sj());
                    break;
                case 17:
                    sPVarSj = EjP.Sj(jsonReader, jcg, z10);
                    break;
                case 18:
                    int iNextInt4 = jsonReader.nextInt();
                    if (iNextInt4 < com.bytedance.adsdk.sP.TKC.TKC.HiB.sP.values().length) {
                        sPVar2 = com.bytedance.adsdk.sP.TKC.TKC.HiB.sP.values()[iNextInt4];
                        int i13 = AnonymousClass1.Sj[sPVar2.ordinal()];
                        if (i13 == i12) {
                            jcg.Sj("Unsupported matte type: Luma");
                        } else if (i13 == i11) {
                            jcg.Sj("Unsupported matte type: Luma Inverted");
                        }
                        jcg.Sj(i12);
                    } else {
                        jcg.Sj("Unsupported matte type: ".concat(String.valueOf(iNextInt4)));
                        i11 = 2;
                        i12 = 1;
                        z10 = false;
                    }
                    break;
                case 19:
                    int iNextInt5 = jsonReader.nextInt();
                    sj2 = com.bytedance.adsdk.sP.TKC.TKC.HiB.Sj.UNKNOWN;
                    if (iNextInt5 < sj2.ordinal()) {
                        sj2 = com.bytedance.adsdk.sP.TKC.TKC.HiB.Sj.values()[iNextInt5];
                    }
                    break;
                case 20:
                    jNextInt = jsonReader.nextInt();
                    break;
                case 21:
                    strNextString = jsonReader.nextString();
                    break;
                case 22:
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        arrayList.add(kF.Sj(jsonReader, jcg));
                    }
                    jcg.Sj(arrayList.size());
                    jsonReader.endArray();
                    i11 = 2;
                    i12 = 1;
                    z10 = false;
                    break;
                default:
                    jsonReader.skipValue();
                    i11 = 2;
                    i12 = 1;
                    z10 = false;
                    break;
            }
        }
        jsonReader.endObject();
        ArrayList arrayList4 = new ArrayList();
        if (fNextDouble5 > 0.0f) {
            arrayList4.add(new com.bytedance.adsdk.sP.Jcg.Sj(jcg, fValueOf, fValueOf, null, 0.0f, Float.valueOf(fNextDouble5)));
        }
        if (fJcg <= 0.0f) {
            fJcg = jcg.Jcg();
        }
        arrayList4.add(new com.bytedance.adsdk.sP.Jcg.Sj(jcg, fValueOf2, fValueOf2, null, fNextDouble5, Float.valueOf(fJcg)));
        arrayList4.add(new com.bytedance.adsdk.sP.Jcg.Sj(jcg, fValueOf, fValueOf, null, fJcg, Float.valueOf(Float.MAX_VALUE)));
        if (strNextString2.endsWith(".ai") || "ai".equals(strNextString3)) {
            jcg.Sj("Convert your Illustrator layers to shape layers.");
        }
        return new com.bytedance.adsdk.sP.TKC.TKC.HiB(arrayList2, jcg, strNextString2, jNextInt, sj2, jNextInt2, strNextString, arrayList, aaVarSj, iNextInt, iNextInt2, color, fNextDouble4, fNextDouble, fNextDouble2, fNextDouble3, teqVS, ymSj, arrayList4, sPVar2, sPVarSj, zNextBoolean, Sj, teqSj);
    }

    public static com.bytedance.adsdk.sP.TKC.TKC.HiB Sj(com.bytedance.adsdk.sP.Jcg jcg) {
        Rect rectEjP = jcg.EjP();
        return new com.bytedance.adsdk.sP.TKC.TKC.HiB(Collections.emptyList(), jcg, "__container", -1L, com.bytedance.adsdk.sP.TKC.TKC.HiB.Sj.PRE_COMP, -1L, null, Collections.emptyList(), new com.bytedance.adsdk.sP.TKC.Sj.aa(), 0, 0, 0, 0.0f, 0.0f, rectEjP.width(), rectEjP.height(), null, null, Collections.emptyList(), com.bytedance.adsdk.sP.TKC.TKC.HiB.sP.NONE, null, false, null, null);
    }
}
