package w10;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import okhttp3.ResponseBody;
import retrofit2.k;

/* JADX INFO: loaded from: classes7.dex */
final class c implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gson f77549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TypeAdapter f77550b;

    c(Gson gson, TypeAdapter typeAdapter) {
        this.f77549a = gson;
        this.f77550b = typeAdapter;
    }

    @Override // retrofit2.k
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Object convert(ResponseBody responseBody) {
        JsonReader jsonReaderNewJsonReader = this.f77549a.newJsonReader(responseBody.charStream());
        try {
            Object obj = this.f77550b.read2(jsonReaderNewJsonReader);
            if (jsonReaderNewJsonReader.peek() != JsonToken.END_DOCUMENT) {
                throw new JsonIOException("JSON document was not fully consumed.");
            }
            responseBody.close();
            return obj;
        } catch (Throwable th2) {
            responseBody.close();
            throw th2;
        }
    }
}
