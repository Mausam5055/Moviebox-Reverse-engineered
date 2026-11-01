package v8;

import com.google.android.datatransport.runtime.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a f77078e = new C0946a().b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f77079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f77080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f77081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f77082d;

    /* JADX INFO: renamed from: v8.a$a, reason: collision with other inner class name */
    public static final class C0946a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private e f77083a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List f77084b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private b f77085c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f77086d = "";

        C0946a() {
        }

        public C0946a a(c cVar) {
            this.f77084b.add(cVar);
            return this;
        }

        public a b() {
            return new a(this.f77083a, Collections.unmodifiableList(this.f77084b), this.f77085c, this.f77086d);
        }

        public C0946a c(String str) {
            this.f77086d = str;
            return this;
        }

        public C0946a d(b bVar) {
            this.f77085c = bVar;
            return this;
        }

        public C0946a e(e eVar) {
            this.f77083a = eVar;
            return this;
        }
    }

    a(e eVar, List list, b bVar, String str) {
        this.f77079a = eVar;
        this.f77080b = list;
        this.f77081c = bVar;
        this.f77082d = str;
    }

    public static C0946a e() {
        return new C0946a();
    }

    public String a() {
        return this.f77082d;
    }

    public b b() {
        return this.f77081c;
    }

    public List c() {
        return this.f77080b;
    }

    public e d() {
        return this.f77079a;
    }

    public byte[] f() {
        return m.a(this);
    }
}
