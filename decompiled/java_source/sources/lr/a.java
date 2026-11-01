package lr;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f69020a = new a();

    private a() {
    }

    private final String a(String str, String str2) {
        qs.b bVarH;
        String strA;
        rs.a aVarC = c.f69031a.c();
        return (aVarC == null || (bVarH = aVarC.h()) == null || (strA = bVarH.a(str, str2)) == null) ? str2 : strA;
    }

    static /* synthetic */ String b(a aVar, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        return aVar.a(str, str2);
    }

    public final boolean c() {
        return !Intrinsics.c(b(this, "short_tv_optimize_enable", null, 2, null), "false");
    }
}
