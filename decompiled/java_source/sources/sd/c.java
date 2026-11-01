package sd;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f75326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f75327b;

    c(List list, int i11) {
        this.f75326a = new ArrayList(list);
        this.f75327b = i11;
    }

    List a() {
        return this.f75326a;
    }

    int b() {
        return this.f75327b;
    }

    boolean c(List list) {
        return this.f75326a.equals(list);
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            return this.f75326a.equals(((c) obj).f75326a);
        }
        return false;
    }

    public int hashCode() {
        return this.f75326a.hashCode();
    }

    public String toString() {
        return "{ " + this.f75326a + " }";
    }
}
