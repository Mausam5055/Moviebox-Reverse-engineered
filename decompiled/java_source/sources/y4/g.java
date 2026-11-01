package y4;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes3.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f78866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g f78867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f78868c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f78869d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Type f78870e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private transient String f78871f;

    public g(g gVar, Object obj, Object obj2) {
        this.f78867b = gVar;
        this.f78866a = obj;
        this.f78868c = obj2;
        this.f78869d = gVar == null ? 0 : gVar.f78869d + 1;
    }

    public String toString() {
        if (this.f78871f == null) {
            if (this.f78867b == null) {
                this.f78871f = "$";
            } else if (this.f78868c instanceof Integer) {
                this.f78871f = this.f78867b.toString() + "[" + this.f78868c + "]";
            } else {
                this.f78871f = this.f78867b.toString() + "." + this.f78868c;
            }
        }
        return this.f78871f;
    }
}
