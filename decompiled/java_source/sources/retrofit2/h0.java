package retrofit2;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.EOFException;
import java.io.IOException;
import java.util.regex.Pattern;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;

/* JADX INFO: loaded from: classes7.dex */
final class h0 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final char[] f74395l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Pattern f74396m = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f74397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HttpUrl f74398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f74399c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HttpUrl.Builder f74400d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Request.Builder f74401e = new Request.Builder();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Headers.Builder f74402f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private MediaType f74403g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f74404h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private MultipartBody.Builder f74405i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private FormBody.Builder f74406j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private RequestBody f74407k;

    private static class a extends RequestBody {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final RequestBody f74408a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final MediaType f74409b;

        a(RequestBody requestBody, MediaType mediaType) {
            this.f74408a = requestBody;
            this.f74409b = mediaType;
        }

        @Override // okhttp3.RequestBody
        public long contentLength() {
            return this.f74408a.contentLength();
        }

        @Override // okhttp3.RequestBody
        /* JADX INFO: renamed from: contentType */
        public MediaType getContentType() {
            return this.f74409b;
        }

        @Override // okhttp3.RequestBody
        public void writeTo(BufferedSink bufferedSink) throws IOException {
            this.f74408a.writeTo(bufferedSink);
        }
    }

    h0(String str, HttpUrl httpUrl, String str2, Headers headers, MediaType mediaType, boolean z10, boolean z11, boolean z12) {
        this.f74397a = str;
        this.f74398b = httpUrl;
        this.f74399c = str2;
        this.f74403g = mediaType;
        this.f74404h = z10;
        if (headers != null) {
            this.f74402f = headers.newBuilder();
        } else {
            this.f74402f = new Headers.Builder();
        }
        if (z11) {
            this.f74406j = new FormBody.Builder();
        } else if (z12) {
            MultipartBody.Builder builder = new MultipartBody.Builder();
            this.f74405i = builder;
            builder.setType(MultipartBody.FORM);
        }
    }

    private static String i(String str, boolean z10) throws EOFException {
        int length = str.length();
        int iCharCount = 0;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z10 && (iCodePointAt == 47 || iCodePointAt == 37))) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, 0, iCharCount);
                j(buffer, str, iCharCount, length, z10);
                return buffer.readUtf8();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str;
    }

    private static void j(Buffer buffer, String str, int i11, int i12, boolean z10) throws EOFException {
        Buffer buffer2 = null;
        while (i11 < i12) {
            int iCodePointAt = str.codePointAt(i11);
            if (!z10 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z10 && (iCodePointAt == 47 || iCodePointAt == 37))) {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(iCodePointAt);
                    while (!buffer2.exhausted()) {
                        byte b11 = buffer2.readByte();
                        buffer.writeByte(37);
                        char[] cArr = f74395l;
                        buffer.writeByte((int) cArr[((b11 & 255) >> 4) & 15]);
                        buffer.writeByte((int) cArr[b11 & 15]);
                    }
                } else {
                    buffer.writeUtf8CodePoint(iCodePointAt);
                }
            }
            i11 += Character.charCount(iCodePointAt);
        }
    }

    void a(String str, String str2, boolean z10) {
        if (z10) {
            this.f74406j.addEncoded(str, str2);
        } else {
            this.f74406j.add(str, str2);
        }
    }

    void b(String str, String str2, boolean z10) {
        if (!HttpHeaders.CONTENT_TYPE.equalsIgnoreCase(str)) {
            if (z10) {
                this.f74402f.addUnsafeNonAscii(str, str2);
                return;
            } else {
                this.f74402f.add(str, str2);
                return;
            }
        }
        try {
            this.f74403g = MediaType.get(str2);
        } catch (IllegalArgumentException e11) {
            throw new IllegalArgumentException("Malformed content type: " + str2, e11);
        }
    }

    void c(Headers headers) {
        this.f74402f.addAll(headers);
    }

    void d(Headers headers, RequestBody requestBody) {
        this.f74405i.addPart(headers, requestBody);
    }

    void e(MultipartBody.Part part) {
        this.f74405i.addPart(part);
    }

    void f(String str, String str2, boolean z10) {
        if (this.f74399c == null) {
            throw new AssertionError();
        }
        String strI = i(str2, z10);
        String strReplace = this.f74399c.replace("{" + str + "}", strI);
        if (!f74396m.matcher(strReplace).matches()) {
            this.f74399c = strReplace;
            return;
        }
        throw new IllegalArgumentException("@Path parameters shouldn't perform path traversal ('.' or '..'): " + str2);
    }

    void g(String str, String str2, boolean z10) {
        String str3 = this.f74399c;
        if (str3 != null) {
            HttpUrl.Builder builderNewBuilder = this.f74398b.newBuilder(str3);
            this.f74400d = builderNewBuilder;
            if (builderNewBuilder == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f74398b + ", Relative: " + this.f74399c);
            }
            this.f74399c = null;
        }
        if (z10) {
            this.f74400d.addEncodedQueryParameter(str, str2);
        } else {
            this.f74400d.addQueryParameter(str, str2);
        }
    }

    void h(Class cls, Object obj) {
        this.f74401e.tag(cls, obj);
    }

    Request.Builder k() {
        HttpUrl httpUrlResolve;
        HttpUrl.Builder builder = this.f74400d;
        if (builder != null) {
            httpUrlResolve = builder.build();
        } else {
            httpUrlResolve = this.f74398b.resolve(this.f74399c);
            if (httpUrlResolve == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f74398b + ", Relative: " + this.f74399c);
            }
        }
        RequestBody aVar = this.f74407k;
        if (aVar == null) {
            FormBody.Builder builder2 = this.f74406j;
            if (builder2 != null) {
                aVar = builder2.build();
            } else {
                MultipartBody.Builder builder3 = this.f74405i;
                if (builder3 != null) {
                    aVar = builder3.build();
                } else if (this.f74404h) {
                    aVar = RequestBody.create((MediaType) null, new byte[0]);
                }
            }
        }
        MediaType mediaType = this.f74403g;
        if (mediaType != null) {
            if (aVar != null) {
                aVar = new a(aVar, mediaType);
            } else {
                this.f74402f.add(HttpHeaders.CONTENT_TYPE, mediaType.getMediaType());
            }
        }
        return this.f74401e.url(httpUrlResolve).headers(this.f74402f.build()).method(this.f74397a, aVar);
    }

    void l(RequestBody requestBody) {
        this.f74407k = requestBody;
    }

    void m(Object obj) {
        this.f74399c = obj.toString();
    }
}
