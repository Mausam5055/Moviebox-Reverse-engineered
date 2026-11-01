package xy;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f78457a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f78458b = false;

    public a(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("null values in Event are not allowed.");
        }
        this.f78457a = obj;
    }

    public Object a() {
        if (this.f78458b) {
            return null;
        }
        this.f78458b = true;
        return this.f78457a;
    }
}
