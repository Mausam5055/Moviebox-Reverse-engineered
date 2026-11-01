package com.transsion.transfer.androidasync.util;

import java.util.Hashtable;

/* JADX INFO: loaded from: classes6.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Hashtable f55568a = new Hashtable();

    public Object a(String str) {
        return this.f55568a.get(str);
    }

    public void b(String str, Object obj) {
        this.f55568a.put(str, obj);
    }
}
