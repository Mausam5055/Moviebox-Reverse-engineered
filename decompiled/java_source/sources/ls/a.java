package ls;

import qs.c;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f69034a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f69035b;

    private a() {
    }

    private final c a() {
        c cVarK = f69035b;
        if (cVarK == null) {
            rs.a aVarC = lr.c.f69031a.c();
            cVarK = aVarC != null ? aVarC.k() : null;
            f69035b = cVarK;
        }
        return cVarK;
    }

    public final String b() {
        return d() ? "/ugc_shorts/detail" : "/shorts/detail";
    }

    public final String c() {
        return d() ? "/ugc_shorts/favorite" : "/shorts/favorite";
    }

    public final boolean d() {
        c cVarA = a();
        if (cVarA != null) {
            return cVarA.a();
        }
        return false;
    }
}
