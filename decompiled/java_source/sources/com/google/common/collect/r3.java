package com.google.common.collect;

import java.util.Arrays;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
abstract class r3 {
    static Object[] a(Object[] objArr, int i11, int i12, Object[] objArr2) {
        return Arrays.copyOfRange(objArr, i11, i12, objArr2.getClass());
    }

    static Class b(Enum r11) {
        return r11.getDeclaringClass();
    }

    static Object[] c(Object[] objArr, int i11) {
        if (objArr.length != 0) {
            objArr = Arrays.copyOf(objArr, 0);
        }
        return Arrays.copyOf(objArr, i11);
    }

    static Map d(int i11) {
        return CompactHashMap.createWithExpectedSize(i11);
    }

    static Set e(int i11) {
        return CompactHashSet.createWithExpectedSize(i11);
    }

    static Map f(int i11) {
        return CompactLinkedHashMap.createWithExpectedSize(i11);
    }

    static Set g(int i11) {
        return CompactLinkedHashSet.createWithExpectedSize(i11);
    }

    static Map h() {
        return CompactHashMap.create();
    }

    static Map i(int i11) {
        return Maps.s(i11);
    }

    static MapMaker j(MapMaker mapMaker) {
        return mapMaker.l();
    }
}
