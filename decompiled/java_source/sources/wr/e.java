package wr;

import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f77941a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Set f77942b = new LinkedHashSet();

    private e() {
    }

    public final void a(String str) {
        if (str != null) {
            f77942b.remove(str);
        }
    }

    public final void b(String str) {
        if (str != null) {
            f77942b.add(str);
        }
    }
}
