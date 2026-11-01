package k7;

import com.google.gson.Gson;
import com.google.gson.JsonParser;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class h extends TypeAdapter {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f66679a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f66679a = iArr;
            try {
                iArr[JsonToken.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66679a[JsonToken.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f66679a[JsonToken.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f66679a[JsonToken.BEGIN_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static String a(JsonReader jsonReader) {
        try {
            return new Gson().toJson(JsonParser.parseReader(jsonReader));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read */
    public String read2(JsonReader jsonReader) throws IOException {
        if (jsonReader == null) {
            return null;
        }
        int i11 = a.f66679a[jsonReader.peek().ordinal()];
        if (i11 == 1 || i11 == 2) {
            return jsonReader.nextString();
        }
        if (i11 == 3) {
            return Boolean.toString(jsonReader.nextBoolean());
        }
        if (i11 == 4) {
            return a(jsonReader);
        }
        jsonReader.skipValue();
        return null;
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, String str) throws IOException {
        jsonWriter.value(str);
    }
}
