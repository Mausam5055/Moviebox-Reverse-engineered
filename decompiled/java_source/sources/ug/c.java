package ug;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import java.io.IOException;
import java.lang.reflect.Type;
import okhttp3.ResponseBody;
import okio.BufferedSource;
import okio.Okio;
import retrofit2.k;

/* JADX INFO: loaded from: classes3.dex */
public class c implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Type f76749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f76750b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f76752d = "{\"code\":200005,\"data\":{},\"msg\":\"unknown error\"}";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Gson f76751c = new Gson();

    public c(Type type, String str) {
        this.f76749a = type;
        this.f76750b = str;
    }

    @Override // retrofit2.k
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Object convert(ResponseBody responseBody) throws IOException {
        BufferedSource bufferedSourceBuffer = Okio.buffer(responseBody.get$this_asResponseBody());
        String utf8 = bufferedSourceBuffer.readUtf8();
        lg.a.f68839a.c("HttpTag", "Converter origin json:" + utf8, false);
        bufferedSourceBuffer.close();
        if (TextUtils.equals(this.f76750b, "1311")) {
            return utf8;
        }
        try {
            return o.e(utf8, this.f76749a);
        } catch (JsonSyntaxException e11) {
            lg.a.f68839a.i("HttpTag", "error =" + e11.getMessage() + "json= " + utf8, true);
            return this.f76751c.fromJson(utf8, this.f76749a);
        }
    }
}
