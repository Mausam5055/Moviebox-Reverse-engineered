package u4;

import com.airbnb.lottie.parser.moshi.JsonReader;

/* JADX INFO: loaded from: classes2.dex */
public class g0 implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g0 f76633a = new g0();

    private g0() {
    }

    @Override // u4.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public w4.d a(JsonReader jsonReader, float f11) {
        boolean z10 = jsonReader.t() == JsonReader.Token.BEGIN_ARRAY;
        if (z10) {
            jsonReader.d();
        }
        float fO = (float) jsonReader.o();
        float fO2 = (float) jsonReader.o();
        while (jsonReader.m()) {
            jsonReader.x();
        }
        if (z10) {
            jsonReader.k();
        }
        return new w4.d((fO / 100.0f) * f11, (fO2 / 100.0f) * f11);
    }
}
