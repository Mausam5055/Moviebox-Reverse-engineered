package ul;

import android.os.Handler;
import android.os.Looper;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.a0;
import androidx.compose.foundation.layout.b0;
import androidx.compose.foundation.layout.d0;
import androidx.compose.foundation.layout.e0;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.f3;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import com.google.accompanist.systemuicontroller.SystemUiControllerKt;
import com.tn.lib.widget.R$color;
import com.transsion.home.bean.FilterVal;
import com.transsion.home.bean.Item;
import com.transsion.videodetail.R$drawable;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o0.x;

/* JADX INFO: loaded from: classes6.dex */
public abstract class w {

    static final class a implements Function2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f76815a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Item f76816b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Function1 f76817c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f76818d;

        /* JADX INFO: renamed from: ul.w$a$a, reason: collision with other inner class name */
        static final class C0937a implements Function3 {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ FilterVal f76819a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ androidx.compose.foundation.layout.k f76820b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Function1 f76821c;

            C0937a(FilterVal filterVal, androidx.compose.foundation.layout.k kVar, Function1 function1) {
                this.f76819a = filterVal;
                this.f76820b = kVar;
                this.f76821c = function1;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final Unit c(Function1 function1, FilterVal filterVal) {
                function1.invoke(filterVal.getId());
                return Unit.f67061a;
            }

            public final void b(androidx.compose.foundation.lazy.b item, androidx.compose.runtime.i iVar, int i11) {
                Intrinsics.h(item, "$this$item");
                if ((i11 & 17) == 16 && iVar.h()) {
                    iVar.G();
                    return;
                }
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(860266798, i11, -1, "com.transsion.home.view.filter.popup.SingleSelectFilter.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (SingleFilterPopupWindow.kt:114)");
                }
                String name = this.f76819a.getName();
                androidx.compose.ui.text.font.s sVarB = androidx.compose.ui.text.font.h.f6124b.b();
                androidx.compose.ui.text.font.p pVarB = androidx.compose.ui.text.font.p.f6149b.b();
                int iB = androidx.compose.ui.text.style.p.f6442a.b();
                long jC = x.c(16);
                long jF = u1.f4658b.f();
                androidx.compose.foundation.layout.k kVar = this.f76820b;
                androidx.compose.ui.f.a aVar = androidx.compose.ui.f.f4178a;
                androidx.compose.ui.f fVarB = kVar.b(PaddingKt.g(SizeKt.d(aVar, 0.0f, 1, null), o0.i.g(16), 0.0f, 2, null), androidx.compose.ui.b.f4087a.f());
                iVar.P(-1633490746);
                boolean zO = iVar.O(this.f76821c) | iVar.O(this.f76819a);
                final Function1 function1 = this.f76821c;
                final FilterVal filterVal = this.f76819a;
                Object objY = iVar.y();
                if (zO || objY == androidx.compose.runtime.i.f3736a.a()) {
                    objY = new Function0() { // from class: ul.v
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return w.a.C0937a.c(function1, filterVal);
                        }
                    };
                    iVar.p(objY);
                }
                iVar.K();
                TextKt.a(name, ClickableKt.d(fVarB, false, null, null, (Function0) objY, 7, null), jF, jC, null, pVarB, sVarB, 0L, null, null, 0L, iB, false, 0, 0, null, null, iVar, 200064, 48, 128912);
                e0.a(SizeKt.e(aVar, o0.i.g(37)), iVar, 6);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                b((androidx.compose.foundation.lazy.b) obj, (androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                return Unit.f67061a;
            }
        }

