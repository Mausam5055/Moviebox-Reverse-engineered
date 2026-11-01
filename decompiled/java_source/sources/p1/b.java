package p1;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends a {
    /* JADX WARN: Multi-variable type inference failed */
    public b() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public b(a initialExtras) {
        Intrinsics.h(initialExtras, "initialExtras");
        b().putAll(initialExtras.b());
    }

    public /* synthetic */ b(a aVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? a.C0880a.f72270b : aVar);
    }

    @Override // p1.a
    public Object a(a.b key) {
        Intrinsics.h(key, "key");
        return b().get(key);
    }

    public final void c(a.b key, Object obj) {
        Intrinsics.h(key, "key");
        b().put(key, obj);
    }
}
