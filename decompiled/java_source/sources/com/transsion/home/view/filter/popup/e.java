package com.transsion.home.view.filter.popup;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.Window;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.a0;
import androidx.compose.foundation.layout.b0;
import androidx.compose.foundation.layout.d0;
import androidx.compose.foundation.layout.e0;
import androidx.compose.foundation.layout.j;
import androidx.compose.foundation.layout.l;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.u;
import androidx.compose.material.DividerKt;
import androidx.compose.material.SliderKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.f3;
import androidx.compose.runtime.g;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.i;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.k;
import androidx.compose.runtime.s;
import androidx.compose.runtime.snapshots.t;
import androidx.compose.runtime.u2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.f;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.font.p;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.blankj.utilcode.util.f0;
import com.google.accompanist.systemuicontroller.SystemUiControllerKt;
import com.tn.lib.widget.R$color;
import com.transsion.home.R$string;
import com.transsion.home.bean.FilterVal;
import com.transsion.home.bean.Item;
import com.transsion.home.bean.RangeValue;
import com.transsion.videodetail.R$drawable;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import i0.h;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import o0.x;

/* JADX INFO: loaded from: classes5.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static float f45772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static float f45773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f45774c;

    static final class a implements Function2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f45775a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ float f45776b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ float f45777c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ List f45778d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ t f45779e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Function1 f45780f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ t f45781g;

        /* JADX INFO: renamed from: com.transsion.home.view.filter.popup.e$a$a, reason: collision with other inner class name */
        static final class C0632a implements Function3 {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Item f45782a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ t f45783b;

            C0632a(Item item, t tVar) {
                this.f45782a = item;
                this.f45783b = tVar;
            }

            public final void a(androidx.compose.foundation.lazy.b item, i iVar, int i11) {
                Intrinsics.h(item, "$this$item");
                if ((i11 & 17) == 16 && iVar.h()) {
                    iVar.G();
                    return;
                }
                if (k.H()) {
                    k.Q(807301957, i11, -1, "com.transsion.home.view.filter.popup.MultiFilterPopup.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MultiFilterPopupWindow.kt:175)");
                }
                e.k(this.f45782a, this.f45783b, iVar, 0);
                if (k.H()) {
                    k.P();
                }
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                a((androidx.compose.foundation.lazy.b) obj, (i) obj2, ((Number) obj3).intValue());
                return Unit.f67061a;
            }
        }

        a(long j11, float f11, float f12, List list, t tVar, Function1 function1, t tVar2) {
            this.f45775a = j11;
            this.f45776b = f11;
            this.f45777c = f12;
            this.f45778d = list;
            this.f45779e = tVar;
            this.f45780f = function1;
            this.f45781g = tVar2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit f(t tVar, t tVar2, Function1 function1) {
            function1.invoke(Boolean.valueOf(e.D(tVar, tVar2)));
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit g(List list, t tVar) {
            e.E(list, tVar);
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit h(Function1 function1) {
            function1.invoke(Boolean.FALSE);
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit i(List list, t tVar, u LazyColumn) {
            Intrinsics.h(LazyColumn, "$this$LazyColumn");
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Item item = (Item) it.next();
                androidx.compose.foundation.lazy.t.a(LazyColumn, item.getFilterType(), null, androidx.compose.runtime.internal.b.b(807301957, true, new C0632a(item, tVar)), 2, null);
            }
            return Unit.f67061a;
        }

        public final void e(i iVar, int i11) {
            if ((i11 & 3) == 2 && iVar.h()) {
                iVar.G();
                return;
            }
            if (k.H()) {
                k.Q(-1419240635, i11, -1, "com.transsion.home.view.filter.popup.MultiFilterPopup.<anonymous> (MultiFilterPopupWindow.kt:122)");
            }
            f.a aVar = f.f4178a;
            f fVarB = SizeKt.b(BackgroundKt.b(aVar, this.f45775a, null, 2, null), 0.0f, 1, null);
            float f11 = this.f45776b;
            float f12 = this.f45777c;
            final List list = this.f45778d;
            final t tVar = this.f45779e;
            final Function1 function1 = this.f45780f;
            final t tVar2 = this.f45781g;
            androidx.compose.ui.b.a aVar2 = androidx.compose.ui.b.f4087a;
            androidx.compose.ui.layout.t tVarH = BoxKt.h(aVar2.m(), false);
            int iA = g.a(iVar, 0);
            s sVarN = iVar.n();
            f fVarE = ComposedModifierKt.e(iVar, fVarB);
            ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
            Function0 function0A = companion.a();
            if (!(iVar.i() instanceof androidx.compose.runtime.f)) {
                g.b();
            }
            iVar.C();
            if (iVar.e()) {
                iVar.F(function0A);
            } else {
                iVar.o();
            }
            i iVarA = f3.a(iVar);
            f3.b(iVarA, tVarH, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            f3.b(iVarA, fVarE, companion.d());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f2744a;
            f fVarI = PaddingKt.i(SizeKt.b(aVar, 0.0f, 1, null), 0.0f, f11, 0.0f, f12, 5, null);
            androidx.compose.foundation.layout.b bVar = androidx.compose.foundation.layout.b.f2836a;
            androidx.compose.ui.layout.t tVarA = androidx.compose.foundation.layout.i.a(bVar.d(), aVar2.i(), iVar, 0);
            int iA2 = g.a(iVar, 0);
            s sVarN2 = iVar.n();
            f fVarE2 = ComposedModifierKt.e(iVar, fVarI);
            Function0 function0A2 = companion.a();
            if (!(iVar.i() instanceof androidx.compose.runtime.f)) {
                g.b();
            }
            iVar.C();
            if (iVar.e()) {
                iVar.F(function0A2);
            } else {
                iVar.o();
            }
            i iVarA2 = f3.a(iVar);
            f3.b(iVarA2, tVarA, companion.c());
            f3.b(iVarA2, sVarN2, companion.e());
            Function2 function2B2 = companion.b();
            if (iVarA2.e() || !Intrinsics.c(iVarA2.y(), Integer.valueOf(iA2))) {
                iVarA2.p(Integer.valueOf(iA2));
                iVarA2.k(Integer.valueOf(iA2), function2B2);
            }
            f3.b(iVarA2, fVarE2, companion.d());
            l lVar = l.f2860a;
            float f13 = 12;
            float f14 = 16;
            f fVarF = PaddingKt.f(aVar, o0.i.g(f14), o0.i.g(f13));
            androidx.compose.ui.layout.t tVarB = a0.b(bVar.c(), aVar2.j(), iVar, 0);
            int iA3 = g.a(iVar, 0);
            s sVarN3 = iVar.n();
            f fVarE3 = ComposedModifierKt.e(iVar, fVarF);
            Function0 function0A3 = companion.a();
            if (!(iVar.i() instanceof androidx.compose.runtime.f)) {
                g.b();
            }
            iVar.C();
            if (iVar.e()) {
                iVar.F(function0A3);
            } else {
                iVar.o();
            }
            i iVarA3 = f3.a(iVar);
            f3.b(iVarA3, tVarB, companion.c());
            f3.b(iVarA3, sVarN3, companion.e());
            Function2 function2B3 = companion.b();
            if (iVarA3.e() || !Intrinsics.c(iVarA3.y(), Integer.valueOf(iA3))) {
                iVarA3.p(Integer.valueOf(iA3));
                iVarA3.k(Integer.valueOf(iA3), function2B3);
            }
            f3.b(iVarA3, fVarE3, companion.d());
            d0 d0Var = d0.f2849a;
            String strA = h.a(R$string.filter_more_title, iVar, 0);
            androidx.compose.ui.text.font.h.a aVar3 = androidx.compose.ui.text.font.h.f6124b;
            androidx.compose.ui.text.font.s sVarB = aVar3.b();
            p.a aVar4 = p.f6149b;
            p pVarE = aVar4.e();
            int iB = androidx.compose.ui.text.style.p.f6442a.b();
            TextKt.a(strA, b0.a(d0Var, SizeKt.l(aVar, o0.i.g(0)), 1.0f, false, 2, null), u1.f4658b.f(), x.c(18), null, pVarE, sVarB, 0L, null, null, 0L, iB, false, 0, 0, null, null, iVar, 200064, 48, 128912);
            e0.a(SizeKt.l(aVar, o0.i.g(f13)), iVar, 6);
            Painter painterC = i0.e.c(R$drawable.music_iv_close, iVar, 0);
            long jA = i0.b.a(R$color.white, iVar, 0);
            float f15 = 21;
            f fVarE4 = SizeKt.e(SizeKt.l(aVar, o0.i.g(f15)), o0.i.g(f15));
            iVar.P(5004770);
            boolean zO = iVar.O(function1);
            Object objY = iVar.y();
            if (zO || objY == i.f3736a.a()) {
                objY = new Function0() { // from class: com.transsion.home.view.filter.popup.a
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return e.a.h(function1);
                    }
                };
                iVar.p(objY);
            }
            iVar.K();
            IconKt.a(painterC, MRAIDPresenter.OPEN, ClickableKt.d(fVarE4, false, null, null, (Function0) objY, 7, null), jA, iVar, 48, 0);
            iVar.r();
            float f16 = 1;
            DividerKt.a(null, i0.b.a(R$color.white_10, iVar, 0), o0.i.g(f16), 0.0f, iVar, 384, 9);
            e0.a(SizeKt.e(aVar, o0.i.g(f13)), iVar, 6);
            f fVarD = SizeKt.d(PaddingKt.g(j.a(lVar, aVar, 1.0f, false, 2, null), o0.i.g(f14), 0.0f, 2, null), 0.0f, 1, null);
            iVar.P(-1633490746);
            boolean zA = iVar.A(list) | iVar.O(tVar);
            Object objY2 = iVar.y();
            if (zA || objY2 == i.f3736a.a()) {
                objY2 = new Function1() { // from class: com.transsion.home.view.filter.popup.b
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return e.a.i(list, tVar, (u) obj);
                    }
                };
                iVar.p(objY2);
            }
            iVar.K();
            LazyDslKt.a(fVarD, null, null, false, null, null, null, false, (Function1) objY2, iVar, 0, 254);
            DividerKt.a(null, i0.b.a(R$color.white_10, iVar, 0), o0.i.g(f16), 0.0f, iVar, 384, 9);
            e0.a(SizeKt.e(aVar, o0.i.g(f13)), iVar, 6);
            f fVarG = PaddingKt.g(aVar, o0.i.g(f14), 0.0f, 2, null);
            androidx.compose.ui.layout.t tVarB2 = a0.b(bVar.c(), aVar2.j(), iVar, 0);
            int iA4 = g.a(iVar, 0);
            s sVarN4 = iVar.n();
            f fVarE5 = ComposedModifierKt.e(iVar, fVarG);
            Function0 function0A4 = companion.a();
            if (!(iVar.i() instanceof androidx.compose.runtime.f)) {
                g.b();
            }
            iVar.C();
            if (iVar.e()) {
                iVar.F(function0A4);
            } else {
                iVar.o();
            }
            i iVarA4 = f3.a(iVar);
            f3.b(iVarA4, tVarB2, companion.c());
            f3.b(iVarA4, sVarN4, companion.e());
            Function2 function2B4 = companion.b();
            if (iVarA4.e() || !Intrinsics.c(iVarA4.y(), Integer.valueOf(iA4))) {
                iVarA4.p(Integer.valueOf(iA4));
                iVarA4.k(Integer.valueOf(iA4), function2B4);
            }
            f3.b(iVarA4, fVarE5, companion.d());
            androidx.compose.ui.b.InterfaceC0044b interfaceC0044bF = aVar2.f();
            androidx.compose.foundation.layout.b.e eVarB = bVar.b();
            float f17 = 48;
            float f18 = 100;
            f fVarE6 = BorderKt.e(SizeKt.e(aVar, o0.i.g(f17)), o0.i.g(f16), i0.b.a(R$color.white, iVar, 0), q.g.c(o0.i.g(f18)));
            iVar.P(-1633490746);
            boolean zA2 = iVar.A(list) | iVar.O(tVar);
            Object objY3 = iVar.y();
            if (zA2 || objY3 == i.f3736a.a()) {
                objY3 = new Function0() { // from class: com.transsion.home.view.filter.popup.c
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return e.a.g(list, tVar);
                    }
                };
                iVar.p(objY3);
            }
            iVar.K();
            f fVarD2 = ClickableKt.d(fVarE6, false, null, null, (Function0) objY3, 7, null);
            androidx.compose.ui.layout.t tVarA2 = androidx.compose.foundation.layout.i.a(eVarB, interfaceC0044bF, iVar, 54);
            int iA5 = g.a(iVar, 0);
            s sVarN5 = iVar.n();
            f fVarE7 = ComposedModifierKt.e(iVar, fVarD2);
            Function0 function0A5 = companion.a();
            if (!(iVar.i() instanceof androidx.compose.runtime.f)) {
                g.b();
            }
            iVar.C();
            if (iVar.e()) {
                iVar.F(function0A5);
            } else {
                iVar.o();
            }
            i iVarA5 = f3.a(iVar);
            f3.b(iVarA5, tVarA2, companion.c());
            f3.b(iVarA5, sVarN5, companion.e());
            Function2 function2B5 = companion.b();
            if (iVarA5.e() || !Intrinsics.c(iVarA5.y(), Integer.valueOf(iA5))) {
                iVarA5.p(Integer.valueOf(iA5));
                iVarA5.k(Integer.valueOf(iA5), function2B5);
            }
            f3.b(iVarA5, fVarE7, companion.d());
            String strA2 = h.a(R$string.filter_reset, iVar, 0);
            long jC = x.c(18);
            androidx.compose.ui.text.font.s sVarB2 = aVar3.b();
            TextKt.a(strA2, PaddingKt.g(aVar, o0.i.g(24), 0.0f, 2, null), i0.b.a(R$color.white, iVar, 0), jC, null, aVar4.e(), sVarB2, 0L, null, null, 0L, 0, false, 0, 0, null, null, iVar, 199728, 0, 130960);
            iVar.r();
            e0.a(SizeKt.l(aVar, o0.i.g(f13)), iVar, 6);
            androidx.compose.ui.b.InterfaceC0044b interfaceC0044bF2 = aVar2.f();
            androidx.compose.foundation.layout.b.e eVarB2 = bVar.b();
            f fVarA = BackgroundKt.a(b0.a(d0Var, SizeKt.e(aVar, o0.i.g(f17)), 1.0f, false, 2, null), i0.b.a(R$color.white, iVar, 0), q.g.c(o0.i.g(f18)));
            iVar.P(-1746271574);
            boolean zO2 = iVar.O(tVar2) | iVar.O(tVar) | iVar.O(function1);
            Object objY4 = iVar.y();
            if (zO2 || objY4 == i.f3736a.a()) {
                objY4 = new Function0() { // from class: com.transsion.home.view.filter.popup.d
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return e.a.f(tVar2, tVar, function1);
                    }
                };
                iVar.p(objY4);
            }
            iVar.K();
            f fVarD3 = ClickableKt.d(fVarA, false, null, null, (Function0) objY4, 7, null);
            androidx.compose.ui.layout.t tVarA3 = androidx.compose.foundation.layout.i.a(eVarB2, interfaceC0044bF2, iVar, 54);
            int iA6 = g.a(iVar, 0);
            s sVarN6 = iVar.n();
            f fVarE8 = ComposedModifierKt.e(iVar, fVarD3);
            Function0 function0A6 = companion.a();
            if (!(iVar.i() instanceof androidx.compose.runtime.f)) {
                g.b();
            }
            iVar.C();
            if (iVar.e()) {
                iVar.F(function0A6);
            } else {
                iVar.o();
            }
            i iVarA6 = f3.a(iVar);
            f3.b(iVarA6, tVarA3, companion.c());
            f3.b(iVarA6, sVarN6, companion.e());
            Function2 function2B6 = companion.b();
            if (iVarA6.e() || !Intrinsics.c(iVarA6.y(), Integer.valueOf(iA6))) {
                iVarA6.p(Integer.valueOf(iA6));
                iVarA6.k(Integer.valueOf(iA6), function2B6);
            }
            f3.b(iVarA6, fVarE8, companion.d());
            TextKt.a(h.a(R$string.filter_confirm, iVar, 0), null, i0.b.a(R$color.black, iVar, 0), x.c(18), null, aVar4.e(), aVar3.b(), 0L, null, null, 0L, 0, false, 0, 0, null, null, iVar, 199680, 0, 130962);
            iVar.r();
            iVar.r();
            e0.a(SizeKt.e(aVar, o0.i.g(f13)), iVar, 6);
            iVar.r();
            iVar.r();
            if (k.H()) {
                k.P();
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            e((i) obj, ((Number) obj2).intValue());
            return Unit.f67061a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean D(t tVar, t tVar2) {
        boolean z10 = false;
        for (Map.Entry entry : tVar2.entrySet()) {
            if (!Intrinsics.c(tVar.get(entry.getKey()), entry.getValue())) {
                tVar.put(entry.getKey(), entry.getValue());
                z10 = true;
            }
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(List list, t tVar) {
        f45774c = true;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Item item = (Item) it.next();
            if (item.getRangeVals() != null) {
                tVar.put(item.getFilterType(), PopupFilterView.INSTANCE.a(item.getRangeVals().getMinVal(), item.getRangeVals().getMaxVal()));
            } else if (!item.getFilterValsV2().isEmpty()) {
                tVar.put(item.getFilterType(), item.getFilterValsV2().get(0).getId());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(final Item item, final t tVar, i iVar, final int i11) {
        i iVar2;
        int i12;
        i iVarG = iVar.g(1506355035);
        int i13 = (i11 & 6) == 0 ? (iVarG.A(item) ? 4 : 2) | i11 : i11;
        if ((i11 & 48) == 0) {
            i13 |= iVarG.O(tVar) ? 32 : 16;
        }
        int i14 = i13;
        if ((i14 & 19) == 18 && iVarG.h()) {
            iVarG.G();
            iVar2 = iVarG;
        } else {
            if (k.H()) {
                k.Q(1506355035, i14, -1, "com.transsion.home.view.filter.popup.FilterItemView (MultiFilterPopupWindow.kt:280)");
            }
            f.a aVar = f.f4178a;
            androidx.compose.ui.layout.t tVarA = androidx.compose.foundation.layout.i.a(androidx.compose.foundation.layout.b.f2836a.d(), androidx.compose.ui.b.f4087a.i(), iVarG, 0);
            int iA = g.a(iVarG, 0);
            s sVarN = iVarG.n();
            f fVarE = ComposedModifierKt.e(iVarG, aVar);
            ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
            Function0 function0A = companion.a();
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A);
            } else {
                iVarG.o();
            }
            i iVarA = f3.a(iVarG);
            f3.b(iVarA, tVarA, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            f3.b(iVarA, fVarE, companion.d());
            l lVar = l.f2860a;
            int i15 = 0;
            TextKt.a(item.getTitle(), null, i0.b.a(R$color.white, iVarG, 0), x.c(16), null, p.f6149b.c(), androidx.compose.ui.text.font.h.f6124b.b(), 0L, null, null, 0L, 0, false, 0, 0, null, null, iVarG, 199680, 0, 130962);
            if (item.getRangeVals() == null) {
                iVarG.P(727601012);
                List<List> listA0 = CollectionsKt.a0(item.getFilterValsV2(), 2);
                int i16 = (((Configuration) iVarG.l(AndroidCompositionLocals_androidKt.f())).screenWidthDp - 44) / 2;
                for (List<FilterVal> list : listA0) {
                    f fVarI = PaddingKt.i(SizeKt.d(f.f4178a, 0.0f, 1, null), 0.0f, o0.i.g(12), 0.0f, 0.0f, 13, null);
                    androidx.compose.ui.layout.t tVarB = a0.b(androidx.compose.foundation.layout.b.f2836a.c(), androidx.compose.ui.b.f4087a.j(), iVarG, i15);
                    int iA2 = g.a(iVarG, i15);
                    s sVarN2 = iVarG.n();
                    f fVarE2 = ComposedModifierKt.e(iVarG, fVarI);
                    ComposeUiNode.Companion companion2 = ComposeUiNode.f5224c1;
                    Function0 function0A2 = companion2.a();
                    if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                        g.b();
                    }
                    iVarG.C();
                    if (iVarG.e()) {
                        iVarG.F(function0A2);
                    } else {
                        iVarG.o();
                    }
                    i iVarA2 = f3.a(iVarG);
                    f3.b(iVarA2, tVarB, companion2.c());
                    f3.b(iVarA2, sVarN2, companion2.e());
                    Function2 function2B2 = companion2.b();
                    if (iVarA2.e() || !Intrinsics.c(iVarA2.y(), Integer.valueOf(iA2))) {
                        iVarA2.p(Integer.valueOf(iA2));
                        iVarA2.k(Integer.valueOf(iA2), function2B2);
                    }
                    f3.b(iVarA2, fVarE2, companion2.d());
                    d0 d0Var = d0.f2849a;
                    iVarG.P(-1743407500);
                    for (FilterVal filterVal : list) {
                        f.a aVar2 = f.f4178a;
                        int i17 = i16;
                        int i18 = i14;
                        i iVar3 = iVarG;
                        m(item, filterVal, tVar, SizeKt.l(aVar2, o0.i.g(i16)), iVarG, (i14 & 14) | ((i14 << 3) & 896));
                        iVar3.P(-1743402035);
                        if (Intrinsics.c(filterVal, CollectionsKt.u0(list))) {
                            i12 = 0;
                        } else {
                            i12 = 0;
                            e0.a(b0.a(d0Var, aVar2, 1.0f, false, 2, null), iVar3, 0);
                        }
                        iVar3.K();
                        i15 = i12;
                        iVarG = iVar3;
                        i16 = i17;
                        i14 = i18;
                    }
                    int i19 = i16;
                    i iVar4 = iVarG;
                    iVar4.K();
                    iVar4.r();
                    i16 = i19;
                }
                iVar2 = iVarG;
                iVar2.K();
            } else {
                iVar2 = iVarG;
                iVar2.P(728374648);
                u(item, tVar, iVar2, i14 & 126);
                iVar2.K();
            }
            e0.a(SizeKt.e(f.f4178a, o0.i.g(32)), iVar2, 6);
            iVar2.r();
            if (k.H()) {
                k.P();
            }
        }
        g2 g2VarJ = iVar2.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2() { // from class: ul.e
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return com.transsion.home.view.filter.popup.e.l(item, tVar, i11, (androidx.compose.runtime.i) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(Item item, t tVar, int i11, i iVar, int i12) {
        k(item, tVar, iVar, v1.a(i11 | 1));
        return Unit.f67061a;
    }

    private static final void m(final Item item, final FilterVal filterVal, final t tVar, final f fVar, i iVar, final int i11) {
        int i12;
        long jA;
        long jA2;
        i iVar2;
        i iVarG = iVar.g(973616320);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.A(item) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 48) == 0) {
            i12 |= iVarG.O(filterVal) ? 32 : 16;
        }
        if ((i11 & 384) == 0) {
            i12 |= iVarG.O(tVar) ? 256 : 128;
        }
        if ((i11 & 3072) == 0) {
            i12 |= iVarG.O(fVar) ? 2048 : 1024;
        }
        if ((i12 & 1171) == 1170 && iVarG.h()) {
            iVarG.G();
            iVar2 = iVarG;
        } else {
            if (k.H()) {
                k.Q(973616320, i12, -1, "com.transsion.home.view.filter.popup.GridItem (MultiFilterPopupWindow.kt:323)");
            }
            if (Intrinsics.c(tVar.get(item.getFilterType()), filterVal.getId())) {
                iVarG.P(1089913522);
                jA = i0.b.a(R$color.white, iVarG, 0);
                jA2 = i0.b.a(com.transsion.wrapperad.R$color.white_40, iVarG, 0);
                iVarG.K();
            } else {
                iVarG.P(1090061733);
                jA = i0.b.a(R$color.text_03, iVarG, 0);
                jA2 = i0.b.a(R$color.transparent, iVarG, 0);
                iVarG.K();
            }
            androidx.compose.ui.b bVarD = androidx.compose.ui.b.f4087a.d();
            float f11 = 100;
            f fVarA = BackgroundKt.a(BorderKt.e(SizeKt.e(fVar, o0.i.g(32)), o0.i.g(1), jA, q.g.c(o0.i.g(f11))), jA2, q.g.c(o0.i.g(f11)));
            iVarG.P(-1746271574);
            boolean zA = ((i12 & 896) == 256) | iVarG.A(item) | ((i12 & 112) == 32);
            Object objY = iVarG.y();
            if (zA || objY == i.f3736a.a()) {
                objY = new Function0() { // from class: ul.i
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return com.transsion.home.view.filter.popup.e.n(tVar, item, filterVal);
                    }
                };
                iVarG.p(objY);
            }
            iVarG.K();
            f fVarD = ClickableKt.d(fVarA, false, null, null, (Function0) objY, 7, null);
            androidx.compose.ui.layout.t tVarH = BoxKt.h(bVarD, false);
            int iA = g.a(iVarG, 0);
            s sVarN = iVarG.n();
            f fVarE = ComposedModifierKt.e(iVarG, fVarD);
            ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
            Function0 function0A = companion.a();
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A);
            } else {
                iVarG.o();
            }
            i iVarA = f3.a(iVarG);
            f3.b(iVarA, tVarH, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            f3.b(iVarA, fVarE, companion.d());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f2744a;
            iVar2 = iVarG;
            TextKt.a(filterVal.getName(), null, i0.b.a(R$color.white, iVarG, 0), x.c(14), null, p.f6149b.c(), androidx.compose.ui.text.font.h.f6124b.b(), 0L, null, null, 0L, 0, false, 0, 0, null, null, iVar2, 199680, 0, 130962);
            iVar2.r();
            if (k.H()) {
                k.P();
            }
        }
        g2 g2VarJ = iVar2.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2() { // from class: ul.j
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return com.transsion.home.view.filter.popup.e.o(item, filterVal, tVar, fVar, i11, (androidx.compose.runtime.i) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n(t tVar, Item item, FilterVal filterVal) {
        tVar.put(item.getFilterType(), filterVal.getId());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o(Item item, FilterVal filterVal, t tVar, f fVar, int i11, i iVar, int i12) {
        m(item, filterVal, tVar, fVar, iVar, v1.a(i11 | 1));
        return Unit.f67061a;
    }

    public static final void p(final List filterItems, final t selectItems, final Function1 dismiss, i iVar, final int i11) {
        int i12;
        Pair pairA;
        z0.c insets;
        z0.c insets2;
        Window window;
        View decorView;
        Intrinsics.h(filterItems, "filterItems");
        Intrinsics.h(selectItems, "selectItems");
        Intrinsics.h(dismiss, "dismiss");
        i iVarG = iVar.g(1096788014);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.A(filterItems) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 48) == 0) {
            i12 |= iVarG.O(selectItems) ? 32 : 16;
        }
        if ((i11 & 384) == 0) {
            i12 |= iVarG.A(dismiss) ? 256 : 128;
        }
        if ((i12 & 147) == 146 && iVarG.h()) {
            iVarG.G();
        } else {
            if (k.H()) {
                k.Q(1096788014, i12, -1, "com.transsion.home.view.filter.popup.MultiFilterPopup (MultiFilterPopupWindow.kt:66)");
            }
            final com.google.accompanist.systemuicontroller.c cVarE = SystemUiControllerKt.e(null, iVarG, 0, 1);
            final long jA = i0.b.a(R$color.black_80, iVarG, 0);
            Handler handler = new Handler(Looper.getMainLooper());
            iVarG.P(-1633490746);
            boolean zO = iVarG.O(cVarE) | iVarG.d(jA);
            Object objY = iVarG.y();
            if (zO || objY == i.f3736a.a()) {
                objY = new Runnable() { // from class: ul.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.transsion.home.view.filter.popup.e.q(cVarE, jA);
                    }
                };
                iVarG.p(objY);
            }
            iVarG.K();
            handler.postDelayed((Runnable) objY, 100L);
            iVarG.P(-1633490746);
            boolean zO2 = iVarG.O(cVarE) | ((i12 & 896) == 256);
            Object objY2 = iVarG.y();
            if (zO2 || objY2 == i.f3736a.a()) {
                objY2 = new Function1() { // from class: ul.b
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return com.transsion.home.view.filter.popup.e.r(cVarE, dismiss, ((Boolean) obj).booleanValue());
                    }
                };
                iVarG.p(objY2);
            }
            final Function1 function1 = (Function1) objY2;
            iVarG.K();
            t tVar = new t();
            tVar.putAll(selectItems);
            Context context = (Context) iVarG.l(AndroidCompositionLocals_androidKt.g());
            o0.e eVar = (o0.e) iVarG.l(CompositionLocalsKt.c());
            Activity activity = context instanceof Activity ? (Activity) context : null;
            WindowInsetsCompat rootWindowInsets = (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) ? null : ViewCompat.getRootWindowInsets(decorView);
            iVarG.P(5004770);
            boolean zO3 = iVarG.O(context);
            Object objY3 = iVarG.y();
            if (zO3 || objY3 == i.f3736a.a()) {
                if (Build.VERSION.SDK_INT >= 35) {
                    Resources resources = context.getResources();
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int iMax = Math.max(identifier > 0 ? resources.getDimensionPixelSize(identifier) : 0, (rootWindowInsets == null || (insets2 = rootWindowInsets.getInsets(WindowInsetsCompat.Type.statusBars())) == null) ? 0 : insets2.f79126b);
                    int i13 = (rootWindowInsets == null || (insets = rootWindowInsets.getInsets(WindowInsetsCompat.Type.navigationBars())) == null) ? 0 : insets.f79128d;
                    pairA = TuplesKt.a(o0.i.d(eVar.x0(iMax)), o0.i.d(eVar.x0(i13 > 0 ? i13 + ((int) (16 * eVar.getDensity())) : (int) (32 * eVar.getDensity()))));
                } else {
                    float f11 = 0;
                    pairA = TuplesKt.a(o0.i.d(o0.i.g(f11)), o0.i.d(o0.i.g(f11)));
                }
                objY3 = pairA;
                iVarG.p(objY3);
            }
            Pair pair = (Pair) objY3;
            iVarG.K();
            float fL = ((o0.i) pair.component1()).l();
            float fL2 = ((o0.i) pair.component2()).l();
            iVarG.P(5004770);
            boolean zO4 = iVarG.O(function1);
            Object objY4 = iVarG.y();
            if (zO4 || objY4 == i.f3736a.a()) {
                objY4 = new Function0() { // from class: ul.c
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return com.transsion.home.view.filter.popup.e.s(function1);
                    }
                };
                iVarG.p(objY4);
            }
            iVarG.K();
            AndroidDialog_androidKt.a((Function0) objY4, new androidx.compose.ui.window.c(false, false, false, 3, (DefaultConstructorMarker) null), androidx.compose.runtime.internal.b.d(-1419240635, true, new a(jA, fL, fL2, filterItems, tVar, function1, selectItems), iVarG, 54), iVarG, 432, 0);
            if (k.H()) {
                k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2() { // from class: ul.d
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return com.transsion.home.view.filter.popup.e.t(filterItems, selectItems, dismiss, i11, (androidx.compose.runtime.i) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(com.google.accompanist.systemuicontroller.c cVar, long j11) {
        com.google.accompanist.systemuicontroller.b.b(cVar, j11, false, false, null, 14, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r(com.google.accompanist.systemuicontroller.c cVar, Function1 function1, boolean z10) {
        com.google.accompanist.systemuicontroller.b.b(cVar, u1.f4658b.d(), false, false, null, 14, null);
        function1.invoke(Boolean.valueOf(z10));
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s(Function1 function1) {
        function1.invoke(Boolean.FALSE);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t(List list, t tVar, Function1 function1, int i11, i iVar, int i12) {
        p(list, tVar, function1, iVar, v1.a(i11 | 1));
        return Unit.f67061a;
    }

    private static final void u(final Item item, final t tVar, i iVar, final int i11) {
        int i12;
        final i1 i1Var;
        i iVar2;
        String str;
        Float fT;
        String str2;
        Float fT2;
        i iVarG = iVar.g(-945657323);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.A(item) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 48) == 0) {
            i12 |= iVarG.O(tVar) ? 32 : 16;
        }
        int i13 = i12;
        if ((i13 & 19) == 18 && iVarG.h()) {
            iVarG.G();
            iVar2 = iVarG;
        } else {
            if (k.H()) {
                k.Q(-945657323, i13, -1, "com.transsion.home.view.filter.popup.StepRangeSlider (MultiFilterPopupWindow.kt:375)");
            }
            RangeValue rangeVals = item.getRangeVals();
            Intrinsics.e(rangeVals);
            float minVal = rangeVals.getMinVal();
            float maxVal = rangeVals.getMaxVal();
            String str3 = (String) tVar.get(item.getFilterType());
            List listS0 = str3 != null ? StringsKt.S0(str3, new String[]{","}, false, 0, 6, null) : null;
            if ((listS0 != null ? listS0.size() : 0) >= 2) {
                minVal = (listS0 == null || (str2 = (String) listS0.get(0)) == null || (fT2 = StringsKt.t(str2)) == null) ? rangeVals.getMinVal() : fT2.floatValue();
                maxVal = (listS0 == null || (str = (String) listS0.get(1)) == null || (fT = StringsKt.t(str)) == null) ? rangeVals.getMaxVal() : fT.floatValue();
            }
            iVarG.P(1849434622);
            Object objY = iVarG.y();
            i.a aVar = i.f3736a;
            if (objY == aVar.a()) {
                objY = u2.c(RangesKt.b(minVal, maxVal), null, 2, null);
                iVarG.p(objY);
            }
            i1 i1Var2 = (i1) objY;
            iVarG.K();
            if (f45774c) {
                w(i1Var2, RangesKt.b(minVal, maxVal));
                f45774c = false;
            }
            f.a aVar2 = f.f4178a;
            androidx.compose.foundation.layout.b bVar = androidx.compose.foundation.layout.b.f2836a;
            androidx.compose.foundation.layout.b.k kVarD = bVar.d();
            androidx.compose.ui.b.a aVar3 = androidx.compose.ui.b.f4087a;
            androidx.compose.ui.layout.t tVarA = androidx.compose.foundation.layout.i.a(kVarD, aVar3.i(), iVarG, 0);
            int iA = g.a(iVarG, 0);
            s sVarN = iVarG.n();
            f fVarE = ComposedModifierKt.e(iVarG, aVar2);
            ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
            Function0 function0A = companion.a();
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A);
            } else {
                iVarG.o();
            }
            i iVarA = f3.a(iVarG);
            f3.b(iVarA, tVarA, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            f3.b(iVarA, fVarE, companion.d());
            l lVar = l.f2860a;
            int iD = MathKt.d(((Number) v(i1Var2).j()).floatValue());
            int iD2 = MathKt.d(((Number) v(i1Var2).e()).floatValue());
            ClosedFloatingPointRange closedFloatingPointRangeV = v(i1Var2);
            ClosedFloatingPointRange closedFloatingPointRangeB = RangesKt.b(rangeVals.getMinVal(), rangeVals.getMaxVal());
            int maxVal2 = ((int) rangeVals.getMaxVal()) - 1;
            androidx.compose.material.j jVarA = androidx.compose.material.k.f3418a.a(i0.b.a(R$color.white, iVarG, 0), 0L, i0.b.a(R$color.white, iVarG, 0), 0L, i0.b.a(R$color.white_40, iVarG, 0), 0L, i0.b.a(R$color.transparent, iVarG, 0), i0.b.a(R$color.transparent, iVarG, 0), 0L, 0L, iVarG, 0, androidx.compose.material.k.f3419b, 810);
            iVarG.P(5004770);
            Object objY2 = iVarG.y();
            if (objY2 == aVar.a()) {
                i1Var = i1Var2;
                objY2 = new Function1() { // from class: ul.f
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return com.transsion.home.view.filter.popup.e.x(i1Var, (ClosedFloatingPointRange) obj);
                    }
                };
                iVarG.p(objY2);
            } else {
                i1Var = i1Var2;
            }
            Function1 function1 = (Function1) objY2;
            iVarG.K();
            iVarG.P(-1746271574);
            boolean zA = iVarG.A(item) | ((i13 & 112) == 32);
            Object objY3 = iVarG.y();
            if (zA || objY3 == aVar.a()) {
                objY3 = new Function0() { // from class: ul.g
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return com.transsion.home.view.filter.popup.e.y(tVar, item, i1Var);
                    }
                };
                iVarG.p(objY3);
            }
            iVarG.K();
            SliderKt.b(closedFloatingPointRangeV, function1, null, false, closedFloatingPointRangeB, maxVal2, (Function0) objY3, jVarA, iVarG, 48, 12);
            androidx.compose.ui.layout.t tVarB = a0.b(bVar.c(), aVar3.j(), iVarG, 0);
            int iA2 = g.a(iVarG, 0);
            s sVarN2 = iVarG.n();
            f fVarE2 = ComposedModifierKt.e(iVarG, aVar2);
            Function0 function0A2 = companion.a();
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A2);
            } else {
                iVarG.o();
            }
            i iVarA2 = f3.a(iVarG);
            f3.b(iVarA2, tVarB, companion.c());
            f3.b(iVarA2, sVarN2, companion.e());
            Function2 function2B2 = companion.b();
            if (iVarA2.e() || !Intrinsics.c(iVarA2.y(), Integer.valueOf(iA2))) {
                iVarA2.p(Integer.valueOf(iA2));
                iVarA2.k(Integer.valueOf(iA2), function2B2);
            }
            f3.b(iVarA2, fVarE2, companion.d());
            d0 d0Var = d0.f2849a;
            String strValueOf = String.valueOf(iD);
            long jC = x.c(12);
            androidx.compose.ui.text.font.h.a aVar4 = androidx.compose.ui.text.font.h.f6124b;
            androidx.compose.ui.text.font.s sVarB = aVar4.b();
            p.a aVar5 = p.f6149b;
            TextKt.a(strValueOf, PaddingKt.i(aVar2, o0.i.g(5), 0.0f, 0.0f, 0.0f, 14, null), i0.b.a(R$color.white, iVarG, 0), jC, null, aVar5.e(), sVarB, 0L, null, null, 0L, 0, false, 0, 0, null, null, iVarG, 199728, 0, 130960);
            e0.a(b0.a(d0Var, aVar2, 1.0f, false, 2, null), iVarG, 0);
            iVar2 = iVarG;
            TextKt.a(String.valueOf(iD2), null, i0.b.a(R$color.white, iVarG, 0), x.c(12), null, aVar5.e(), aVar4.b(), 0L, null, null, 0L, 0, false, 0, 0, null, null, iVar2, 199680, 0, 130962);
            iVar2.r();
            iVar2.r();
            if (k.H()) {
                k.P();
            }
        }
        g2 g2VarJ = iVar2.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2() { // from class: ul.h
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return com.transsion.home.view.filter.popup.e.z(item, tVar, i11, (androidx.compose.runtime.i) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final ClosedFloatingPointRange v(i1 i1Var) {
        return (ClosedFloatingPointRange) i1Var.getValue();
    }

    private static final void w(i1 i1Var, ClosedFloatingPointRange closedFloatingPointRange) {
        i1Var.setValue(closedFloatingPointRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x(i1 i1Var, ClosedFloatingPointRange it) {
        Intrinsics.h(it, "it");
        float fFloatValue = ((Number) it.j()).floatValue() == ((Number) v(i1Var).j()).floatValue() ? ((Number) it.e()).floatValue() : ((Number) it.j()).floatValue();
        if (((int) fFloatValue) != ((int) f45773b)) {
            f0.b(20L);
        }
        f45773b = fFloatValue;
        w(i1Var, it);
        if (((Number) it.j()).floatValue() == ((Number) it.e()).floatValue()) {
            f45772a = ((Number) it.j()).floatValue();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y(t tVar, Item item, i1 i1Var) {
        if (((Number) v(i1Var).j()).floatValue() > ((Number) v(i1Var).e()).floatValue()) {
            float f11 = f45772a;
            w(i1Var, RangesKt.b(f11, f11));
        }
        tVar.put(item.getFilterType(), PopupFilterView.INSTANCE.a(((Number) v(i1Var).j()).floatValue(), ((Number) v(i1Var).e()).floatValue()));
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z(Item item, t tVar, int i11, i iVar, int i12) {
        u(item, tVar, iVar, v1.a(i11 | 1));
        return Unit.f67061a;
    }
}
