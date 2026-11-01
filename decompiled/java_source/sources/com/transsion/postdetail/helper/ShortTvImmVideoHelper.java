package com.transsion.postdetail.helper;

import android.content.Context;
import android.graphics.Insets;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import androidx.asynclayoutinflater.view.AsyncLayoutInflater;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import com.blankj.utilcode.util.a0;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
import com.transsion.postdetail.R$layout;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvImmVideoHelper {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f48854k = new a(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Lazy f48855l = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.helper.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTvImmVideoHelper.r();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f48857b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f48860e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f48861f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private List f48864i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f48865j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f48856a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f48858c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f48859d = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.helper.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTvImmVideoHelper.B();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List f48862g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List f48863h = new ArrayList();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShortTvImmVideoHelper a() {
            return (ShortTvImmVideoHelper) ShortTvImmVideoHelper.f48855l.getValue();
        }
    }

    public ShortTvImmVideoHelper() {
        this.f48860e = true;
        this.f48861f = true;
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        this.f48860e = bVar.b().getBoolean("k_imm_video_guide", true);
        this.f48861f = bVar.b().getBoolean("k_short_tv_guide", true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 B() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(FragmentActivity fragmentActivity, ShortTvImmVideoHelper shortTvImmVideoHelper) {
        View decorView;
        WindowInsets rootWindowInsets;
        if (fragmentActivity.isFinishing()) {
            return;
        }
        Window window = fragmentActivity.getWindow();
        Insets mandatorySystemGestureInsets = (window == null || (decorView = window.getDecorView()) == null || (rootWindowInsets = decorView.getRootWindowInsets()) == null) ? null : rootWindowInsets.getMandatorySystemGestureInsets();
        if (mandatorySystemGestureInsets == null || mandatorySystemGestureInsets.bottom > a0.a(40.0f)) {
            lg.a.C0828a.f(lg.a.f68839a, "ImmVideoHelper", "is open navigation bar 2", false, 4, null);
            return;
        }
        int i11 = mandatorySystemGestureInsets.bottom;
        shortTvImmVideoHelper.f48857b = i11;
        lg.a.C0828a.f(lg.a.f68839a, "ImmVideoHelper", "on get navigation gesture height = " + i11, false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ShortTvImmVideoHelper r() {
        return new ShortTvImmVideoHelper();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u(Video video) {
        String url;
        if (video == null || (url = video.getUrl()) == null) {
            return;
        }
        ORPlayerPreloadManager.f48409i.a().j(url, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(ShortTvImmVideoHelper shortTvImmVideoHelper, View view, int i11, ViewGroup viewGroup) {
        Intrinsics.h(view, "view");
        lg.a.C0828a.f(lg.a.f68839a, "ShortTvImmVideoPlayer", "for you preloadItemViews completion, " + view, false, 4, null);
        if (shortTvImmVideoHelper.f48865j) {
            return;
        }
        shortTvImmVideoHelper.f48862g.add(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(ShortTvImmVideoHelper shortTvImmVideoHelper, View view, int i11, ViewGroup viewGroup) {
        Intrinsics.h(view, "view");
        lg.a.C0828a.f(lg.a.f68839a, "ShortTvImmVideoPlayer", "detail preloadItemViews completion, " + view, false, 4, null);
        if (shortTvImmVideoHelper.f48865j) {
            return;
        }
        shortTvImmVideoHelper.f48863h.add(view);
    }

    public final void A() {
        lg.a.C0828a.v(lg.a.f68839a, "ImmVideoPlayer", "-- setVideoGuideShown", false, 4, null);
        this.f48860e = false;
        com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("k_imm_video_guide", false);
    }

    public final void j() {
        this.f48856a.clear();
    }

    public final List k() {
        return this.f48856a;
    }

    public final List l() {
        return this.f48862g;
    }

    public final int m() {
        return this.f48857b;
    }

    public final b0 n() {
        return (b0) this.f48859d.getValue();
    }

    public final Map o() {
        return this.f48858c;
    }

    public final void p(final FragmentActivity activity) {
        Intrinsics.h(activity, "activity");
        if (Build.VERSION.SDK_INT < 29) {
            this.f48857b = 0;
            return;
        }
        if (com.blankj.utilcode.util.d.a() > 50) {
            lg.a.C0828a.f(lg.a.f68839a, "ImmVideoHelper", "is open navigation bar", false, 4, null);
            this.f48857b = 0;
            return;
        }
        Window window = activity.getWindow();
        View decorView = window != null ? window.getDecorView() : null;
        if (decorView != null) {
            decorView.post(new Runnable() { // from class: com.transsion.postdetail.helper.i
                @Override // java.lang.Runnable
                public final void run() {
                    ShortTvImmVideoHelper.q(activity, this);
                }
            });
        }
    }

    public final boolean s() {
        return this.f48860e;
    }

    public final void t() {
        List list = (List) n().f();
        if ((list != null ? list.size() : 0) > 0) {
            return;
        }
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new ShortTvImmVideoHelper$loadCache$1(this, null), 3, null);
    }

    public final void v(Context context) {
        Intrinsics.h(context, "context");
        this.f48865j = false;
        for (int i11 = 0; i11 < 2; i11++) {
            new AsyncLayoutInflater(context).a(R$layout.item_short_tv_immersion_video, null, new AsyncLayoutInflater.d() { // from class: com.transsion.postdetail.helper.j
                @Override // androidx.asynclayoutinflater.view.AsyncLayoutInflater.d
                public final void a(View view, int i12, ViewGroup viewGroup) {
                    ShortTvImmVideoHelper.w(this.f48877a, view, i12, viewGroup);
                }
            });
        }
        for (int i12 = 0; i12 < 2; i12++) {
            new AsyncLayoutInflater(context).a(com.transsion.shorttv.R$layout.short_tv_item_video, null, new AsyncLayoutInflater.d() { // from class: com.transsion.postdetail.helper.k
                @Override // androidx.asynclayoutinflater.view.AsyncLayoutInflater.d
                public final void a(View view, int i13, ViewGroup viewGroup) {
                    ShortTvImmVideoHelper.x(this.f48878a, view, i13, viewGroup);
                }
            });
        }
    }

    public final void y() {
        this.f48865j = true;
        this.f48862g.clear();
        this.f48863h.clear();
    }

    public final void z(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty() || Intrinsics.c(list, n().f())) {
            return;
        }
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new ShortTvImmVideoHelper$saveCache$1(list, this, null), 3, null);
    }
}
