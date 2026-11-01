package w9;

import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.upstream.n;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import v9.m;
import x9.i;
import x9.j;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f {
    public static n a(j jVar, String str, i iVar, int i11) {
        return new n.b().i(iVar.b(str)).h(iVar.f78106a).g(iVar.f78107b).f(g(jVar, iVar)).b(i11).a();
    }

    public static g9.d b(k kVar, int i11, j jVar) {
        return c(kVar, i11, jVar, 0);
    }

    public static g9.d c(k kVar, int i11, j jVar, int i12) {
        if (jVar.m() == null) {
            return null;
        }
        v9.g gVarF = f(i11, jVar.f78111b);
        try {
            e(gVarF, kVar, jVar, i12, true);
            return gVarF.b();
        } finally {
            gVarF.release();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void d(k kVar, j jVar, int i11, v9.g gVar, i iVar) {
        new m(kVar, a(jVar, ((x9.b) jVar.f78112c.get(i11)).f78057a, iVar, 0), jVar.f78111b, 0, null, gVar).load();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void e(v9.g gVar, k kVar, j jVar, int i11, boolean z10) {
        i iVar = (i) com.google.android.exoplayer2.util.a.e(jVar.m());
        if (z10) {
            i iVarL = jVar.l();
            if (iVarL == null) {
                return;
            }
            i iVarA = iVar.a(iVarL, ((x9.b) jVar.f78112c.get(i11)).f78057a);
            if (iVarA == null) {
                d(kVar, jVar, i11, gVar, iVar);
                iVar = iVarL;
            } else {
                iVar = iVarA;
            }
        }
        d(kVar, jVar, i11, gVar, iVar);
    }

    private static v9.g f(int i11, o1 o1Var) {
        String str = o1Var.f25495k;
        return new v9.e((str == null || !(str.startsWith(MimeTypes.VIDEO_WEBM) || str.startsWith(MimeTypes.AUDIO_WEBM))) ? new o9.g() : new m9.e(), i11, o1Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String g(j jVar, i iVar) {
        String strJ = jVar.j();
        return strJ != null ? strJ : iVar.b(((x9.b) jVar.f78112c.get(0)).f78057a).toString();
    }
}
