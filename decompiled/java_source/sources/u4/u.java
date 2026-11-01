package u4;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
abstract class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static JsonReader.a f76674a = JsonReader.a.a(CampaignEx.JSON_KEY_AD_K);

    static List a(JsonReader jsonReader, com.airbnb.lottie.h hVar, float f11, n0 n0Var, boolean z10) {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.t() == JsonReader.Token.STRING) {
            hVar.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.h();
        while (jsonReader.m()) {
            if (jsonReader.v(f76674a) != 0) {
                jsonReader.x();
            } else if (jsonReader.t() == JsonReader.Token.BEGIN_ARRAY) {
                jsonReader.d();
                if (jsonReader.t() == JsonReader.Token.NUMBER) {
                    arrayList.add(t.c(jsonReader, hVar, f11, n0Var, false, z10));
                } else {
                    while (jsonReader.m()) {
                        arrayList.add(t.c(jsonReader, hVar, f11, n0Var, true, z10));
                    }
                }
                jsonReader.k();
            } else {
                arrayList.add(t.c(jsonReader, hVar, f11, n0Var, false, z10));
            }
        }
        jsonReader.l();
        b(arrayList);
        return arrayList;
    }

    public static void b(List list) {
        int i11;
        Object obj;
        int size = list.size();
        int i12 = 0;
        while (true) {
            i11 = size - 1;
            if (i12 >= i11) {
                break;
            }
            w4.a aVar = (w4.a) list.get(i12);
            i12++;
            w4.a aVar2 = (w4.a) list.get(i12);
            aVar.f77570h = Float.valueOf(aVar2.f77569g);
            if (aVar.f77565c == null && (obj = aVar2.f77564b) != null) {
                aVar.f77565c = obj;
                if (aVar instanceof n4.i) {
                    ((n4.i) aVar).j();
                }
            }
        }
        w4.a aVar3 = (w4.a) list.get(i11);
        if ((aVar3.f77564b == null || aVar3.f77565c == null) && list.size() > 1) {
            list.remove(aVar3);
        }
    }
}
