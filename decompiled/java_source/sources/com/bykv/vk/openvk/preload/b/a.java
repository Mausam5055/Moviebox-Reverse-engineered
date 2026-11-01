package com.bykv.vk.openvk.preload.b;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a<IN, OUT> extends l<IN, OUT> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.b.d
    public final Object a(b<OUT> bVar, IN in2) throws Exception {
        new m(bVar);
        String strA = a(in2);
        l.a aVar = a().get(strA);
        if (aVar == null) {
            throw new IllegalArgumentException("can not found branch, branch name is：".concat(String.valueOf(strA)));
        }
        List<h> list = aVar.f20563a;
        Object objA = c.a(list, ((i) bVar).f20556a, this).a(in2);
        return !l.a(list) ? objA : bVar.a(objA);
    }

    protected abstract String a(IN in2);
}
