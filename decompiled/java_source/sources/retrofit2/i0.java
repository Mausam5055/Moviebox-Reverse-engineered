package retrofit2;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URI;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.coroutines.Continuation;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.Field;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.HEAD;
import retrofit2.http.HTTP;
import retrofit2.http.Header;
import retrofit2.http.HeaderMap;
import retrofit2.http.Multipart;
import retrofit2.http.OPTIONS;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Part;
import retrofit2.http.PartMap;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;
import retrofit2.http.QueryName;
import retrofit2.http.Tag;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes7.dex */
final class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f74410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Method f74411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HttpUrl f74412c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f74413d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f74414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Headers f74415f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final MediaType f74416g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f74417h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f74418i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f74419j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final a0[] f74420k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final boolean f74421l;

    static final class a {

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private static final Pattern f74422y = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private static final Pattern f74423z = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final k0 f74424a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Class f74425b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Method f74426c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Annotation[] f74427d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final Annotation[][] f74428e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final Type[] f74429f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f74430g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f74431h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f74432i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f74433j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        boolean f74434k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        boolean f74435l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        boolean f74436m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        boolean f74437n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        String f74438o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        boolean f74439p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        boolean f74440q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        boolean f74441r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        String f74442s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        Headers f74443t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        MediaType f74444u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        Set f74445v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        a0[] f74446w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        boolean f74447x;

        a(k0 k0Var, Class cls, Method method) {
            this.f74424a = k0Var;
            this.f74425b = cls;
            this.f74426c = method;
            this.f74427d = method.getAnnotations();
            this.f74429f = method.getGenericParameterTypes();
            this.f74428e = method.getParameterAnnotations();
        }

        private static Class a(Class cls) {
            if (Boolean.TYPE == cls) {
                return Boolean.class;
            }
            if (Byte.TYPE == cls) {
                return Byte.class;
            }
            if (Character.TYPE == cls) {
                return Character.class;
            }
            if (Double.TYPE == cls) {
                return Double.class;
            }
            if (Float.TYPE == cls) {
                return Float.class;
            }
            if (Integer.TYPE == cls) {
                return Integer.class;
            }
            if (Long.TYPE == cls) {
                return Long.class;
            }
            return Short.TYPE == cls ? Short.class : cls;
        }

        private Headers c(String[] strArr, boolean z10) {
            Headers.Builder builder = new Headers.Builder();
            for (String str : strArr) {
                int iIndexOf = str.indexOf(58);
                if (iIndexOf == -1 || iIndexOf == 0 || iIndexOf == str.length() - 1) {
                    throw o0.n(this.f74426c, "@Headers value must be in the form \"Name: Value\". Found: \"%s\"", str);
                }
                String strSubstring = str.substring(0, iIndexOf);
                String strTrim = str.substring(iIndexOf + 1).trim();
                if (HttpHeaders.CONTENT_TYPE.equalsIgnoreCase(strSubstring)) {
                    try {
                        this.f74444u = MediaType.get(strTrim);
                    } catch (IllegalArgumentException e11) {
                        throw o0.o(this.f74426c, e11, "Malformed content type: %s", strTrim);
                    }
                } else if (z10) {
                    builder.addUnsafeNonAscii(strSubstring, strTrim);
                } else {
                    builder.add(strSubstring, strTrim);
                }
            }
            return builder.build();
        }

        private void d(String str, String str2, boolean z10) {
            String str3 = this.f74438o;
            if (str3 != null) {
                throw o0.n(this.f74426c, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
            }
            this.f74438o = str;
            this.f74439p = z10;
            if (str2.isEmpty()) {
                return;
            }
            int iIndexOf = str2.indexOf(63);
            if (iIndexOf != -1 && iIndexOf < str2.length() - 1) {
                String strSubstring = str2.substring(iIndexOf + 1);
                if (f74422y.matcher(strSubstring).find()) {
                    throw o0.n(this.f74426c, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", strSubstring);
                }
            }
            this.f74442s = str2;
            this.f74445v = h(str2);
        }

        private void e(Annotation annotation) {
            if (annotation instanceof DELETE) {
                d("DELETE", ((DELETE) annotation).value(), false);
                return;
            }
            if (annotation instanceof GET) {
                d("GET", ((GET) annotation).value(), false);
                return;
            }
            if (annotation instanceof HEAD) {
                d("HEAD", ((HEAD) annotation).value(), false);
                return;
            }
            if (annotation instanceof PATCH) {
                d("PATCH", ((PATCH) annotation).value(), true);
                return;
            }
            if (annotation instanceof POST) {
                d("POST", ((POST) annotation).value(), true);
                return;
            }
            if (annotation instanceof PUT) {
                d("PUT", ((PUT) annotation).value(), true);
                return;
            }
            if (annotation instanceof OPTIONS) {
                d("OPTIONS", ((OPTIONS) annotation).value(), false);
                return;
            }
            if (annotation instanceof HTTP) {
                HTTP http = (HTTP) annotation;
                d(http.method(), http.path(), http.hasBody());
                return;
            }
            if (annotation instanceof retrofit2.http.Headers) {
                retrofit2.http.Headers headers = (retrofit2.http.Headers) annotation;
                String[] strArrValue = headers.value();
                if (strArrValue.length == 0) {
                    throw o0.n(this.f74426c, "@Headers annotation is empty.", new Object[0]);
                }
                this.f74443t = c(strArrValue, headers.allowUnsafeNonAsciiValues());
                return;
            }
            if (annotation instanceof Multipart) {
                if (this.f74440q) {
                    throw o0.n(this.f74426c, "Only one encoding annotation is allowed.", new Object[0]);
                }
                this.f74441r = true;
            } else if (annotation instanceof FormUrlEncoded) {
                if (this.f74441r) {
                    throw o0.n(this.f74426c, "Only one encoding annotation is allowed.", new Object[0]);
                }
                this.f74440q = true;
            }
        }

        private a0 f(int i11, Type type, Annotation[] annotationArr, boolean z10) {
            a0 a0Var;
            if (annotationArr != null) {
                a0Var = null;
                for (Annotation annotation : annotationArr) {
                    a0 a0VarG = g(i11, type, annotationArr, annotation);
                    if (a0VarG != null) {
                        if (a0Var != null) {
                            throw o0.p(this.f74426c, i11, "Multiple Retrofit annotations found, only one allowed.", new Object[0]);
                        }
                        a0Var = a0VarG;
                    }
                }
            } else {
                a0Var = null;
            }
            if (a0Var != null) {
                return a0Var;
            }
            if (z10) {
                try {
                    if (o0.h(type) == Continuation.class) {
                        this.f74447x = true;
                        return null;
                    }
                } catch (NoClassDefFoundError unused) {
                }
            }
            throw o0.p(this.f74426c, i11, "No Retrofit annotation found.", new Object[0]);
        }

        private a0 g(int i11, Type type, Annotation[] annotationArr, Annotation annotation) {
            if (annotation instanceof Url) {
                j(i11, type);
                if (this.f74437n) {
                    throw o0.p(this.f74426c, i11, "Multiple @Url method annotations found.", new Object[0]);
                }
                if (this.f74433j) {
                    throw o0.p(this.f74426c, i11, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.f74434k) {
                    throw o0.p(this.f74426c, i11, "A @Url parameter must not come after a @Query.", new Object[0]);
                }
                if (this.f74435l) {
                    throw o0.p(this.f74426c, i11, "A @Url parameter must not come after a @QueryName.", new Object[0]);
                }
                if (this.f74436m) {
                    throw o0.p(this.f74426c, i11, "A @Url parameter must not come after a @QueryMap.", new Object[0]);
                }
                if (this.f74442s != null) {
                    throw o0.p(this.f74426c, i11, "@Url cannot be used with @%s URL", this.f74438o);
                }
                this.f74437n = true;
                if (type == HttpUrl.class || type == String.class || type == URI.class || ((type instanceof Class) && "android.net.Uri".equals(((Class) type).getName()))) {
                    return new a0.p(this.f74426c, i11);
                }
                throw o0.p(this.f74426c, i11, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type.", new Object[0]);
            }
            if (annotation instanceof Path) {
                j(i11, type);
                if (this.f74434k) {
                    throw o0.p(this.f74426c, i11, "A @Path parameter must not come after a @Query.", new Object[0]);
                }
                if (this.f74435l) {
                    throw o0.p(this.f74426c, i11, "A @Path parameter must not come after a @QueryName.", new Object[0]);
                }
                if (this.f74436m) {
                    throw o0.p(this.f74426c, i11, "A @Path parameter must not come after a @QueryMap.", new Object[0]);
                }
                if (this.f74437n) {
                    throw o0.p(this.f74426c, i11, "@Path parameters may not be used with @Url.", new Object[0]);
                }
                if (this.f74442s == null) {
                    throw o0.p(this.f74426c, i11, "@Path can only be used with relative url on @%s", this.f74438o);
                }
                this.f74433j = true;
                Path path = (Path) annotation;
                String strValue = path.value();
                i(i11, strValue);
                return new a0.k(this.f74426c, i11, strValue, this.f74424a.i(type, annotationArr), path.encoded());
            }
            if (annotation instanceof Query) {
                j(i11, type);
                Query query = (Query) annotation;
                String strValue2 = query.value();
                boolean zEncoded = query.encoded();
                Class clsH = o0.h(type);
                this.f74434k = true;
                if (!Iterable.class.isAssignableFrom(clsH)) {
                    return clsH.isArray() ? new a0.l(strValue2, this.f74424a.i(a(clsH.getComponentType()), annotationArr), zEncoded).b() : new a0.l(strValue2, this.f74424a.i(type, annotationArr), zEncoded);
                }
                if (type instanceof ParameterizedType) {
                    return new a0.l(strValue2, this.f74424a.i(o0.g(0, (ParameterizedType) type), annotationArr), zEncoded).c();
                }
                throw o0.p(this.f74426c, i11, clsH.getSimpleName() + " must include generic type (e.g., " + clsH.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof QueryName) {
                j(i11, type);
                boolean zEncoded2 = ((QueryName) annotation).encoded();
                Class clsH2 = o0.h(type);
                this.f74435l = true;
                if (!Iterable.class.isAssignableFrom(clsH2)) {
                    return clsH2.isArray() ? new a0.n(this.f74424a.i(a(clsH2.getComponentType()), annotationArr), zEncoded2).b() : new a0.n(this.f74424a.i(type, annotationArr), zEncoded2);
                }
                if (type instanceof ParameterizedType) {
                    return new a0.n(this.f74424a.i(o0.g(0, (ParameterizedType) type), annotationArr), zEncoded2).c();
                }
                throw o0.p(this.f74426c, i11, clsH2.getSimpleName() + " must include generic type (e.g., " + clsH2.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof QueryMap) {
                j(i11, type);
                Class clsH3 = o0.h(type);
                this.f74436m = true;
                if (!Map.class.isAssignableFrom(clsH3)) {
                    throw o0.p(this.f74426c, i11, "@QueryMap parameter type must be Map.", new Object[0]);
                }
                Type typeI = o0.i(type, clsH3, Map.class);
                if (!(typeI instanceof ParameterizedType)) {
                    throw o0.p(this.f74426c, i11, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType = (ParameterizedType) typeI;
                Type typeG = o0.g(0, parameterizedType);
                if (String.class == typeG) {
                    return new a0.m(this.f74426c, i11, this.f74424a.i(o0.g(1, parameterizedType), annotationArr), ((QueryMap) annotation).encoded());
                }
                throw o0.p(this.f74426c, i11, "@QueryMap keys must be of type String: " + typeG, new Object[0]);
            }
            if (annotation instanceof Header) {
                j(i11, type);
                Header header = (Header) annotation;
                String strValue3 = header.value();
                Class clsH4 = o0.h(type);
                if (!Iterable.class.isAssignableFrom(clsH4)) {
                    return clsH4.isArray() ? new a0.f(strValue3, this.f74424a.i(a(clsH4.getComponentType()), annotationArr), header.allowUnsafeNonAsciiValues()).b() : new a0.f(strValue3, this.f74424a.i(type, annotationArr), header.allowUnsafeNonAsciiValues());
                }
                if (type instanceof ParameterizedType) {
                    return new a0.f(strValue3, this.f74424a.i(o0.g(0, (ParameterizedType) type), annotationArr), header.allowUnsafeNonAsciiValues()).c();
                }
                throw o0.p(this.f74426c, i11, clsH4.getSimpleName() + " must include generic type (e.g., " + clsH4.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof HeaderMap) {
                if (type == Headers.class) {
                    return new a0.h(this.f74426c, i11);
                }
                j(i11, type);
                Class clsH5 = o0.h(type);
                if (!Map.class.isAssignableFrom(clsH5)) {
                    throw o0.p(this.f74426c, i11, "@HeaderMap parameter type must be Map or Headers.", new Object[0]);
                }
                Type typeI2 = o0.i(type, clsH5, Map.class);
                if (!(typeI2 instanceof ParameterizedType)) {
                    throw o0.p(this.f74426c, i11, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType2 = (ParameterizedType) typeI2;
                Type typeG2 = o0.g(0, parameterizedType2);
                if (String.class == typeG2) {
                    return new a0.g(this.f74426c, i11, this.f74424a.i(o0.g(1, parameterizedType2), annotationArr), ((HeaderMap) annotation).allowUnsafeNonAsciiValues());
                }
                throw o0.p(this.f74426c, i11, "@HeaderMap keys must be of type String: " + typeG2, new Object[0]);
            }
            if (annotation instanceof Field) {
                j(i11, type);
                if (!this.f74440q) {
                    throw o0.p(this.f74426c, i11, "@Field parameters can only be used with form encoding.", new Object[0]);
                }
                Field field = (Field) annotation;
                String strValue4 = field.value();
                boolean zEncoded3 = field.encoded();
                this.f74430g = true;
                Class clsH6 = o0.h(type);
                if (!Iterable.class.isAssignableFrom(clsH6)) {
                    return clsH6.isArray() ? new a0.d(strValue4, this.f74424a.i(a(clsH6.getComponentType()), annotationArr), zEncoded3).b() : new a0.d(strValue4, this.f74424a.i(type, annotationArr), zEncoded3);
                }
                if (type instanceof ParameterizedType) {
                    return new a0.d(strValue4, this.f74424a.i(o0.g(0, (ParameterizedType) type), annotationArr), zEncoded3).c();
                }
                throw o0.p(this.f74426c, i11, clsH6.getSimpleName() + " must include generic type (e.g., " + clsH6.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof FieldMap) {
                j(i11, type);
                if (!this.f74440q) {
                    throw o0.p(this.f74426c, i11, "@FieldMap parameters can only be used with form encoding.", new Object[0]);
                }
                Class clsH7 = o0.h(type);
                if (!Map.class.isAssignableFrom(clsH7)) {
                    throw o0.p(this.f74426c, i11, "@FieldMap parameter type must be Map.", new Object[0]);
                }
                Type typeI3 = o0.i(type, clsH7, Map.class);
                if (!(typeI3 instanceof ParameterizedType)) {
                    throw o0.p(this.f74426c, i11, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType3 = (ParameterizedType) typeI3;
                Type typeG3 = o0.g(0, parameterizedType3);
                if (String.class == typeG3) {
                    k kVarI = this.f74424a.i(o0.g(1, parameterizedType3), annotationArr);
                    this.f74430g = true;
                    return new a0.e(this.f74426c, i11, kVarI, ((FieldMap) annotation).encoded());
                }
                throw o0.p(this.f74426c, i11, "@FieldMap keys must be of type String: " + typeG3, new Object[0]);
            }
            if (annotation instanceof Part) {
                j(i11, type);
                if (!this.f74441r) {
                    throw o0.p(this.f74426c, i11, "@Part parameters can only be used with multipart encoding.", new Object[0]);
                }
                Part part = (Part) annotation;
                this.f74431h = true;
                String strValue5 = part.value();
                Class clsH8 = o0.h(type);
                if (strValue5.isEmpty()) {
                    if (!Iterable.class.isAssignableFrom(clsH8)) {
                        if (clsH8.isArray()) {
                            if (MultipartBody.Part.class.isAssignableFrom(clsH8.getComponentType())) {
                                return a0.o.f74382a.b();
                            }
                            throw o0.p(this.f74426c, i11, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                        }
                        if (MultipartBody.Part.class.isAssignableFrom(clsH8)) {
                            return a0.o.f74382a;
                        }
                        throw o0.p(this.f74426c, i11, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                    if (type instanceof ParameterizedType) {
                        if (MultipartBody.Part.class.isAssignableFrom(o0.h(o0.g(0, (ParameterizedType) type)))) {
                            return a0.o.f74382a.c();
                        }
                        throw o0.p(this.f74426c, i11, "@Part annotation must supply a name or use MultipartBody.Part parameter type.", new Object[0]);
                    }
                    throw o0.p(this.f74426c, i11, clsH8.getSimpleName() + " must include generic type (e.g., " + clsH8.getSimpleName() + "<String>)", new Object[0]);
                }
                Headers headersOf = Headers.of(HttpHeaders.CONTENT_DISPOSITION, "form-data; name=\"" + strValue5 + "\"", "Content-Transfer-Encoding", part.encoding());
                if (!Iterable.class.isAssignableFrom(clsH8)) {
                    if (!clsH8.isArray()) {
                        if (MultipartBody.Part.class.isAssignableFrom(clsH8)) {
                            throw o0.p(this.f74426c, i11, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                        }
                        return new a0.i(this.f74426c, i11, headersOf, this.f74424a.g(type, annotationArr, this.f74427d));
                    }
                    Class clsA = a(clsH8.getComponentType());
                    if (MultipartBody.Part.class.isAssignableFrom(clsA)) {
                        throw o0.p(this.f74426c, i11, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                    return new a0.i(this.f74426c, i11, headersOf, this.f74424a.g(clsA, annotationArr, this.f74427d)).b();
                }
                if (type instanceof ParameterizedType) {
                    Type typeG4 = o0.g(0, (ParameterizedType) type);
                    if (MultipartBody.Part.class.isAssignableFrom(o0.h(typeG4))) {
                        throw o0.p(this.f74426c, i11, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation.", new Object[0]);
                    }
                    return new a0.i(this.f74426c, i11, headersOf, this.f74424a.g(typeG4, annotationArr, this.f74427d)).c();
                }
                throw o0.p(this.f74426c, i11, clsH8.getSimpleName() + " must include generic type (e.g., " + clsH8.getSimpleName() + "<String>)", new Object[0]);
            }
            if (annotation instanceof PartMap) {
                j(i11, type);
                if (!this.f74441r) {
                    throw o0.p(this.f74426c, i11, "@PartMap parameters can only be used with multipart encoding.", new Object[0]);
                }
                this.f74431h = true;
                Class clsH9 = o0.h(type);
                if (!Map.class.isAssignableFrom(clsH9)) {
                    throw o0.p(this.f74426c, i11, "@PartMap parameter type must be Map.", new Object[0]);
                }
                Type typeI4 = o0.i(type, clsH9, Map.class);
                if (!(typeI4 instanceof ParameterizedType)) {
                    throw o0.p(this.f74426c, i11, "Map must include generic types (e.g., Map<String, String>)", new Object[0]);
                }
                ParameterizedType parameterizedType4 = (ParameterizedType) typeI4;
                Type typeG5 = o0.g(0, parameterizedType4);
                if (String.class == typeG5) {
                    Type typeG6 = o0.g(1, parameterizedType4);
                    if (MultipartBody.Part.class.isAssignableFrom(o0.h(typeG6))) {
                        throw o0.p(this.f74426c, i11, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead.", new Object[0]);
                    }
                    return new a0.j(this.f74426c, i11, this.f74424a.g(typeG6, annotationArr, this.f74427d), ((PartMap) annotation).encoding());
                }
                throw o0.p(this.f74426c, i11, "@PartMap keys must be of type String: " + typeG5, new Object[0]);
            }
            if (annotation instanceof Body) {
                j(i11, type);
                if (this.f74440q || this.f74441r) {
                    throw o0.p(this.f74426c, i11, "@Body parameters cannot be used with form or multi-part encoding.", new Object[0]);
                }
                if (this.f74432i) {
                    throw o0.p(this.f74426c, i11, "Multiple @Body method annotations found.", new Object[0]);
                }
                try {
                    k kVarG = this.f74424a.g(type, annotationArr, this.f74427d);
                    this.f74432i = true;
                    return new a0.c(this.f74426c, i11, kVarG);
                } catch (RuntimeException e11) {
                    throw o0.q(this.f74426c, e11, i11, "Unable to create @Body converter for %s", type);
                }
            }
            if (!(annotation instanceof Tag)) {
                return null;
            }
            j(i11, type);
            Class clsH10 = o0.h(type);
            for (int i12 = i11 - 1; i12 >= 0; i12--) {
                a0 a0Var = this.f74446w[i12];
                if ((a0Var instanceof a0.q) && ((a0.q) a0Var).f74385a.equals(clsH10)) {
                    throw o0.p(this.f74426c, i11, "@Tag type " + clsH10.getName() + " is duplicate of " + b0.f74393b.a(this.f74426c, i12) + " and would always overwrite its value.", new Object[0]);
                }
            }
            return new a0.q(clsH10);
        }

        static Set h(String str) {
            Matcher matcher = f74422y.matcher(str);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (matcher.find()) {
                linkedHashSet.add(matcher.group(1));
            }
            return linkedHashSet;
        }

        private void i(int i11, String str) {
            if (!f74423z.matcher(str).matches()) {
                throw o0.p(this.f74426c, i11, "@Path parameter name must match %s. Found: %s", f74422y.pattern(), str);
            }
            if (!this.f74445v.contains(str)) {
                throw o0.p(this.f74426c, i11, "URL \"%s\" does not contain \"{%s}\".", this.f74442s, str);
            }
        }

        private void j(int i11, Type type) {
            if (o0.j(type)) {
                throw o0.p(this.f74426c, i11, "Parameter type must not include a type variable or wildcard: %s", type);
            }
        }

        i0 b() {
            for (Annotation annotation : this.f74427d) {
                e(annotation);
            }
            if (this.f74438o == null) {
                throw o0.n(this.f74426c, "HTTP method annotation is required (e.g., @GET, @POST, etc.).", new Object[0]);
            }
            if (!this.f74439p) {
                if (this.f74441r) {
                    throw o0.n(this.f74426c, "Multipart can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
                if (this.f74440q) {
                    throw o0.n(this.f74426c, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST).", new Object[0]);
                }
            }
            int length = this.f74428e.length;
            this.f74446w = new a0[length];
            int i11 = length - 1;
            int i12 = 0;
            while (i12 < length) {
                this.f74446w[i12] = f(i12, this.f74429f[i12], this.f74428e[i12], i12 == i11);
                i12++;
            }
            if (this.f74442s == null && !this.f74437n) {
                throw o0.n(this.f74426c, "Missing either @%s URL or @Url parameter.", this.f74438o);
            }
            boolean z10 = this.f74440q;
            if (!z10 && !this.f74441r && !this.f74439p && this.f74432i) {
                throw o0.n(this.f74426c, "Non-body HTTP method cannot contain @Body.", new Object[0]);
            }
            if (z10 && !this.f74430g) {
                throw o0.n(this.f74426c, "Form-encoded method must contain at least one @Field.", new Object[0]);
            }
            if (!this.f74441r || this.f74431h) {
                return new i0(this);
            }
            throw o0.n(this.f74426c, "Multipart method must contain at least one @Part.", new Object[0]);
        }
    }

    i0(a aVar) {
        this.f74410a = aVar.f74425b;
        this.f74411b = aVar.f74426c;
        this.f74412c = aVar.f74424a.f74460c;
        this.f74413d = aVar.f74438o;
        this.f74414e = aVar.f74442s;
        this.f74415f = aVar.f74443t;
        this.f74416g = aVar.f74444u;
        this.f74417h = aVar.f74439p;
        this.f74418i = aVar.f74440q;
        this.f74419j = aVar.f74441r;
        this.f74420k = aVar.f74446w;
        this.f74421l = aVar.f74447x;
    }

    static i0 b(k0 k0Var, Class cls, Method method) {
        return new a(k0Var, cls, method).b();
    }

    Request a(Object obj, Object[] objArr) {
        a0[] a0VarArr = this.f74420k;
        int length = objArr.length;
        if (length != a0VarArr.length) {
            throw new IllegalArgumentException("Argument count (" + length + ") doesn't match expected count (" + a0VarArr.length + ")");
        }
        h0 h0Var = new h0(this.f74413d, this.f74412c, this.f74414e, this.f74415f, this.f74416g, this.f74417h, this.f74418i, this.f74419j);
        if (this.f74421l) {
            length--;
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i11 = 0; i11 < length; i11++) {
            arrayList.add(objArr[i11]);
            a0VarArr[i11].a(h0Var, objArr[i11]);
        }
        return h0Var.k().tag(v.class, new v(this.f74410a, obj, this.f74411b, arrayList)).build();
    }
}
