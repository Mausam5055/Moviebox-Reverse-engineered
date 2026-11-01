package u4;

import com.airbnb.lottie.parser.moshi.JsonReader;

/* JADX INFO: loaded from: classes2.dex */
abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final JsonReader.a f76627a = JsonReader.a.a("ef");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final JsonReader.a f76628b = JsonReader.a.a("ty", "v");

    private static r4.a a(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        jsonReader.h();
        r4.a aVar = null;
        while (true) {
            boolean z10 = false;
            while (true) {
                if (!jsonReader.m()) {
                    jsonReader.l();
                    return aVar;
                }
                int iV = jsonReader.v(f76628b);
                if (iV != 0) {
                    if (iV != 1) {
                        jsonReader.w();
                        jsonReader.x();
                    } else if (z10) {
                        aVar = new r4.a(d.e(jsonReader, hVar));
                    } else {
                        jsonReader.x();
                    }
                } else if (jsonReader.p() == 0) {
                    z10 = true;
                }
            }
        }
    }

    static r4.a b(JsonReader jsonReader, com.airbnb.lottie.h hVar) {
        r4.a aVar = null;
        while (jsonReader.m()) {
            if (jsonReader.v(f76627a) != 0) {
                jsonReader.w();
                jsonReader.x();
            } else {
                jsonReader.d();
                while (jsonReader.m()) {
                    r4.a aVarA = a(jsonReader, hVar);
                    if (aVarA != null) {
                        aVar = aVarA;
                    }
                }
                jsonReader.k();
            }
        }
        return aVar;
    }
}
