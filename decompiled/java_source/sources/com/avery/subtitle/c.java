package com.avery.subtitle;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {
    public static k5.b a(long j11, List list) {
        if (list != null && !list.isEmpty()) {
            int size = list.size() - 1;
            int i11 = 0;
            while (i11 <= size) {
                int i12 = (i11 + size) / 2;
                k5.b bVar = (k5.b) list.get(i12);
                int i13 = bVar.f66651b.f66654a;
                if (j11 >= i13) {
                    int i14 = bVar.f66652c.f66654a;
                    if (j11 > i14) {
                        if (j11 < i13) {
                            return bVar;
                        }
                        i11 = i12 + 1;
                    } else if (j11 >= i13 && j11 <= i14) {
                        return bVar;
                    }
                } else {
                    if (j11 > bVar.f66652c.f66654a) {
                        return bVar;
                    }
                    size = i12 - 1;
                }
            }
        }
        return null;
    }
}
