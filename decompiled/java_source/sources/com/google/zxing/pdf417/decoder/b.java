package com.google.zxing.pdf417.decoder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f32957a = new HashMap();

    b() {
    }

    int[] a() {
        ArrayList arrayList = new ArrayList();
        int iIntValue = -1;
        for (Map.Entry entry : this.f32957a.entrySet()) {
            if (((Integer) entry.getValue()).intValue() > iIntValue) {
                iIntValue = ((Integer) entry.getValue()).intValue();
                arrayList.clear();
                arrayList.add((Integer) entry.getKey());
            } else if (((Integer) entry.getValue()).intValue() == iIntValue) {
                arrayList.add((Integer) entry.getKey());
            }
        }
        return td.a.b(arrayList);
    }

    void b(int i11) {
        Integer num = (Integer) this.f32957a.get(Integer.valueOf(i11));
        if (num == null) {
            num = 0;
        }
        this.f32957a.put(Integer.valueOf(i11), Integer.valueOf(num.intValue() + 1));
    }
}
