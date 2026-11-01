package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.layout.p0;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class o implements p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LazyLayoutItemContentFactory f3064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f3065b = new LinkedHashMap();

    public o(LazyLayoutItemContentFactory lazyLayoutItemContentFactory) {
        this.f3064a = lazyLayoutItemContentFactory;
    }

    @Override // androidx.compose.ui.layout.p0
    public void a(p0.a aVar) {
        this.f3065b.clear();
        Iterator it = aVar.iterator();
        while (it.hasNext()) {
            Object objC = this.f3064a.c(it.next());
            Integer num = (Integer) this.f3065b.get(objC);
            int iIntValue = num != null ? num.intValue() : 0;
            if (iIntValue == 7) {
                it.remove();
            } else {
                this.f3065b.put(objC, Integer.valueOf(iIntValue + 1));
            }
        }
    }

    @Override // androidx.compose.ui.layout.p0
    public boolean b(Object obj, Object obj2) {
        return Intrinsics.c(this.f3064a.c(obj), this.f3064a.c(obj2));
    }
}
