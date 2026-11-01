package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.c0;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes.dex */
public final class LazyListIntervalContent extends androidx.compose.foundation.lazy.layout.j implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c0 f2889a = new c0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f2890b;

    public LazyListIntervalContent(Function1 function1) {
        function1.invoke(this);
    }

    @Override // androidx.compose.foundation.lazy.u
    public void a(final Object obj, final Object obj2, final Function3 function3) {
        c().b(1, new i(obj != null ? new Function1<Integer, Object>() { // from class: androidx.compose.foundation.lazy.LazyListIntervalContent$item$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final Object invoke(int i11) {
                return obj;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj3) {
                return invoke(((Number) obj3).intValue());
            }
        } : null, new Function1<Integer, Object>() { // from class: androidx.compose.foundation.lazy.LazyListIntervalContent$item$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final Object invoke(int i11) {
                return obj2;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj3) {
                return invoke(((Number) obj3).intValue());
            }
        }, androidx.compose.runtime.internal.b.b(-1010194746, true, new Function4<b, Integer, androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListIntervalContent$item$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(4);
            }

            @Override // kotlin.jvm.functions.Function4
            public /* bridge */ /* synthetic */ Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
                invoke((b) obj3, ((Number) obj4).intValue(), (androidx.compose.runtime.i) obj5, ((Number) obj6).intValue());
                return Unit.f67061a;
            }

            public final void invoke(b bVar, int i11, androidx.compose.runtime.i iVar, int i12) {
                if ((i12 & 6) == 0) {
                    i12 |= iVar.O(bVar) ? 4 : 2;
                }
                if ((i12 & Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE) == 130 && iVar.h()) {
                    iVar.G();
                    return;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-1010194746, i12, -1, "androidx.compose.foundation.lazy.LazyListIntervalContent.item.<anonymous> (LazyListIntervalContent.kt:58)");
                }
                function3.invoke(bVar, iVar, Integer.valueOf(i12 & 14));
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
            }
        })));
    }

    public final List f() {
        List list = this.f2890b;
        return list == null ? CollectionsKt.l() : list;
    }

    @Override // androidx.compose.foundation.lazy.layout.j
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public c0 c() {
        return this.f2889a;
    }
}
