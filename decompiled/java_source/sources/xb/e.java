package xb;

import java.util.Stack;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78185a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78186b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StackTraceElement[] f78187c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f78188d;

    private e(String str, String str2, StackTraceElement[] stackTraceElementArr, e eVar) {
        this.f78185a = str;
        this.f78186b = str2;
        this.f78187c = stackTraceElementArr;
        this.f78188d = eVar;
    }

    public static e a(Throwable th2, d dVar) {
        Stack stack = new Stack();
        while (th2 != null) {
            stack.push(th2);
            th2 = th2.getCause();
        }
        e eVar = null;
        while (!stack.isEmpty()) {
            Throwable th3 = (Throwable) stack.pop();
            eVar = new e(th3.getLocalizedMessage(), th3.getClass().getName(), dVar.a(th3.getStackTrace()), eVar);
        }
        return eVar;
    }
}
