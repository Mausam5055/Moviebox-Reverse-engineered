package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.o0;

/* JADX INFO: loaded from: classes.dex */
public abstract class LazyListStateKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f2934a = o0.i.g(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final m f2935b = new m(null, 0, false, 0.0f, new a(), 0.0f, false, o0.a(EmptyCoroutineContext.INSTANCE), o0.g.b(1.0f, 0.0f, 2, null), o0.c.b(0, 0, 0, 0, 15, null), CollectionsKt.l(), 0, 0, 0, false, Orientation.Vertical, 0, 0, null);

    public static final class a implements androidx.compose.ui.layout.v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f2936a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f2937b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Map f2938c = MapsKt.h();

        a() {
        }

        @Override // androidx.compose.ui.layout.v
        public int getHeight() {
            return this.f2937b;
        }

        @Override // androidx.compose.ui.layout.v
        public int getWidth() {
            return this.f2936a;
        }

        @Override // androidx.compose.ui.layout.v
        public Map v() {
            return this.f2938c;
        }

        @Override // androidx.compose.ui.layout.v
        public void w() {
        }

        @Override // androidx.compose.ui.layout.v
        public /* synthetic */ Function1 x() {
            return androidx.compose.ui.layout.u.a(this);
        }
    }

    public static final LazyListState c(final int i11, final int i12, androidx.compose.runtime.i iVar, int i13, int i14) {
        if ((i14 & 1) != 0) {
            i11 = 0;
        }
        if ((i14 & 2) != 0) {
            i12 = 0;
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1470655220, i13, -1, "androidx.compose.foundation.lazy.rememberLazyListState (LazyListState.kt:80)");
        }
        Object[] objArr = new Object[0];
        androidx.compose.runtime.saveable.d dVarA = LazyListState.f2906y.a();
        boolean z10 = ((((i13 & 14) ^ 6) > 4 && iVar.c(i11)) || (i13 & 6) == 4) | ((((i13 & 112) ^ 48) > 32 && iVar.c(i12)) || (i13 & 48) == 32);
        Object objY = iVar.y();
        if (z10 || objY == androidx.compose.runtime.i.f3736a.a()) {
            objY = new Function0<LazyListState>() { // from class: androidx.compose.foundation.lazy.LazyListStateKt$rememberLazyListState$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final LazyListState invoke() {
                    return new LazyListState(i11, i12);
                }
            };
            iVar.p(objY);
        }
        LazyListState lazyListState = (LazyListState) RememberSaveableKt.c(objArr, dVarA, null, (Function0) objY, iVar, 0, 4);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return lazyListState;
    }
}
