package org.mvel2.util;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes7.dex */
public class t {
    public static Object[] a(Class[] clsArr, Object[] objArr, boolean z10) {
        if (!z10) {
            return objArr;
        }
        Object objNewInstance = objArr.length > 0 ? objArr[objArr.length - 1] : Array.newInstance(clsArr[clsArr.length - 1].getComponentType(), 0);
        if (clsArr.length == objArr.length && (objNewInstance == null || objNewInstance.getClass().isArray())) {
            return objArr;
        }
        int length = (objArr.length - clsArr.length) + 1;
        Object objNewInstance2 = Array.newInstance(clsArr[clsArr.length - 1].getComponentType(), length);
        for (int i11 = 0; i11 < length; i11++) {
            Array.set(objNewInstance2, i11, objArr[(clsArr.length - 1) + i11]);
        }
        Object[] objArr2 = new Object[clsArr.length];
        for (int i12 = 0; i12 < clsArr.length - 1; i12++) {
            objArr2[i12] = objArr[i12];
        }
        objArr2[clsArr.length - 1] = objNewInstance2;
        return objArr2;
    }

    public static Class b(Class[] clsArr, int i11, boolean z10) {
        if (z10 && i11 >= clsArr.length - 1) {
            return clsArr[clsArr.length - 1].getComponentType();
        }
        return clsArr[i11];
    }
}
