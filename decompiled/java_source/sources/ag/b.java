package ag;

import com.therouter.router.NavigatorKt;
import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements bg.a {
    @Override // bg.a
    public Object a(String str, Object obj, com.therouter.router.b bVar) {
        SoftReference softReference;
        if (bVar == null || bVar.a() != 0 || !NavigatorKt.j().keySet().contains(bVar.b()) || (softReference = (SoftReference) NavigatorKt.j().remove(bVar.b())) == null) {
            return null;
        }
        return softReference.get();
    }
}
