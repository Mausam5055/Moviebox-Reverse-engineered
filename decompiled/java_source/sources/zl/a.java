package zl;

import com.transsion.core.pool.b;
import com.transsion.http.c;
import com.transsion.http.impl.r;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f79430a = com.transsion.core.pool.a.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f79431b = Collections.synchronizedList(new LinkedList());

    public void a(wl.b bVar, r rVar) {
        c cVar = new c(bVar, rVar);
        if (bVar.c().m() != null) {
            this.f79431b.add(cVar);
        }
        this.f79430a.a(cVar);
    }
}
