package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes7.dex */
public final class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap f74458a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Call.Factory f74459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final HttpUrl f74460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final List f74461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f74462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final List f74463f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final int f74464g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Executor f74465h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final boolean f74466i;

    class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object[] f74467a = new Object[0];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Class f74468b;

        a(Class cls) {
            this.f74468b = cls;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this, objArr);
            }
            if (objArr == null) {
                objArr = this.f74467a;
            }
            d0 d0Var = b0.f74393b;
            return d0Var.c(method) ? d0Var.b(method, this.f74468b, obj, objArr) : k0.this.c(this.f74468b, method).a(obj, objArr);
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Call.Factory f74470a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private HttpUrl f74471b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f74472c = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List f74473d = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Executor f74474e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f74475f;

        public b a(e.a aVar) {
            List list = this.f74473d;
            Objects.requireNonNull(aVar, "factory == null");
            list.add(aVar);
            return this;
        }

        public b b(k.a aVar) {
            List list = this.f74472c;
            Objects.requireNonNull(aVar, "factory == null");
            list.add(aVar);
            return this;
        }

        public b c(String str) {
            Objects.requireNonNull(str, "baseUrl == null");
            return d(HttpUrl.get(str));
        }

        public b d(HttpUrl httpUrl) {
            Objects.requireNonNull(httpUrl, "baseUrl == null");
            List<String> listPathSegments = httpUrl.pathSegments();
            if ("".equals(listPathSegments.get(listPathSegments.size() - 1))) {
                this.f74471b = httpUrl;
                return this;
            }
            throw new IllegalArgumentException("baseUrl must end in /: " + httpUrl);
        }

        public k0 e() {
            if (this.f74471b == null) {
                throw new IllegalStateException("Base URL required.");
            }
            Call.Factory okHttpClient = this.f74470a;
            if (okHttpClient == null) {
                okHttpClient = new OkHttpClient();
            }
            Call.Factory factory = okHttpClient;
            Executor executor = this.f74474e;
            if (executor == null) {
                executor = b0.f74392a;
            }
            Executor executor2 = executor;
            c cVar = b0.f74394c;
            ArrayList arrayList = new ArrayList(this.f74473d);
            List listA = cVar.a(executor2);
            arrayList.addAll(listA);
            List listB = cVar.b();
            int size = listB.size();
            ArrayList arrayList2 = new ArrayList(this.f74472c.size() + 1 + size);
            arrayList2.add(new retrofit2.b());
            arrayList2.addAll(this.f74472c);
            arrayList2.addAll(listB);
            return new k0(factory, this.f74471b, Collections.unmodifiableList(arrayList2), size, Collections.unmodifiableList(arrayList), listA.size(), executor2, this.f74475f);
        }

        public b f(Call.Factory factory) {
            Objects.requireNonNull(factory, "factory == null");
            this.f74470a = factory;
            return this;
        }

        public b g(OkHttpClient okHttpClient) {
            Objects.requireNonNull(okHttpClient, "client == null");
            return f(okHttpClient);
        }
    }

    k0(Call.Factory factory, HttpUrl httpUrl, List list, int i11, List list2, int i12, Executor executor, boolean z10) {
        this.f74459b = factory;
        this.f74460c = httpUrl;
        this.f74461d = list;
        this.f74462e = i11;
        this.f74463f = list2;
        this.f74464g = i12;
        this.f74465h = executor;
        this.f74466i = z10;
    }

    private void j(Class cls) {
        if (!cls.isInterface()) {
            throw new IllegalArgumentException("API declarations must be interfaces.");
        }
        ArrayDeque arrayDeque = new ArrayDeque(1);
        arrayDeque.add(cls);
        while (!arrayDeque.isEmpty()) {
            Class cls2 = (Class) arrayDeque.removeFirst();
            if (cls2.getTypeParameters().length != 0) {
                StringBuilder sb2 = new StringBuilder("Type parameters are unsupported on ");
                sb2.append(cls2.getName());
                if (cls2 != cls) {
                    sb2.append(" which is an interface of ");
                    sb2.append(cls.getName());
                }
                throw new IllegalArgumentException(sb2.toString());
            }
            Collections.addAll(arrayDeque, cls2.getInterfaces());
        }
        if (this.f74466i) {
            d0 d0Var = b0.f74393b;
            for (Method method : cls.getDeclaredMethods()) {
                if (!d0Var.c(method) && !Modifier.isStatic(method.getModifiers()) && !method.isSynthetic()) {
                    c(cls, method);
                }
            }
        }
    }

    public e a(Type type, Annotation[] annotationArr) {
        return d(null, type, annotationArr);
    }

    public Object b(Class cls) {
        j(cls);
        return Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(cls));
    }

    l0 c(Class cls, Method method) {
        l0 l0Var;
        Object objPutIfAbsent = this.f74458a.get(method);
        if (objPutIfAbsent instanceof l0) {
            return (l0) objPutIfAbsent;
        }
        if (objPutIfAbsent == null) {
            Object obj = new Object();
            synchronized (obj) {
                try {
                    objPutIfAbsent = this.f74458a.putIfAbsent(method, obj);
                    if (objPutIfAbsent == null) {
                        l0 l0VarB = l0.b(this, cls, method);
                        this.f74458a.put(method, l0VarB);
                        return l0VarB;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        synchronized (objPutIfAbsent) {
            l0Var = (l0) this.f74458a.get(method);
        }
        return l0Var;
    }

    public e d(e.a aVar, Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "returnType == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int iIndexOf = this.f74463f.indexOf(aVar) + 1;
        int size = this.f74463f.size();
        for (int i11 = iIndexOf; i11 < size; i11++) {
            e eVarA = ((e.a) this.f74463f.get(i11)).a(type, annotationArr, this);
            if (eVarA != null) {
                return eVarA;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate call adapter for ");
        sb2.append(type);
        sb2.append(".\n");
        if (aVar != null) {
            sb2.append("  Skipped:");
            for (int i12 = 0; i12 < iIndexOf; i12++) {
                sb2.append("\n   * ");
                sb2.append(((e.a) this.f74463f.get(i12)).getClass().getName());
            }
            sb2.append('\n');
        }
        sb2.append("  Tried:");
        int size2 = this.f74463f.size();
        while (iIndexOf < size2) {
            sb2.append("\n   * ");
            sb2.append(((e.a) this.f74463f.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public k e(k.a aVar, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "parameterAnnotations == null");
        Objects.requireNonNull(annotationArr2, "methodAnnotations == null");
        int iIndexOf = this.f74461d.indexOf(aVar) + 1;
        int size = this.f74461d.size();
        for (int i11 = iIndexOf; i11 < size; i11++) {
            k kVarC = ((k.a) this.f74461d.get(i11)).c(type, annotationArr, annotationArr2, this);
            if (kVarC != null) {
                return kVarC;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate RequestBody converter for ");
        sb2.append(type);
        sb2.append(".\n");
        if (aVar != null) {
            sb2.append("  Skipped:");
            for (int i12 = 0; i12 < iIndexOf; i12++) {
                sb2.append("\n   * ");
                sb2.append(((k.a) this.f74461d.get(i12)).getClass().getName());
            }
            sb2.append('\n');
        }
        sb2.append("  Tried:");
        int size2 = this.f74461d.size();
        while (iIndexOf < size2) {
            sb2.append("\n   * ");
            sb2.append(((k.a) this.f74461d.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public k f(k.a aVar, Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int iIndexOf = this.f74461d.indexOf(aVar) + 1;
        int size = this.f74461d.size();
        for (int i11 = iIndexOf; i11 < size; i11++) {
            k kVarD = ((k.a) this.f74461d.get(i11)).d(type, annotationArr, this);
            if (kVarD != null) {
                return kVarD;
            }
        }
        StringBuilder sb2 = new StringBuilder("Could not locate ResponseBody converter for ");
        sb2.append(type);
        sb2.append(".\n");
        if (aVar != null) {
            sb2.append("  Skipped:");
            for (int i12 = 0; i12 < iIndexOf; i12++) {
                sb2.append("\n   * ");
                sb2.append(((k.a) this.f74461d.get(i12)).getClass().getName());
            }
            sb2.append('\n');
        }
        sb2.append("  Tried:");
        int size2 = this.f74461d.size();
        while (iIndexOf < size2) {
            sb2.append("\n   * ");
            sb2.append(((k.a) this.f74461d.get(iIndexOf)).getClass().getName());
            iIndexOf++;
        }
        throw new IllegalArgumentException(sb2.toString());
    }

    public k g(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return e(null, type, annotationArr, annotationArr2);
    }

    public k h(Type type, Annotation[] annotationArr) {
        return f(null, type, annotationArr);
    }

    public k i(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int size = this.f74461d.size();
        for (int i11 = 0; i11 < size; i11++) {
            k kVarE = ((k.a) this.f74461d.get(i11)).e(type, annotationArr, this);
            if (kVarE != null) {
                return kVarE;
            }
        }
        return retrofit2.b.d.f74389a;
    }
}
