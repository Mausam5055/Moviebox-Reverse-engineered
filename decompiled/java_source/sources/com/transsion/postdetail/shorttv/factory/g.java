package com.transsion.postdetail.shorttv.factory;

import android.os.Build;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.postdetail.util.ShortTVFloatManager;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsion.videofloat.manager.a0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g implements qs.g {

    public static final class a implements sx.a {
        a() {
        }

        @Override // sx.a
        public boolean a(px.a aVar) {
            return ShortTVFloatManager.f50149b.r(aVar);
        }

        @Override // sx.a
        public void b(px.a aVar) {
            sx.a.C0918a.a(this, aVar);
            ShortTVFloatManager.f50149b.p(aVar);
        }

        @Override // sx.a
        public void c(px.a aVar) {
            ShortTVFloatManager shortTVFloatManager = ShortTVFloatManager.f50149b;
            shortTVFloatManager.o();
            shortTVFloatManager.t(aVar);
        }
    }

    private final px.a j(js.j jVar) {
        px.a aVar = new px.a(jVar.g(), jVar.c(), null, FloatPlayType.SHORT_TV, jVar.i(), jVar.h(), jVar.a(), "", jVar.e());
        aVar.J(Integer.valueOf(SubjectType.SHORT_TV.getValue()));
        aVar.A(jVar.b());
        aVar.B(jVar.d());
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(FragmentActivity fragmentActivity, boolean z10) {
        if (z10) {
            fragmentActivity.finish();
        }
        return Unit.f67061a;
    }

    @Override // qs.g
    public void a(FragmentActivity activity, boolean z10, boolean z11, ViewGroup viewGroup) {
        Intrinsics.h(activity, "activity");
        ox.e.a aVar = ox.e.f72197a;
        if (aVar.b().c() && com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_pip_enable", true)) {
            aVar.b().a(activity, true, z11, viewGroup);
        }
    }

    @Override // qs.g
    public void b(FragmentActivity activity, String subjectId, String pageName, String str) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(pageName, "pageName");
        ox.b.f72191a.c().e(activity, subjectId, null, pageName, str);
    }

    @Override // qs.g
    public void c() {
        ox.b.C0878b.a(ox.b.f72191a.c(), false, 1, null);
    }

    @Override // qs.g
    public com.transsion.player.orplayer.g d(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return a0.f57933a.b(ShortTVFloatManager.f50149b.k(str));
    }

    @Override // qs.g
    public boolean e(com.transsion.player.orplayer.g gVar) {
        return a0.f57933a.c(gVar);
    }

    @Override // qs.g
    public boolean f(com.transsion.player.orplayer.g gVar) {
        return ox.c.f72196a.c(gVar);
    }

    @Override // qs.g
    public void g(final FragmentActivity activity, js.j bean) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(bean, "bean");
        px.a aVarJ = j(bean);
        if (!com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_pip_enable", true)) {
            lg.a.f68839a.c("VideoFloat", "shottv 设置页pip开关被关闭了", true);
            return;
        }
        ox.e.a aVar = ox.e.f72197a;
        if (aVar.b().c()) {
            lg.a.f68839a.c("VideoFloat-pip", "shottv 当前可用画中画，使用画中画播放", true);
            aVar.b().k(activity, aVarJ, FloatActionType.HOME, false);
        } else {
            ShortTVFloatManager.f50149b.w(bean.f());
            ox.b.f72191a.c().g(activity, aVarJ, false, false, new Function1() { // from class: com.transsion.postdetail.shorttv.factory.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return g.k(activity, ((Boolean) obj).booleanValue());
                }
            }, new a());
        }
    }

    @Override // qs.g
    public void h(boolean z10, FragmentActivity fragmentActivity, js.j bean) {
        Intrinsics.h(bean, "bean");
        if (z10) {
            if (fragmentActivity == null || fragmentActivity.isDestroyed() || fragmentActivity.isFinishing()) {
                return;
            }
            px.a aVarJ = j(bean);
            if (Build.VERSION.SDK_INT >= 31) {
                ox.e.f72197a.b().h(fragmentActivity, aVarJ);
            }
        }
        ox.e.f72197a.b().onPipModeChanged(z10);
    }
}
