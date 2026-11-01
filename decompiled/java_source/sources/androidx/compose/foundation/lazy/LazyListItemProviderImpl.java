package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.v1;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class LazyListItemProviderImpl implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LazyListState f2891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LazyListIntervalContent f2892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f2893c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.compose.foundation.lazy.layout.p f2894d;

    public LazyListItemProviderImpl(LazyListState lazyListState, LazyListIntervalContent lazyListIntervalContent, c cVar, androidx.compose.foundation.lazy.layout.p pVar) {
        this.f2891a = lazyListState;
        this.f2892b = lazyListIntervalContent;
        this.f2893c = cVar;
        this.f2894d = pVar;
    }

    @Override // androidx.compose.foundation.lazy.layout.m
    public int a(Object obj) {
        return e().a(obj);
    }

    @Override // androidx.compose.foundation.lazy.layout.m
    public Object b(int i11) {
        Object objB = e().b(i11);
        return objB == null ? this.f2892b.e(i11) : objB;
    }

    @Override // androidx.compose.foundation.lazy.layout.m
    public Object c(int i11) {
        return this.f2892b.b(i11);
    }

    @Override // androidx.compose.foundation.lazy.k
    public c d() {
        return this.f2893c;
    }

    @Override // androidx.compose.foundation.lazy.k
    public androidx.compose.foundation.lazy.layout.p e() {
        return this.f2894d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LazyListItemProviderImpl) {
            return Intrinsics.c(this.f2892b, ((LazyListItemProviderImpl) obj).f2892b);
        }
        return false;
    }

    @Override // androidx.compose.foundation.lazy.k
    public List f() {
        return this.f2892b.f();
    }

    @Override // androidx.compose.foundation.lazy.layout.m
    public void g(final int i11, final Object obj, androidx.compose.runtime.i iVar, final int i12) {
        int i13;
        androidx.compose.runtime.i iVarG = iVar.g(-462424778);
        if ((i12 & 6) == 0) {
            i13 = (iVarG.c(i11) ? 4 : 2) | i12;
        } else {
            i13 = i12;
        }
        if ((i12 & 48) == 0) {
            i13 |= iVarG.A(obj) ? 32 : 16;
        }
        if ((i12 & 384) == 0) {
            i13 |= iVarG.O(this) ? 256 : 128;
        }
        if ((i13 & 147) == 146 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-462424778, i13, -1, "androidx.compose.foundation.lazy.LazyListItemProviderImpl.Item (LazyListItemProvider.kt:75)");
            }
            LazyLayoutPinnableItemKt.a(obj, i11, this.f2891a.w(), androidx.compose.runtime.internal.b.d(-824725566, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListItemProviderImpl$Item$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i14) {
                    if ((i14 & 3) == 2 && iVar2.h()) {
                        iVar2.G();
                        return;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-824725566, i14, -1, "androidx.compose.foundation.lazy.LazyListItemProviderImpl.Item.<anonymous> (LazyListItemProvider.kt:77)");
                    }
                    LazyListIntervalContent lazyListIntervalContent = this.this$0.f2892b;
                    int i15 = i11;
                    LazyListItemProviderImpl lazyListItemProviderImpl = this.this$0;
                    androidx.compose.foundation.lazy.layout.b.a aVar = lazyListIntervalContent.c().get(i15);
                    ((i) aVar.c()).a().invoke(lazyListItemProviderImpl.d(), Integer.valueOf(i15 - aVar.b()), iVar2, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                }
            }, iVarG, 54), iVarG, ((i13 >> 3) & 14) | 3072 | ((i13 << 3) & 112));
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListItemProviderImpl$Item$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i14) {
                    this.$tmp0_rcvr.g(i11, obj, iVar2, v1.a(i12 | 1));
                }
            });
        }
    }

    @Override // androidx.compose.foundation.lazy.layout.m
    public int getItemCount() {
        return this.f2892b.d();
    }

    public int hashCode() {
        return this.f2892b.hashCode();
    }
}
