package com.transsion.postdetail.helper;

import android.graphics.Insets;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import com.blankj.utilcode.util.a0;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
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
public final class ImmVideoHelper {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f48840h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Lazy f48841i = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.helper.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ImmVideoHelper.m();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f48843b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f48846e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f48847f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f48848g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f48842a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f48844c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f48845d = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.helper.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ImmVideoHelper.v();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ImmVideoHelper a() {
            return (ImmVideoHelper) ImmVideoHelper.f48841i.getValue();
        }
    }

    public ImmVideoHelper() {
        this.f48846e = true;
        this.f48847f = true;
        this.f48848g = true;
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        this.f48846e = bVar.b().getBoolean("k_imm_video_guide", true);
        this.f48848g = bVar.b().getBoolean("k_short_tv_guide", true);
        this.f48847f = bVar.b().getBoolean("k_imm_video_guide_from_trending", true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(FragmentActivity fragmentActivity, ImmVideoHelper immVideoHelper) {
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
        immVideoHelper.f48843b = i11;
        lg.a.C0828a.f(lg.a.f68839a, "ImmVideoHelper", "on get navigation gesture height = " + i11, false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImmVideoHelper m() {
        return new ImmVideoHelper();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(List list) {
        String url;
        if (list == null || !(!list.isEmpty()) || (url = ((Video) list.get(0)).getUrl()) == null) {
            return;
        }
        ORPlayerPreloadManager.f48409i.a().j(url, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 v() {
        return new b0();
    }

    public final void f() {
        this.f48842a.clear();
    }

    public final List g() {
        return this.f48842a;
    }

    public final int h() {
        return this.f48843b;
    }

    public final b0 i() {
        return (b0) this.f48845d.getValue();
    }

    public final Map j() {
        return this.f48844c;
    }

    public final void k(final FragmentActivity activity) {
        Intrinsics.h(activity, "activity");
        if (Build.VERSION.SDK_INT < 29) {
            this.f48843b = 0;
            return;
        }
        if (com.blankj.utilcode.util.d.a() > 50) {
            lg.a.C0828a.f(lg.a.f68839a, "ImmVideoHelper", "is open navigation bar", false, 4, null);
            this.f48843b = 0;
            return;
        }
        Window window = activity.getWindow();
        View decorView = window != null ? window.getDecorView() : null;
        if (decorView != null) {
            decorView.post(new Runnable() { // from class: com.transsion.postdetail.helper.d
                @Override // java.lang.Runnable
                public final void run() {
                    ImmVideoHelper.l(activity, this);
                }
            });
        }
    }

    public final boolean n() {
        return this.f48846e;
    }

    public final boolean o() {
        return this.f48847f;
    }

    public final void p() {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new ImmVideoHelper$loadCache$1(this, null), 3, null);
    }

    public final void r(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new ImmVideoHelper$saveCache$1(list, this, null), 3, null);
    }

    public final void s(PostSubjectItem data) {
        List<Video> video;
        Intrinsics.h(data, "data");
        Media media = data.getMedia();
        if (media == null || (video = media.getVideo()) == null || !(!video.isEmpty())) {
            return;
        }
        f();
        this.f48842a.add(PostSubjectItem.INSTANCE.a(data));
    }

    public final void t() {
        lg.a.C0828a.v(lg.a.f68839a, "ImmVideoPlayer", "-- setVideoGuideShown", false, 4, null);
        this.f48846e = false;
        com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("k_imm_video_guide", false);
    }

    public final void u() {
        lg.a.C0828a.v(lg.a.f68839a, "ImmVideoPlayer", "-- setVideoGuideShownFromTrending", false, 4, null);
        this.f48847f = false;
        com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("k_imm_video_guide_from_trending", false);
    }
}
