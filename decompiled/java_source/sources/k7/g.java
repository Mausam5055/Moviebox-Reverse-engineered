package k7;

import android.text.TextUtils;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes3.dex */
public class g extends TypeAdapter {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f66678a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f66678a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66678a[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Long read2(JsonReader jsonReader) throws IOException {
        if (jsonReader == null) {
            return null;
        }
        int i11 = a.f66678a[jsonReader.peek().ordinal()];
        if (i11 == 1) {
            try {
                return Long.valueOf(jsonReader.nextLong());
            } catch (NumberFormatException unused) {
                return Long.valueOf(new BigDecimal(jsonReader.nextString()).longValue());
            }
        }
        if (i11 != 2) {
            jsonReader.skipValue();
            return null;
        }
        String strNextString = jsonReader.nextString();
        if (TextUtils.isEmpty(strNextString)) {
            return null;
        }
        try {
            try {
                return Long.valueOf(Long.parseLong(strNextString));
            } catch (Exception unused2) {
                return null;
            }
        } catch (NumberFormatException unused3) {
            return Long.valueOf(new BigDecimal(strNextString).longValue());
        }
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void write(JsonWriter jsonWriter, Long l11) throws IOException {
        jsonWriter.value(l11);
    }
}
