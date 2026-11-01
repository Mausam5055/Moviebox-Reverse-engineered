package com.transsion.json.b;

import com.transsion.json.q;
import com.transsion.json.u;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class i extends a {
    @Override // com.transsion.json.b.n
    public void a(Object obj) {
        com.transsion.json.h hVarB = b();
        q qVarX = hVarB.x();
        Map map = (Map) obj;
        try {
            u uVarH = b().H();
            Iterator it = map.keySet().iterator();
            while (it.hasNext()) {
                Object next = it.next();
                qVarX.a(next != null ? next.toString() : null);
                if (hVarB.o(next != null ? next.toString() : null, map.get(next))) {
                    n nVarA = hVarB.a(null, map.get(next));
                    if (!(nVarA instanceof g) || !((g) nVarA).a().booleanValue()) {
                        if (uVarH.e()) {
                            b().E();
                        }
                        uVarH.d();
                        if (next != null) {
                            b().u(next.toString());
                        } else {
                            b().u(null);
                        }
                    }
                    if (next != null) {
                        uVarH.b(next.toString());
                    } else {
                        uVarH.b(null);
                    }
                    nVarA.a(map.get(next));
                }
                qVarX.d();
            }
            b().D();
        } catch (Exception e11) {
            throw new com.transsion.json.k(String.format("%s: Error while trying to serialize.", qVarX), e11);
        }
    }
}
