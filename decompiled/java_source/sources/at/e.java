package at;

import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f16124a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Set f16125b = new LinkedHashSet();

    private e() {
    }

    public final void a(String str) {
        if (str != null) {
            f16125b.remove(str);
        }
    }

    public final void b(String str) {
        if (str != null) {
            f16125b.add(str);
        }
    }
}
