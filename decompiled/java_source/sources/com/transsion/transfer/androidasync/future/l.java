package com.transsion.transfer.androidasync.future;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public class l {
    public static f c(Iterable iterable, z zVar) {
        w wVar = new w();
        e(iterable.iterator(), zVar, wVar, null);
        return wVar;
    }

    public static f d(Object[] objArr, z zVar) {
        return c(Arrays.asList(objArr), zVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(final Iterator it, final z zVar, final w wVar, Exception e11) {
        while (it.hasNext()) {
            try {
                f fVarThen = zVar.then(it.next());
                Objects.requireNonNull(wVar);
                fVarThen.j(new x() { // from class: com.transsion.transfer.androidasync.future.j
                    @Override // com.transsion.transfer.androidasync.future.x
                    public final void a(Object obj) {
                        wVar.J(obj);
                    }
                }).e(new d() { // from class: com.transsion.transfer.androidasync.future.k
                    @Override // com.transsion.transfer.androidasync.future.d
                    public final void a(Exception exc) {
                        l.e(it, zVar, wVar, exc);
                    }
                });
                return;
            } catch (Exception e12) {
                e11 = e12;
            }
        }
        if (e11 == null) {
            wVar.G(new Exception("empty list"));
        } else {
            wVar.G(e11);
        }
    }
}
