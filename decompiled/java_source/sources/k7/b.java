package k7;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class b extends TypeAdapter {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f66673a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f66673a = iArr;
            try {
                iArr[JsonToken.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66673a[JsonToken.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f66673a[JsonToken.NUMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read */
    public Boolean read2(JsonReader jsonReader) throws IOException {
        if (jsonReader == null) {
            return null;
        }
        int i11 = a.f66673a[jsonReader.peek().ordinal()];
        if (i11 == 1) {
            return Boolean.valueOf(jsonReader.nextBoolean());
        }
        if (i11 == 2) {
            return Boolean.valueOf(Boolean.parseBoolean(jsonReader.nextString()));
        }
        if (i11 == 3) {
            return Boolean.valueOf(jsonReader.nextInt() != 0);
        }
        jsonReader.skipValue();
        return null;
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
        jsonWriter.value(bool);
    }
}
