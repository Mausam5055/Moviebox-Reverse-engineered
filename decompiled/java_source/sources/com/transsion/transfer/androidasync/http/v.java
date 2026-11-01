package com.transsion.transfer.androidasync.http;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class v extends a0 {

    class a implements bv.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ bv.a f55520a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.transsion.transfer.androidasync.n f55521b;

        a(bv.a aVar, com.transsion.transfer.androidasync.n nVar) {
            this.f55520a = aVar;
            this.f55521b = nVar;
        }

        @Override // bv.a
        public void g(Exception exc) {
            com.transsion.transfer.androidasync.a0.b(this.f55520a, exc);
            com.transsion.transfer.androidasync.n nVar = this.f55521b;
            if (nVar != null) {
                nVar.g(false);
                this.f55521b.q(0);
            }
        }
    }

    class b implements com.transsion.transfer.androidasync.v.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Headers f55523a = new Headers();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f55524b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ g.c f55525c;

        b(g.c cVar) {
            this.f55525c = cVar;
        }

        @Override // com.transsion.transfer.androidasync.v.a
        public void a(String str) {
            try {
                String strTrim = str.trim();
                if (this.f55524b == null) {
                    this.f55524b = strTrim;
                    return;
                }
                if (!TextUtils.isEmpty(strTrim)) {
                    this.f55523a.b(strTrim);
                    return;
                }
                String[] strArrSplit = this.f55524b.split(" ", 3);
                if (strArrSplit.length < 2) {
                    throw new Exception(new IOException("Not HTTP"));
                }
                this.f55525c.f55357g.y(this.f55523a);
                String str2 = strArrSplit[0];
                this.f55525c.f55357g.k(str2);
                this.f55525c.f55357g.c(Integer.parseInt(strArrSplit[1]));
                this.f55525c.f55357g.u(strArrSplit.length == 3 ? strArrSplit[2] : "");
                this.f55525c.f55359i.g(null);
                com.transsion.transfer.androidasync.j jVarSocket = this.f55525c.f55357g.socket();
                if (jVarSocket == null) {
                    return;
                }
                com.transsion.transfer.androidasync.p pVarC = (this.f55525c.f55361b.q() && !v.i(this.f55525c.f55357g.b())) ? HttpUtil.c(jVarSocket, Protocol.get(str2), this.f55523a, false) : HttpUtil.EndEmitter.P(jVarSocket.a(), null);
                this.f55525c.f55357g.m(pVarC);
            } catch (Exception e11) {
                this.f55525c.f55359i.g(e11);
            }
        }
    }

    static boolean i(int i11) {
        return (i11 >= 100 && i11 <= 199) || i11 == 204 || i11 == 304;
    }

    @Override // com.transsion.transfer.androidasync.http.a0, com.transsion.transfer.androidasync.http.g
    public void c(g.f fVar) {
        Protocol protocol = Protocol.get(fVar.f55354e);
        if ((protocol == null || protocol == Protocol.HTTP_1_0 || protocol == Protocol.HTTP_1_1) && (fVar.f55357g.H() instanceof ev.a)) {
            fVar.f55357g.H().d();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.transsion.transfer.androidasync.http.a0, com.transsion.transfer.androidasync.http.g
    public boolean f(g.c cVar) {
        com.transsion.transfer.androidasync.n nVar;
        com.transsion.transfer.androidasync.s sVar;
        Protocol protocol = Protocol.get(cVar.f55354e);
        if (protocol != null && protocol != Protocol.HTTP_1_0 && protocol != Protocol.HTTP_1_1) {
            return super.f(cVar);
        }
        j jVar = cVar.f55361b;
        cv.a aVarE = jVar.e();
        if (aVarE != null) {
            if (aVarE.length() >= 0) {
                jVar.h().f(HttpHeaders.CONTENT_LENGTH, String.valueOf(aVarE.length()));
                cVar.f55357g.f(cVar.f55356f);
            } else if ("close".equals(jVar.h().c("Connection"))) {
                cVar.f55357g.f(cVar.f55356f);
            } else {
                jVar.h().f("Transfer-Encoding", "Chunked");
                cVar.f55357g.f(new ev.a(cVar.f55356f));
            }
        }
        String strG = jVar.h().g(jVar.n().toString());
        byte[] bytes = strG.getBytes();
        if (aVarE == null || aVarE.length() < 0 || aVarE.length() + bytes.length >= 1024) {
            nVar = null;
            sVar = cVar.f55356f;
        } else {
            com.transsion.transfer.androidasync.n nVar2 = new com.transsion.transfer.androidasync.n(cVar.f55357g.H());
            nVar2.g(true);
            cVar.f55357g.f(nVar2);
            nVar = nVar2;
            sVar = nVar2;
        }
        jVar.u("\n" + strG);
        com.transsion.transfer.androidasync.a0.h(sVar, bytes, new a(cVar.f55358h, nVar));
        b bVar = new b(cVar);
        com.transsion.transfer.androidasync.v vVar = new com.transsion.transfer.androidasync.v();
        cVar.f55356f.t(vVar);
        vVar.a(bVar);
        return true;
    }
}
