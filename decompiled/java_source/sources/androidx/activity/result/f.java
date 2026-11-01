package androidx.activity.result;

import f.g;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    public static final e a(g.f mediaType, int i11, boolean z10, g.b defaultTab) {
        Intrinsics.h(mediaType, "mediaType");
        Intrinsics.h(defaultTab, "defaultTab");
        return new e.a().d(mediaType).c(i11).e(z10).b(defaultTab).a();
    }

    public static /* synthetic */ e b(g.f fVar, int i11, boolean z10, g.b bVar, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            fVar = g.c.f62116a;
        }
        if ((i12 & 2) != 0) {
            i11 = f.e.f62111b.a();
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            bVar = g.b.a.f62114a;
        }
        return a(fVar, i11, z10, bVar);
    }
}
