package ck;

import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f17240a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Set f17241b = new LinkedHashSet();

    private g() {
    }

    public final void a(String str) {
        if (str != null) {
            f17241b.remove(str);
        }
    }

    public final void b(String str) {
        if (str != null) {
            f17241b.add(str);
        }
    }
}
