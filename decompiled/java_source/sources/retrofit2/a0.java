package retrofit2;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes7.dex */
abstract class a0 {

    class a extends a0 {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.a0
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(h0 h0Var, Iterable iterable) {
            if (iterable == null) {
                return;
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                a0.this.a(h0Var, it.next());
            }
        }
    }

    class b extends a0 {
        b() {
        }

        @Override // retrofit2.a0
        void a(h0 h0Var, Object obj) {
            if (obj == null) {
                return;
            }
            int length = Array.getLength(obj);
            for (int i11 = 0; i11 < length; i11++) {
                a0.this.a(h0Var, Array.get(obj, i11));
            }
        }
    }

    static final class c extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Method f74341a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f74342b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final retrofit2.k f74343c;

        c(Method method, int i11, retrofit2.k kVar) {
            this.f74341a = method;
            this.f74342b = i11;
            this.f74343c = kVar;
        }

        @Override // retrofit2.a0
        void a(h0 h0Var, Object obj) {
            if (obj == null) {
                throw o0.p(this.f74341a, this.f74342b, "Body parameter value must not be null.", new Object[0]);
            }
            try {
                h0Var.l((RequestBody) this.f74343c.convert(obj));
            } catch (IOException e11) {
                throw o0.q(this.f74341a, e11, this.f74342b, "Unable to convert " + obj + " to RequestBody", new Object[0]);
            }
        }
    }

    static final class d extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f74344a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final retrofit2.k f74345b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f74346c;

        d(String str, retrofit2.k kVar, boolean z10) {
            Objects.requireNonNull(str, "name == null");
            this.f74344a = str;
            this.f74345b = kVar;
            this.f74346c = z10;
        }

        @Override // retrofit2.a0
        void a(h0 h0Var, Object obj) {
            String str;
            if (obj == null || (str = (String) this.f74345b.convert(obj)) == null) {
                return;
            }
            h0Var.a(this.f74344a, str, this.f74346c);
        }
    }

    static final class e extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Method f74347a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f74348b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final retrofit2.k f74349c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f74350d;

        e(Method method, int i11, retrofit2.k kVar, boolean z10) {
            this.f74347a = method;
            this.f74348b = i11;
            this.f74349c = kVar;
            this.f74350d = z10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.a0
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(h0 h0Var, Map map) {
            if (map == null) {
                throw o0.p(this.f74347a, this.f74348b, "Field map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw o0.p(this.f74347a, this.f74348b, "Field map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw o0.p(this.f74347a, this.f74348b, "Field map contained null value for key '" + str + "'.", new Object[0]);
                }
                String str2 = (String) this.f74349c.convert(value);
                if (str2 == null) {
                    throw o0.p(this.f74347a, this.f74348b, "Field map value '" + value + "' converted to null by " + this.f74349c.getClass().getName() + " for key '" + str + "'.", new Object[0]);
                }
                h0Var.a(str, str2, this.f74350d);
            }
        }
    }

    static final class f extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f74351a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final retrofit2.k f74352b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f74353c;

        f(String str, retrofit2.k kVar, boolean z10) {
            Objects.requireNonNull(str, "name == null");
            this.f74351a = str;
            this.f74352b = kVar;
            this.f74353c = z10;
        }

        @Override // retrofit2.a0
        void a(h0 h0Var, Object obj) {
            String str;
            if (obj == null || (str = (String) this.f74352b.convert(obj)) == null) {
                return;
            }
            h0Var.b(this.f74351a, str, this.f74353c);
        }
    }

    static final class g extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Method f74354a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f74355b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final retrofit2.k f74356c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f74357d;

        g(Method method, int i11, retrofit2.k kVar, boolean z10) {
            this.f74354a = method;
            this.f74355b = i11;
            this.f74356c = kVar;
            this.f74357d = z10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.a0
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(h0 h0Var, Map map) {
            if (map == null) {
                throw o0.p(this.f74354a, this.f74355b, "Header map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw o0.p(this.f74354a, this.f74355b, "Header map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw o0.p(this.f74354a, this.f74355b, "Header map contained null value for key '" + str + "'.", new Object[0]);
                }
                h0Var.b(str, (String) this.f74356c.convert(value), this.f74357d);
            }
        }
    }

    static final class h extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Method f74358a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f74359b;

        h(Method method, int i11) {
            this.f74358a = method;
            this.f74359b = i11;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.a0
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(h0 h0Var, Headers headers) {
            if (headers == null) {
                throw o0.p(this.f74358a, this.f74359b, "Headers parameter must not be null.", new Object[0]);
            }
            h0Var.c(headers);
        }
    }

    static final class i extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Method f74360a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f74361b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Headers f74362c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final retrofit2.k f74363d;

        i(Method method, int i11, Headers headers, retrofit2.k kVar) {
            this.f74360a = method;
            this.f74361b = i11;
            this.f74362c = headers;
            this.f74363d = kVar;
        }

        @Override // retrofit2.a0
        void a(h0 h0Var, Object obj) {
            if (obj == null) {
                return;
            }
            try {
                h0Var.d(this.f74362c, (RequestBody) this.f74363d.convert(obj));
            } catch (IOException e11) {
                throw o0.p(this.f74360a, this.f74361b, "Unable to convert " + obj + " to RequestBody", e11);
            }
        }
    }

    static final class j extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Method f74364a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f74365b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final retrofit2.k f74366c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f74367d;

        j(Method method, int i11, retrofit2.k kVar, String str) {
            this.f74364a = method;
            this.f74365b = i11;
            this.f74366c = kVar;
            this.f74367d = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.a0
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(h0 h0Var, Map map) {
            if (map == null) {
                throw o0.p(this.f74364a, this.f74365b, "Part map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw o0.p(this.f74364a, this.f74365b, "Part map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw o0.p(this.f74364a, this.f74365b, "Part map contained null value for key '" + str + "'.", new Object[0]);
                }
                h0Var.d(Headers.of(HttpHeaders.CONTENT_DISPOSITION, "form-data; name=\"" + str + "\"", "Content-Transfer-Encoding", this.f74367d), (RequestBody) this.f74366c.convert(value));
            }
        }
    }

    static final class k extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Method f74368a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f74369b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f74370c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final retrofit2.k f74371d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f74372e;

        k(Method method, int i11, String str, retrofit2.k kVar, boolean z10) {
            this.f74368a = method;
            this.f74369b = i11;
            Objects.requireNonNull(str, "name == null");
            this.f74370c = str;
            this.f74371d = kVar;
            this.f74372e = z10;
        }

        @Override // retrofit2.a0
        void a(h0 h0Var, Object obj) {
            if (obj != null) {
                h0Var.f(this.f74370c, (String) this.f74371d.convert(obj), this.f74372e);
                return;
            }
            throw o0.p(this.f74368a, this.f74369b, "Path parameter \"" + this.f74370c + "\" value must not be null.", new Object[0]);
        }
    }

    static final class l extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f74373a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final retrofit2.k f74374b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f74375c;

        l(String str, retrofit2.k kVar, boolean z10) {
            Objects.requireNonNull(str, "name == null");
            this.f74373a = str;
            this.f74374b = kVar;
            this.f74375c = z10;
        }

        @Override // retrofit2.a0
        void a(h0 h0Var, Object obj) {
            String str;
            if (obj == null || (str = (String) this.f74374b.convert(obj)) == null) {
                return;
            }
            h0Var.g(this.f74373a, str, this.f74375c);
        }
    }

    static final class m extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Method f74376a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f74377b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final retrofit2.k f74378c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f74379d;

        m(Method method, int i11, retrofit2.k kVar, boolean z10) {
            this.f74376a = method;
            this.f74377b = i11;
            this.f74378c = kVar;
            this.f74379d = z10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.a0
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(h0 h0Var, Map map) {
            if (map == null) {
                throw o0.p(this.f74376a, this.f74377b, "Query map was null", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw o0.p(this.f74376a, this.f74377b, "Query map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw o0.p(this.f74376a, this.f74377b, "Query map contained null value for key '" + str + "'.", new Object[0]);
                }
                String str2 = (String) this.f74378c.convert(value);
                if (str2 == null) {
                    throw o0.p(this.f74376a, this.f74377b, "Query map value '" + value + "' converted to null by " + this.f74378c.getClass().getName() + " for key '" + str + "'.", new Object[0]);
                }
                h0Var.g(str, str2, this.f74379d);
            }
        }
    }

    static final class n extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final retrofit2.k f74380a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f74381b;

        n(retrofit2.k kVar, boolean z10) {
            this.f74380a = kVar;
            this.f74381b = z10;
        }

        @Override // retrofit2.a0
        void a(h0 h0Var, Object obj) {
            if (obj == null) {
                return;
            }
            h0Var.g((String) this.f74380a.convert(obj), null, this.f74381b);
        }
    }

    static final class o extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final o f74382a = new o();

        private o() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.a0
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(h0 h0Var, MultipartBody.Part part) {
            if (part != null) {
                h0Var.e(part);
            }
        }
    }

    static final class p extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Method f74383a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f74384b;

        p(Method method, int i11) {
            this.f74383a = method;
            this.f74384b = i11;
        }

        @Override // retrofit2.a0
        void a(h0 h0Var, Object obj) {
            if (obj == null) {
                throw o0.p(this.f74383a, this.f74384b, "@Url parameter is null.", new Object[0]);
            }
            h0Var.m(obj);
        }
    }

    static final class q extends a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Class f74385a;

        q(Class cls) {
            this.f74385a = cls;
        }

        @Override // retrofit2.a0
        void a(h0 h0Var, Object obj) {
            h0Var.h(this.f74385a, obj);
        }
    }

    a0() {
    }

    abstract void a(h0 h0Var, Object obj);

    final a0 b() {
        return new b();
    }

    final a0 c() {
        return new a();
    }
}
