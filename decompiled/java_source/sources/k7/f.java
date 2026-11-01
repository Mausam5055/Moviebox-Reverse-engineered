package k7;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes3.dex */
public class f extends TypeAdapter {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f66677a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f66677a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66677a[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer read2(JsonReader jsonReader) throws IOException {
        if (jsonReader == null) {
            return null;
        }
        int i11 = a.f66677a[jsonReader.peek().ordinal()];
        if (i11 == 1) {
            try {
                return Integer.valueOf(jsonReader.nextInt());
            } catch (NumberFormatException unused) {
                return Integer.valueOf((int) jsonReader.nextDouble());
            }
        }
        if (i11 != 2) {
            jsonReader.skipValue();
            return null;
        }
        String strNextString = jsonReader.nextString();
        if (strNextString != null && !"".equals(strNextString)) {
            try {
                try {
                    return Integer.valueOf(Integer.parseInt(strNextString));
                } catch (NumberFormatException unused2) {
                    return Integer.valueOf((int) new BigDecimal(strNextString).floatValue());
                }
            } catch (Exception unused3) {
            }
        }
        return null;
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void write(JsonWriter jsonWriter, Integer num) throws IOException {
        jsonWriter.value(num);
    }
}
