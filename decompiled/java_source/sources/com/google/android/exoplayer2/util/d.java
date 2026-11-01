package com.google.android.exoplayer2.util;

import android.os.Bundle;
import android.util.SparseArray;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class d {
    public static void a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) p0.j(d.class.getClassLoader()));
        }
    }

    public static ImmutableList b(com.google.android.exoplayer2.k.a aVar, List list) {
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (int i11 = 0; i11 < list.size(); i11++) {
            aVarBuilder.a(aVar.a((Bundle) a.e((Bundle) list.get(i11))));
        }
        return aVarBuilder.e();
    }

    public static SparseArray c(com.google.android.exoplayer2.k.a aVar, SparseArray sparseArray) {
        SparseArray sparseArray2 = new SparseArray(sparseArray.size());
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            sparseArray2.put(sparseArray.keyAt(i11), aVar.a((Bundle) sparseArray.valueAt(i11)));
        }
        return sparseArray2;
    }

    public static ArrayList d(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(((com.google.android.exoplayer2.k) it.next()).toBundle());
        }
        return arrayList;
    }

    public static SparseArray e(SparseArray sparseArray) {
        SparseArray sparseArray2 = new SparseArray(sparseArray.size());
        for (int i11 = 0; i11 < sparseArray.size(); i11++) {
            sparseArray2.put(sparseArray.keyAt(i11), ((com.google.android.exoplayer2.k) sparseArray.valueAt(i11)).toBundle());
        }
        return sparseArray2;
    }
}
