package t;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.jvm.internal.markers.KMutableList;

/* JADX INFO: loaded from: classes.dex */
public interface f extends d, b {

    public interface a extends List, Collection, KMutableCollection, KMutableList {
        f build();
    }

    @Override // t.f
    f add(int i11, Object obj);

    @Override // java.util.List, t.f
    f add(Object obj);

    @Override // java.util.List, t.f
    f addAll(Collection collection);

    a builder();

    f d(int i11);

    f k(Function1 function1);

    @Override // java.util.List, t.f
    f remove(Object obj);

    @Override // java.util.List, t.f
    f removeAll(Collection collection);

    @Override // t.f
    f set(int i11, Object obj);
}
