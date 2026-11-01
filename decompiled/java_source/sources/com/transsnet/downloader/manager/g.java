package com.transsnet.downloader.manager;

import com.transsion.baselib.db.download.DownloadBean;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import lj.m0;
import lj.s0;

/* JADX INFO: loaded from: classes7.dex */
public interface g {

    public static final class a {
        public static /* synthetic */ void a(g gVar, DownloadBean downloadBean, boolean z10, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resume");
            }
            if ((i11 & 2) != 0) {
                z10 = false;
            }
            gVar.t(downloadBean, z10);
        }
    }

    boolean A(DownloadBean downloadBean);

    void B();

    Object C(Continuation continuation);

    void D(List list);

    void E();

    void F(s0 s0Var);

    void G(DownloadBean downloadBean);

    void H();

    Object a(String str, int i11, String str2, Continuation continuation);

    void d();

    void e(m0 m0Var);

    Object f(String str, Continuation continuation);

    String h(DownloadBean downloadBean);

    boolean i();

    Object j(String str, Continuation continuation);

    void k(DownloadBean downloadBean);

    void l(DownloadBean downloadBean, Function1 function1);

    void m();

    void n(ny.b bVar);

    void o();

    void p(DownloadBean downloadBean);

    void q();

    void r(oy.c cVar);

    void s(String str, Function1 function1);

    void t(DownloadBean downloadBean, boolean z10);

    Object u(String str, int i11, int i12, Continuation continuation);

    void v(DownloadBean downloadBean);

    void w();

    void x(m0 m0Var);

    Long y();

    void z(List list, Function1 function1);
}
