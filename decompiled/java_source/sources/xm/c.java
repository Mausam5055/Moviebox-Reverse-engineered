package xm;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.os.Build;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.a0;
import androidx.compose.foundation.layout.b0;
import androidx.compose.foundation.layout.d0;
import androidx.compose.foundation.layout.e0;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.f3;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.h2;
import androidx.compose.runtime.s;
import androidx.compose.runtime.v1;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.t;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.text.font.p;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p009lifecycle.ViewTreeViewModelStoreOwner;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.y0;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;
import com.blankj.utilcode.util.y;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$color;
import com.transsion.member.R$mipmap;
import com.transsion.member.R$string;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import o0.x;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    static final class a implements Function2 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f78377b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f78378c;

        a(int i11, int i12) {
            this.f78377b = i11;
            this.f78378c = i12;
        }

        public final void a(androidx.compose.runtime.i iVar, int i11) {
            if ((i11 & 3) == 2 && iVar.h()) {
                iVar.G();
                return;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(1875731887, i11, -1, "com.transsion.member.task.TaskCompleteTips.showTips.<anonymous>.<anonymous> (TaskCompleteTips.kt:78)");
            }
            c.this.c(this.f78377b, this.f78378c, iVar, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            a((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
            return Unit.f67061a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d() {
        if (com.transsion.baseui.util.c.f43504a.a(0, 2000L)) {
            return Unit.f67061a;
        }
        ak.k.p(TheRouter.c("/member/MemberActivity").z("extra_member_scroll_bottom", true));
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e(c cVar, int i11, int i12, int i13, androidx.compose.runtime.i iVar, int i14) {
        cVar.c(i11, i12, iVar, v1.a(i13 | 1));
        return Unit.f67061a;
    }

    private final boolean f(Activity activity) {
        return y.d(activity) > 0;
    }

    public final void c(final int i11, final int i12, androidx.compose.runtime.i iVar, final int i13) {
        int i14;
        androidx.compose.runtime.i iVar2;
        androidx.compose.runtime.i iVarG = iVar.g(-1799667828);
        if ((i13 & 6) == 0) {
            i14 = (iVarG.c(i11) ? 4 : 2) | i13;
        } else {
            i14 = i13;
        }
        if ((i13 & 48) == 0) {
            i14 |= iVarG.c(i12) ? 32 : 16;
        }
        if ((i14 & 19) == 18 && iVarG.h()) {
            iVarG.G();
            iVar2 = iVarG;
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1799667828, i14, -1, "com.transsion.member.task.TaskCompleteTips.TaskCompleteView (TaskCompleteTips.kt:100)");
            }
            Painter painterC = i0.e.c(R$mipmap.ic_succeed, iVarG, 0);
            androidx.compose.ui.b.a aVar = androidx.compose.ui.b.f4087a;
            androidx.compose.ui.b.c cVarH = aVar.h();
            androidx.compose.ui.f.a aVar2 = androidx.compose.ui.f.f4178a;
            float f11 = 8;
            androidx.compose.ui.f fVarA = BackgroundKt.a(SizeKt.l(aVar2, o0.i.g(i11)), i0.b.a(R$color.white_90, iVarG, 0), q.g.c(o0.i.g(f11)));
            iVarG.x(693286680);
            t tVarB = a0.b(androidx.compose.foundation.layout.b.f2836a.c(), cVarH, iVarG, 48);
            iVarG.x(-1323940314);
            int iA = androidx.compose.runtime.g.a(iVarG, 0);
            s sVarN = iVarG.n();
            ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
            Function0 function0A = companion.a();
            Function3 function3A = LayoutKt.a(fVarA);
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A);
            } else {
                iVarG.o();
            }
            androidx.compose.runtime.i iVarA = f3.a(iVarG);
            f3.b(iVarA, tVarB, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            function3A.invoke(h2.a(h2.b(iVarG)), iVarG, 0);
            iVarG.x(2058660585);
            d0 d0Var = d0.f2849a;
            float f12 = 16;
            e0.a(SizeKt.l(aVar2, o0.i.g(f12)), iVarG, 6);
            iVar2 = iVarG;
            ImageKt.a(painterC, null, SizeKt.j(aVar2, o0.i.g(32)), null, null, 0.0f, null, iVarG, 432, 120);
            e0.a(SizeKt.l(aVar2, o0.i.g(f11)), iVar2, 6);
            String strB = i0.h.b(R$string.member_task_claim_toast, new Object[]{String.valueOf(i12)}, iVar2, 0);
            long jA = i0.b.a(R$color.gray_light_80, iVar2, 0);
            long jC = x.c(14);
            androidx.compose.ui.text.font.h.a aVar3 = androidx.compose.ui.text.font.h.f6124b;
            androidx.compose.ui.text.font.s sVarB = aVar3.b();
            p.a aVar4 = p.f6149b;
            TextKt.a(strB, b0.a(d0Var, PaddingKt.i(aVar2, 0.0f, o0.i.g(f12), 0.0f, o0.i.g(f12), 5, null), 1.0f, false, 2, null), jA, jC, null, aVar4.c(), sVarB, 0L, null, null, 0L, 0, false, 0, 0, null, null, iVar2, 199680, 0, 130960);
            e0.a(SizeKt.l(aVar2, o0.i.g(f11)), iVar2, 6);
            androidx.compose.ui.f fVarA2 = BackgroundKt.a(SizeKt.e(SizeKt.l(aVar2, o0.i.g(64)), o0.i.g(28)), i0.b.a(R$color.yellow_light_50, iVar2, 0), q.g.c(o0.i.g(6)));
            iVar2.P(1849434622);
            Object objY = iVar2.y();
            if (objY == androidx.compose.runtime.i.f3736a.a()) {
                objY = new Function0() { // from class: xm.a
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return c.d();
                    }
                };
                iVar2.p(objY);
            }
            iVar2.K();
            androidx.compose.ui.f fVarD = ClickableKt.d(fVarA2, false, null, null, (Function0) objY, 7, null);
            androidx.compose.ui.b bVarD = aVar.d();
            iVar2.x(733328855);
            t tVarJ = BoxKt.j(bVarD, false, iVar2, 6);
            iVar2.x(-1323940314);
            int iA2 = androidx.compose.runtime.g.a(iVar2, 0);
            s sVarN2 = iVar2.n();
            Function0 function0A2 = companion.a();
            Function3 function3A2 = LayoutKt.a(fVarD);
            if (!(iVar2.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVar2.C();
            if (iVar2.e()) {
                iVar2.F(function0A2);
            } else {
                iVar2.o();
            }
            androidx.compose.runtime.i iVarA2 = f3.a(iVar2);
            f3.b(iVarA2, tVarJ, companion.c());
            f3.b(iVarA2, sVarN2, companion.e());
            Function2 function2B2 = companion.b();
            if (iVarA2.e() || !Intrinsics.c(iVarA2.y(), Integer.valueOf(iA2))) {
                iVarA2.p(Integer.valueOf(iA2));
                iVarA2.k(Integer.valueOf(iA2), function2B2);
            }
            function3A2.invoke(h2.a(h2.b(iVar2)), iVar2, 0);
            iVar2.x(2058660585);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f2744a;
            TextKt.a(i0.h.a(R$string.member_claim, iVar2, 0), null, i0.b.a(R$color.gray_dark_00, iVar2, 0), x.c(14), null, aVar4.d(), aVar3.b(), 0L, null, null, 0L, 0, false, 0, 0, null, null, iVar2, 199680, 0, 130962);
            iVar2.N();
            iVar2.r();
            iVar2.N();
            iVar2.N();
            e0.a(SizeKt.l(aVar2, o0.i.g(f12)), iVar2, 6);
            iVar2.N();
            iVar2.r();
            iVar2.N();
            iVar2.N();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVar2.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2() { // from class: xm.b
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return c.e(this.f78372a, i11, i12, i13, (androidx.compose.runtime.i) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public final void g(int i11) {
        boolean z10;
        com.transsion.baselib.report.l lVar = com.transsion.baselib.report.l.f43359a;
        Activity activityO = lVar.o();
        if (Build.VERSION.SDK_INT >= 24 && activityO != null && activityO.isInPictureInPictureMode()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                activityO = lVar.p(lVar.b() - 1);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
        if (activityO == null || activityO.isDestroyed() || !((z10 = activityO instanceof u))) {
            return;
        }
        int i12 = f(activityO) ? 400 : activityO.getResources().getConfiguration().screenWidthDp - 32;
        ComposeView composeView = new ComposeView(activityO, null, 0, 6, null);
        ViewTreeLifecycleOwner.b(composeView, z10 ? (u) activityO : null);
        ViewTreeViewModelStoreOwner.b(composeView, activityO instanceof y0 ? (y0) activityO : null);
        ViewTreeSavedStateRegistryOwner.b(composeView, activityO instanceof androidx.p010savedstate.e ? (androidx.p010savedstate.e) activityO : null);
        composeView.setContent(androidx.compose.runtime.internal.b.b(1875731887, true, new a(i12, i11)));
        composeView.setTag(Integer.valueOf(i12));
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(composeView, "translationY", -92.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(500L);
        com.tn.lib.widget.toast.core.b bVar = new com.tn.lib.widget.toast.core.b(activityO);
        bVar.e(composeView);
        bVar.setDuration(1);
        bVar.setGravity(48, 0, 62);
        bVar.show();
        objectAnimatorOfFloat.start();
    }
}
