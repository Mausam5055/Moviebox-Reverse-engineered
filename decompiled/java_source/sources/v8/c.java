package v8;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c f77090c = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f77091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f77092b;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f77093a = "";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List f77094b = new ArrayList();

        a() {
        }

        public c a() {
            return new c(this.f77093a, Collections.unmodifiableList(this.f77094b));
        }

        public a b(List list) {
            this.f77094b = list;
            return this;
        }

        public a c(String str) {
            this.f77093a = str;
            return this;
        }
    }

    c(String str, List list) {
        this.f77091a = str;
        this.f77092b = list;
    }

    public static a c() {
        return new a();
    }

    public List a() {
        return this.f77092b;
    }

    public String b() {
        return this.f77091a;
    }
}
