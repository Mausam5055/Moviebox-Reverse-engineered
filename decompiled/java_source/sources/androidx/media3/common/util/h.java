package androidx.media3.common.util;

import android.os.Bundle;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h {
    public static ImmutableList a(com.google.common.base.f fVar, List list) {
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (int i11 = 0; i11 < list.size(); i11++) {
            aVarBuilder.a(fVar.apply((Bundle) a.e((Bundle) list.get(i11))));
        }
        return aVarBuilder.e();
    }

    public static ArrayList b(Collection collection, com.google.common.base.f fVar) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add((Bundle) fVar.apply(it.next()));
        }
        return arrayList;
    }
}
