package com.mbridge.msdk.foundation.same.directory;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected a f35379a;

    public b(String str) {
        a aVar = new a();
        aVar.a(str);
        aVar.a(c.AD_ROOT);
        List<a> listB = b();
        if (listB != null && listB.size() > 0) {
            aVar.a(listB);
        }
        this.f35379a = aVar;
    }

    public a a() {
        return this.f35379a;
    }

    protected a a(ArrayList<a> arrayList, c cVar, String str) {
        a aVar = new a();
        aVar.a(cVar);
        aVar.a(str);
        arrayList.add(aVar);
        return aVar;
    }

    protected abstract List<a> b();
}
