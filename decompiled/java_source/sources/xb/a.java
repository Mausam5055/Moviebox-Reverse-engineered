package xb;

/* JADX INFO: loaded from: classes5.dex */
public class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f78180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d[] f78181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f78182c;

    public a(int i11, d... dVarArr) {
        this.f78180a = i11;
        this.f78181b = dVarArr;
        this.f78182c = new b(i11);
    }

    @Override // xb.d
    public StackTraceElement[] a(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= this.f78180a) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArrA = stackTraceElementArr;
        for (d dVar : this.f78181b) {
            if (stackTraceElementArrA.length <= this.f78180a) {
                break;
            }
            stackTraceElementArrA = dVar.a(stackTraceElementArr);
        }
        return stackTraceElementArrA.length > this.f78180a ? this.f78182c.a(stackTraceElementArrA) : stackTraceElementArrA;
    }
}
