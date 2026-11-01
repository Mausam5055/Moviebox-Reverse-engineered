package com.transsion.json.b;

import com.transsion.json.q;
import com.transsion.json.u;

/* JADX INFO: loaded from: classes.dex */
public class l extends a {
    @Override // com.transsion.json.b.n
    public void a(Object obj) {
        com.transsion.json.h hVarB = b();
        q qVarX = hVarB.x();
        com.transsion.json.f fVarZ = hVarB.z();
        try {
            if (fVarZ.contains(obj)) {
                u uVarA = b().A();
                if (uVarA != null) {
                    uVarA.a();
                    return;
                }
                return;
            }
            hVarB.f(new com.transsion.json.f(fVarZ));
            hVarB.z().add(obj);
            com.transsion.json.c cVarA = com.transsion.json.c.a(c(obj));
            u uVarH = hVarB.H();
            for (com.transsion.json.d dVar : cVarA != null ? cVarA.c() : null) {
                qVarX.a(dVar.e());
                if (hVarB.n(dVar) && dVar.n().booleanValue()) {
                    Object objA = dVar.a(obj);
                    if (!hVarB.z().contains(objA)) {
                        n nVarA = hVarB.a(dVar, objA);
                        if (!(nVarA instanceof g) || !((g) nVarA).a().booleanValue()) {
                            if (uVarH.e()) {
                                hVarB.E();
                            }
                            uVarH.d();
                            hVarB.u(dVar.b());
                        }
                        uVarH.b(dVar.b());
                        nVarA.a(objA);
                    }
                }
                qVarX.d();
            }
            hVarB.D();
            hVarB.f((com.transsion.json.f) hVarB.z().a());
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
        } catch (InstantiationException e12) {
            e12.printStackTrace();
        }
    }

    protected Class c(Object obj) {
        return obj.getClass();
    }
}
