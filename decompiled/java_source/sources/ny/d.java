package ny;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d extends a {
    @Override // lj.m0
    public void a(DownloadBean bean, DownloadException downloadException) {
        Intrinsics.h(bean, "bean");
        h(bean, 6);
    }

    @Override // lj.m0
    public void b(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        if (bean.getStatus() != 7) {
            bean.setPreStatus(bean.getStatus());
        }
        h(bean, 7);
    }

    @Override // lj.m0
    public void c(DownloadBean bean, long j11, long j12) {
        Intrinsics.h(bean, "bean");
        h(bean, 2);
    }

    @Override // lj.m0
    public void d(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        h(bean, 3);
    }

    @Override // lj.m0
    public void e(DownloadBean bean, String str) {
        Intrinsics.h(bean, "bean");
        h(bean, 5);
    }

    @Override // lj.m0
    public void f(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        h(bean, 4);
    }

    @Override // lj.m0
    public void g(DownloadBean bean) {
        Intrinsics.h(bean, "bean");
        h(bean, 1);
    }

    public abstract void h(DownloadBean downloadBean, int i11);
}
