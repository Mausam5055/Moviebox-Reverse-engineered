package com.bytedance.adsdk.sP.HiB;

import android.util.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
class Fm {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:70:0x011b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0029  */
    static com.bytedance.adsdk.sP.TKC.sP.TzV Sj(JsonReader jsonReader, com.bytedance.adsdk.sP.Jcg jcg) throws IOException {
        String str;
        ArrayList arrayList = new ArrayList();
        float fNextDouble = 0.0f;
        String strNextString = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVar = null;
        com.bytedance.adsdk.sP.TKC.Sj.Sj sjJcg = null;
        com.bytedance.adsdk.sP.TKC.Sj.sP sPVarSj = null;
        com.bytedance.adsdk.sP.TKC.sP.TzV.Sj sj2 = null;
        com.bytedance.adsdk.sP.TKC.sP.TzV.sP sPVar2 = null;
        boolean zNextBoolean = false;
        com.bytedance.adsdk.sP.TKC.Sj.EjP ejPSP = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            strNextName.hashCode();
            switch (strNextName) {
                case "c":
                    sjJcg = EjP.Jcg(jsonReader, jcg);
                    break;
                case "d":
                    str = strNextString;
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
                        strNextString2.hashCode();
                        switch (strNextString2) {
                            case "d":
                            case "g":
                                jcg.Sj(true);
                                arrayList.add(sPVarSj2);
                                break;
                            case "o":
                                sPVar = sPVarSj2;
                                break;
                        }
                    }
                    jsonReader.endArray();
                    if (arrayList.size() == 1) {
                        arrayList.add(arrayList.get(0));
                    }
                    strNextString = str;
                    break;
                case "o":
                    ejPSP = EjP.sP(jsonReader, jcg);
                    break;
                case "w":
                    sPVarSj = EjP.Sj(jsonReader, jcg);
                    break;
                case "hd":
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                case "lc":
                    str = strNextString;
                    sj2 = com.bytedance.adsdk.sP.TKC.sP.TzV.Sj.values()[jsonReader.nextInt() - 1];
                    strNextString = str;
                    break;
                case "lj":
                    str = strNextString;
                    sPVar2 = com.bytedance.adsdk.sP.TKC.sP.TzV.sP.values()[jsonReader.nextInt() - 1];
                    strNextString = str;
                    break;
                case "ml":
                    str = strNextString;
                    fNextDouble = (float) jsonReader.nextDouble();
                    strNextString = str;
                    break;
                case "nm":
                    strNextString = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    str = strNextString;
                    strNextString = str;
                    break;
            }
        }
        return new com.bytedance.adsdk.sP.TKC.sP.TzV(strNextString, sPVar, arrayList, sjJcg, ejPSP == null ? new com.bytedance.adsdk.sP.TKC.Sj.EjP(Collections.singletonList(new com.bytedance.adsdk.sP.Jcg.Sj(100))) : ejPSP, sPVarSj, sj2, sPVar2, fNextDouble, zNextBoolean);
    }
}
