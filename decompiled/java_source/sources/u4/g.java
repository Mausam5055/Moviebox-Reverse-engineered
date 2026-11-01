package u4;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader;

/* JADX INFO: loaded from: classes2.dex */
public class g implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f76632a = new g();

    private g() {
    }

    @Override // u4.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Integer a(JsonReader jsonReader, float f11) {
        boolean z10 = jsonReader.t() == JsonReader.Token.BEGIN_ARRAY;
        if (z10) {
            jsonReader.d();
        }
        double dO = jsonReader.o();
        double dO2 = jsonReader.o();
        double dO3 = jsonReader.o();
        double dO4 = jsonReader.t() == JsonReader.Token.NUMBER ? jsonReader.o() : 1.0d;
        if (z10) {
            jsonReader.k();
        }
        if (dO <= 1.0d && dO2 <= 1.0d && dO3 <= 1.0d) {
            dO *= 255.0d;
            dO2 *= 255.0d;
            dO3 *= 255.0d;
            if (dO4 <= 1.0d) {
                dO4 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) dO4, (int) dO, (int) dO2, (int) dO3));
    }
}