        a(long j11, Item item, Function1 function1, String str) {
            this.f76815a = j11;
            this.f76816b = item;
            this.f76817c = function1;
            this.f76818d = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit d(Function1 function1) {
            function1.invoke(null);
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit e(Item item, androidx.compose.foundation.layout.k kVar, Function1 function1, androidx.compose.foundation.lazy.u LazyColumn) {
            Intrinsics.h(LazyColumn, "$this$LazyColumn");
            for (FilterVal filterVal : item.getFilterValsV2()) {
                androidx.compose.foundation.lazy.t.a(LazyColumn, filterVal.getId(), null, androidx.compose.runtime.internal.b.b(860266798, true, new C0937a(filterVal, kVar, function1)), 2, null);
            }
            return Unit.f67061a;
        }

        public final void c(androidx.compose.runtime.i iVar, int i11) {
            if ((i11 & 3) == 2 && iVar.h()) {
                iVar.G();
                return;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-800641360, i11, -1, "com.transsion.home.view.filter.popup.SingleSelectFilter.<anonymous> (SingleFilterPopupWindow.kt:65)");
            }
            androidx.compose.ui.f.a aVar = androidx.compose.ui.f.f4178a;
            androidx.compose.ui.f fVarB = SizeKt.b(BackgroundKt.b(aVar, this.f76815a, null, 2, null), 0.0f, 1, null);
            final Item item = this.f76816b;
            final Function1 function1 = this.f76817c;
            String str = this.f76818d;
            androidx.compose.ui.b.a aVar2 = androidx.compose.ui.b.f4087a;
            androidx.compose.ui.layout.t tVarH = BoxKt.h(aVar2.m(), false);
            int iA = androidx.compose.runtime.g.a(iVar, 0);
            androidx.compose.runtime.s sVarN = iVar.n();
            androidx.compose.ui.f fVarE = ComposedModifierKt.e(iVar, fVarB);
            ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
            Function0 function0A = companion.a();
            if (!(iVar.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVar.C();
            if (iVar.e()) {
                iVar.F(function0A);
            } else {
                iVar.o();
            }
            androidx.compose.runtime.i iVarA = f3.a(iVar);
            f3.b(iVarA, tVarH, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            f3.b(iVarA, fVarE, companion.d());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f2744a;
            androidx.compose.foundation.layout.b bVar = androidx.compose.foundation.layout.b.f2836a;
            androidx.compose.ui.layout.t tVarA = androidx.compose.foundation.layout.i.a(bVar.d(), aVar2.i(), iVar, 0);
            int iA2 = androidx.compose.runtime.g.a(iVar, 0);
            androidx.compose.runtime.s sVarN2 = iVar.n();
            androidx.compose.ui.f fVarE2 = ComposedModifierKt.e(iVar, aVar);
            Function0 function0A2 = companion.a();
            if (!(iVar.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVar.C();
            if (iVar.e()) {
                iVar.F(function0A2);
            } else {
                iVar.o();
            }
            androidx.compose.runtime.i iVarA2 = f3.a(iVar);
            f3.b(iVarA2, tVarA, companion.c());
            f3.b(iVarA2, sVarN2, companion.e());
            Function2 function2B2 = companion.b();
            if (iVarA2.e() || !Intrinsics.c(iVarA2.y(), Integer.valueOf(iA2))) {
                iVarA2.p(Integer.valueOf(iA2));
                iVarA2.k(Integer.valueOf(iA2), function2B2);
            }
            f3.b(iVarA2, fVarE2, companion.d());
            final androidx.compose.foundation.layout.l lVar = androidx.compose.foundation.layout.l.f2860a;
            float f11 = 12;
            androidx.compose.ui.f fVarF = PaddingKt.f(aVar, o0.i.g(16), o0.i.g(f11));
            androidx.compose.ui.layout.t tVarB = a0.b(bVar.c(), aVar2.j(), iVar, 0);
            int iA3 = androidx.compose.runtime.g.a(iVar, 0);
            androidx.compose.runtime.s sVarN3 = iVar.n();
            androidx.compose.ui.f fVarE3 = ComposedModifierKt.e(iVar, fVarF);
            Function0 function0A3 = companion.a();
            if (!(iVar.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVar.C();
            if (iVar.e()) {
                iVar.F(function0A3);
            } else {
                iVar.o();
            }
            androidx.compose.runtime.i iVarA3 = f3.a(iVar);
            f3.b(iVarA3, tVarB, companion.c());
            f3.b(iVarA3, sVarN3, companion.e());
            Function2 function2B3 = companion.b();
            if (iVarA3.e() || !Intrinsics.c(iVarA3.y(), Integer.valueOf(iA3))) {
                iVarA3.p(Integer.valueOf(iA3));
                iVarA3.k(Integer.valueOf(iA3), function2B3);
            }
            f3.b(iVarA3, fVarE3, companion.d());
            d0 d0Var = d0.f2849a;
            androidx.compose.ui.text.font.s sVarB = androidx.compose.ui.text.font.h.f6124b.b();
            androidx.compose.ui.text.font.p pVarE = androidx.compose.ui.text.font.p.f6149b.e();
            int iB = androidx.compose.ui.text.style.p.f6442a.b();
            TextKt.a(str, b0.a(d0Var, SizeKt.l(aVar, o0.i.g(0)), 1.0f, false, 2, null), u1.f4658b.f(), x.c(18), null, pVarE, sVarB, 0L, null, null, 0L, iB, false, 0, 0, null, null, iVar, 200064, 48, 128912);
            e0.a(SizeKt.l(aVar, o0.i.g(f11)), iVar, 6);
            Painter painterC = i0.e.c(R$drawable.music_iv_close, iVar, 0);
            long jA = i0.b.a(R$color.white, iVar, 0);
            float f12 = 21;
            androidx.compose.ui.f fVarE4 = SizeKt.e(SizeKt.l(aVar, o0.i.g(f12)), o0.i.g(f12));
            iVar.P(5004770);
            boolean zO = iVar.O(function1);
            Object objY = iVar.y();
            if (zO || objY == androidx.compose.runtime.i.f3736a.a()) {
                objY = new Function0() { // from class: ul.t
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return w.a.d(function1);
                    }
                };
                iVar.p(objY);
            }
            iVar.K();
            IconKt.a(painterC, MRAIDPresenter.OPEN, ClickableKt.d(fVarE4, false, null, null, (Function0) objY, 7, null), jA, iVar, 48, 0);
            iVar.r();
            DividerKt.a(null, o0.i.g(1), i0.b.a(R$color.white_10, iVar, 0), iVar, 48, 1);
            e0.a(SizeKt.e(aVar, o0.i.g(23)), iVar, 6);
            androidx.compose.ui.f fVarD = SizeKt.d(androidx.compose.foundation.layout.j.a(lVar, aVar, 1.0f, false, 2, null), 0.0f, 1, null);
            iVar.P(-1746271574);
            boolean zA = iVar.A(item) | iVar.O(function1);
            Object objY2 = iVar.y();
            if (zA || objY2 == androidx.compose.runtime.i.f3736a.a()) {
                objY2 = new Function1() { // from class: ul.u
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return w.a.e(item, lVar, function1, (androidx.compose.foundation.lazy.u) obj);
                    }
                };
                iVar.p(objY2);
            }
            iVar.K();
            LazyDslKt.a(fVarD, null, null, false, null, null, null, false, (Function1) objY2, iVar, 0, 254);
            e0.a(SizeKt.e(aVar, o0.i.g(40)), iVar, 6);
            iVar.r();
            iVar.r();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            c((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
            return Unit.f67061a;
        }
    }

    public static final void e(final Item filterItem, final String title, final Function1 dismiss, androidx.compose.runtime.i iVar, final int i11) {
        int i12;
        androidx.compose.runtime.i iVar2;
        Intrinsics.h(filterItem, "filterItem");
        Intrinsics.h(title, "title");
        Intrinsics.h(dismiss, "dismiss");
        androidx.compose.runtime.i iVarG = iVar.g(666133991);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.A(filterItem) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 48) == 0) {
            i12 |= iVarG.O(title) ? 32 : 16;
        }
        if ((i11 & 384) == 0) {
            i12 |= iVarG.A(dismiss) ? 256 : 128;
        }
        if ((i12 & 147) == 146 && iVarG.h()) {
            iVarG.G();
            iVar2 = iVarG;
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(666133991, i12, -1, "com.transsion.home.view.filter.popup.SingleSelectFilter (SingleFilterPopupWindow.kt:44)");
            }
            final com.google.accompanist.systemuicontroller.c cVarE = SystemUiControllerKt.e(null, iVarG, 0, 1);
            final long jA = i0.b.a(R$color.black_80, iVarG, 0);
            Handler handler = new Handler(Looper.getMainLooper());
            iVarG.P(-1633490746);
            boolean zO = iVarG.O(cVarE) | iVarG.d(jA);
            Object objY = iVarG.y();
            if (zO || objY == androidx.compose.runtime.i.f3736a.a()) {
                objY = new Runnable() { // from class: ul.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.f(cVarE, jA);
                    }
                };
                iVarG.p(objY);
            }
            iVarG.K();
            handler.postDelayed((Runnable) objY, 100L);
            iVarG.P(-1633490746);
            boolean zO2 = iVarG.O(cVarE) | ((i12 & 896) == 256);
            Object objY2 = iVarG.y();
            if (zO2 || objY2 == androidx.compose.runtime.i.f3736a.a()) {
                objY2 = new Function1() { // from class: ul.q
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return w.g(cVarE, dismiss, (String) obj);
                    }
                };
                iVarG.p(objY2);
            }
            final Function1 function1 = (Function1) objY2;
            iVarG.K();
            iVarG.P(5004770);
            boolean zO3 = iVarG.O(function1);
            Object objY3 = iVarG.y();
            if (zO3 || objY3 == androidx.compose.runtime.i.f3736a.a()) {
                objY3 = new Function0() { // from class: ul.r
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return w.h(function1);
                    }
                };
                iVarG.p(objY3);
            }
            iVarG.K();
            iVar2 = iVarG;
            AndroidDialog_androidKt.a((Function0) objY3, new androidx.compose.ui.window.c(false, false, false, 3, (DefaultConstructorMarker) null), androidx.compose.runtime.internal.b.d(-800641360, true, new a(jA, filterItem, function1, title), iVarG, 54), iVarG, 432, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVar2.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2() { // from class: ul.s
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return w.i(filterItem, title, dismiss, i11, (androidx.compose.runtime.i) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(com.google.accompanist.systemuicontroller.c cVar, long j11) {
        com.google.accompanist.systemuicontroller.b.b(cVar, j11, false, false, null, 14, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(com.google.accompanist.systemuicontroller.c cVar, Function1 function1, String str) {
        com.google.accompanist.systemuicontroller.b.b(cVar, u1.f4658b.d(), false, false, null, 14, null);
        function1.invoke(str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(Function1 function1) {
        function1.invoke(null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(Item item, String str, Function1 function1, int i11, androidx.compose.runtime.i iVar, int i12) {
        e(item, str, function1, iVar, v1.a(i11 | 1));
        return Unit.f67061a;
    }
}
