package bc;

import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f16328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f16329b;

    /* JADX INFO: renamed from: bc.b$b, reason: collision with other inner class name */
    public static final class C0144b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f16330a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Map f16331b = null;

        C0144b(String str) {
            this.f16330a = str;
        }

        public b a() {
            return new b(this.f16330a, this.f16331b == null ? Collections.emptyMap() : Collections.unmodifiableMap(new HashMap(this.f16331b)));
        }

        public C0144b b(Annotation annotation) {
            if (this.f16331b == null) {
                this.f16331b = new HashMap();
            }
            this.f16331b.put(annotation.annotationType(), annotation);
            return this;
        }
    }

    private b(String str, Map map) {
        this.f16328a = str;
        this.f16329b = map;
    }

    public static C0144b a(String str) {
        return new C0144b(str);
    }

    public static b d(String str) {
        return new b(str, Collections.emptyMap());
    }

    public String b() {
        return this.f16328a;
    }

    public Annotation c(Class cls) {
        return (Annotation) this.f16329b.get(cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f16328a.equals(bVar.f16328a) && this.f16329b.equals(bVar.f16329b);
    }

    public int hashCode() {
        return (this.f16328a.hashCode() * 31) + this.f16329b.hashCode();
    }

    public String toString() {
        return "FieldDescriptor{name=" + this.f16328a + ", properties=" + this.f16329b.values() + "}";
    }
}
