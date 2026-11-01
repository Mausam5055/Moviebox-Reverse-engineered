package com.transsion.json.b;

import com.transsion.json.u;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class b extends a {
    @Override // com.transsion.json.b.n
    public void a(Object obj) {
        u uVarG = b().G();
        int length = Array.getLength(obj);
        for (int i11 = 0; i11 < length; i11++) {
            if (uVarG.e()) {
                b().E();
            }
            uVarG.d();
            b().j(Array.get(obj, i11));
        }
        b().C();
    }
}
