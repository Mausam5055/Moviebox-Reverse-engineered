package vf;

import android.content.Context;
import com.tencent.tinker.entry.ApplicationLike;
import uf.d;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    public static a a(ApplicationLike applicationLike, uf.c cVar, d dVar, sf.b bVar, Class cls, tf.a aVar) {
        a aVarA = new a.b(applicationLike.getApplication()).e(applicationLike.getTinkerFlags()).c(cVar).b(bVar).d(dVar).f(Boolean.valueOf(applicationLike.getTinkerLoadVerifyFlag())).a();
        a.d(aVarA);
        aVarA.n(applicationLike.getTinkerResultIntent(), cls, aVar);
        return aVarA;
    }

    public static void b(Context context, String str) {
        a.x(context).j().a(str);
    }
}
