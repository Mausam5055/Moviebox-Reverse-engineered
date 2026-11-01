package k7;

import android.text.TextUtils;
import android.util.Log;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class c extends TypeAdapter {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f66674a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f66674a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66674a[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void write(JsonWriter jsonWriter, Double d11) throws IOException {
        jsonWriter.value(d11);
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read */
    public Double read2(JsonReader jsonReader) throws IOException {
        if (jsonReader == null) {
            return null;
        }
        int i11 = a.f66674a[jsonReader.peek().ordinal()];
        if (i11 == 1) {
            return Double.valueOf(jsonReader.nextDouble());
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
            return Double.valueOf(Double.parseDouble(strNextString));
        } catch (Exception e11) {
            Log.getStackTraceString(e11);
            return null;
        }
    }
}
