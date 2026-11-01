package w10;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import retrofit2.k;

/* JADX INFO: loaded from: classes7.dex */
final class b implements k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final MediaType f77546c = MediaType.get("application/json; charset=UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Gson f77547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TypeAdapter f77548b;

    b(Gson gson, TypeAdapter typeAdapter) {
        this.f77547a = gson;
        this.f77548b = typeAdapter;
    }

    @Override // retrofit2.k
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RequestBody convert(Object obj) throws IOException {
        Buffer buffer = new Buffer();
        JsonWriter jsonWriterNewJsonWriter = this.f77547a.newJsonWriter(new OutputStreamWriter(buffer.outputStream(), StandardCharsets.UTF_8));
        this.f77548b.write(jsonWriterNewJsonWriter, obj);
        jsonWriterNewJsonWriter.close();
        return RequestBody.create(f77546c, buffer.readByteString());
    }
}
