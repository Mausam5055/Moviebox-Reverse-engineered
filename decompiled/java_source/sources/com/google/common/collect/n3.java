package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class n3 {
    static Object a(Object obj, int i11) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("at index " + i11);
    }

    static Object[] b(Object... objArr) {
        c(objArr, objArr.length);
        return objArr;
    }

    static Object[] c(Object[] objArr, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            a(objArr[i12], i12);
        }
        return objArr;
    }

    private static Object[] d(Iterable iterable, Object[] objArr) {
        Iterator it = iterable.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            objArr[i11] = it.next();
            i11++;
        }
        return objArr;
    }

    public static Object[] e(Object[] objArr, int i11) {
        return r3.c(objArr, i11);
    }

    static Object[] f(Collection collection) {
        return d(collection, new Object[collection.size()]);
    }

    static Object[] g(Collection collection, Object[] objArr) {
        int size = collection.size();
        if (objArr.length < size) {
            objArr = e(objArr, size);
        }
        d(collection, objArr);
        if (objArr.length > size) {
            objArr[size] = null;
        }
        return objArr;
    }

    static Object[] h(Object[] objArr, int i11, int i12, Object[] objArr2) {
        com.google.common.base.m.t(i11, i11 + i12, objArr.length);
        if (objArr2.length < i12) {
            objArr2 = e(objArr2, i12);
        } else if (objArr2.length > i12) {
            objArr2[i12] = null;
        }
        System.arraycopy(objArr, i11, objArr2, 0, i12);
        return objArr2;
    }
}
