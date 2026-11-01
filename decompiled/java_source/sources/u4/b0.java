package u4;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;

/* JADX INFO: loaded from: classes2.dex */
public class b0 implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b0 f76622a = new b0();

    private b0() {
    }

    @Override // u4.n0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public PointF a(JsonReader jsonReader, float f11) {
        JsonReader.Token tokenT = jsonReader.t();
        if (tokenT != JsonReader.Token.BEGIN_ARRAY && tokenT != JsonReader.Token.BEGIN_OBJECT) {
            if (tokenT == JsonReader.Token.NUMBER) {
                PointF pointF = new PointF(((float) jsonReader.o()) * f11, ((float) jsonReader.o()) * f11);
                while (jsonReader.m()) {
                    jsonReader.x();
                }
                return pointF;
            }
            throw new IllegalArgumentException("Cannot convert json to point. Next token is " + tokenT);
        }
        return s.e(jsonReader, f11);
    }
}
