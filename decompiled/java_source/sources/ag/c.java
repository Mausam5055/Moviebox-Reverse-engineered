package ag;

import com.therouter.TheRouter;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements bg.a {
    @Override // bg.a
    public Object a(String str, Object obj, com.therouter.router.b bVar) {
        if (bVar == null || bVar.a() != 0) {
            return null;
        }
        try {
            return TheRouter.d(Class.forName(bVar.c()), new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
