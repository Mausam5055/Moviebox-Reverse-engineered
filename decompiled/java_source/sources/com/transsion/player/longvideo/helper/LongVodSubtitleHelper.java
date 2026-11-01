package com.transsion.player.longvideo.helper;

import android.app.Application;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.subtitle.R$string;
import com.transsion.subtitle.VideoSubtitleControl;
import com.transsion.subtitle.helper.LocalVideoUiType;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes6.dex */
public final class LongVodSubtitleHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ho.j f47939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f47940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f47941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final x f47942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function1 f47943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f47944f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List f47945g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final VideoSubtitleControl f47946h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f47947i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private DownloadBean f47948j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private go.a f47949k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f47950l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f47951m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ViewGroup f47952n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final o0 f47953o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final kotlinx.coroutines.n0 f47954p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Lazy f47955q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Lazy f47956r;

    public static final class a implements hu.a {
        a() {
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f47958a;

        static {
            int[] iArr = new int[LongVodUiType.values().length];
            try {
                iArr[LongVodUiType.LAND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LongVodUiType.PORTRAIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f47958a = iArr;
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f47959a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47959a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f47959a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f47959a.invoke(obj);
        }
    }

    public LongVodSubtitleHelper(ho.j viewBinding, String str, List dubs, x callback, Function1 function1, boolean z10) {
        Intrinsics.h(viewBinding, "viewBinding");
        Intrinsics.h(dubs, "dubs");
        Intrinsics.h(callback, "callback");
        this.f47939a = viewBinding;
        this.f47940b = str;
        this.f47941c = dubs;
        this.f47942d = callback;
        this.f47943e = function1;
        this.f47944f = z10;
        this.f47945g = new ArrayList();
        this.f47950l = true;
        this.f47954p = kotlinx.coroutines.o0.a(y0.b());
        this.f47955q = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.helper.h0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LongVodSubtitleHelper.k0();
            }
        });
        this.f47956r = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.helper.j0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LongVodSubtitleHelper.g0();
            }
        });
        Context context = viewBinding.getRoot().getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        o0 o0Var = (o0) new v0((FragmentActivity) context).a(o0.class);
        this.f47953o = o0Var;
        this.f47950l = com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("subtitle_land_guide", true);
        Context context2 = viewBinding.getRoot().getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        VideoSubtitleControl videoSubtitleControl = new VideoSubtitleControl((FragmentActivity) context2, str, com.transsion.baselib.helper.d.f43265a.d(), this.f47941c, new Function1() { // from class: com.transsion.player.longvideo.helper.k0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.r(((Boolean) obj).booleanValue());
            }
        }, new Function2() { // from class: com.transsion.player.longvideo.helper.l0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return LongVodSubtitleHelper.s(this.f48005a, ((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue());
            }
        }, new Function3() { // from class: com.transsion.player.longvideo.helper.m0
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return LongVodSubtitleHelper.t(this.f48007a, (String) obj, (String) obj2, ((Integer) obj3).intValue());
            }
        }, new Function1() { // from class: com.transsion.player.longvideo.helper.n0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.u(this.f48009a, (DubsInfo) obj);
            }
        }, new Function1() { // from class: com.transsion.player.longvideo.helper.z
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.v(this.f48034a, (List) obj);
            }
        }, new Function1() { // from class: com.transsion.player.longvideo.helper.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.w(this.f47960a, (String) obj);
            }
        }, new Function2() { // from class: com.transsion.player.longvideo.helper.b0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return LongVodSubtitleHelper.x(this.f47973a, (String) obj, (String) obj2);
            }
        });
        videoSubtitleControl.P(LocalVideoUiType.MIDDLE);
        videoSubtitleControl.i0(new a());
        videoSubtitleControl.e0(new Function1() { // from class: com.transsion.player.longvideo.helper.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.P(this.f47983a, (String) obj);
            }
        });
        this.f47946h = videoSubtitleControl;
        if (this.f47944f) {
            this.f47950l = false;
        }
        androidx.p009lifecycle.b0 b0VarB = o0Var.b();
        Context context3 = viewBinding.getRoot().getContext();
        Intrinsics.f(context3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        b0VarB.j((FragmentActivity) context3, new c(new Function1() { // from class: com.transsion.player.longvideo.helper.i0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.q(this.f47997a, (eu.a) obj);
            }
        }));
    }

    public /* synthetic */ LongVodSubtitleHelper(ho.j jVar, String str, List list, x xVar, Function1 function1, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(jVar, str, list, xVar, function1, (i11 & 32) != 0 ? true : z10);
    }

    private final void E() {
        if (this.f47945g.isEmpty() && this.f47950l) {
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
            if (bVar.b().getBoolean("subtitle_is_search_downloaded", false)) {
                this.f47950l = false;
                bVar.b().putBoolean("subtitle_land_guide", false);
            } else {
                this.f47950l = false;
                bVar.b().putBoolean("subtitle_land_guide", false);
                this.f47942d.b(true, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F(DownloadBean downloadBean) {
        this.f47947i = true;
        lg.a.f68839a.c(com.transsion.baselib.report.a.f43340a.a(), "流媒体，开始播放检测字幕，name:" + downloadBean.getTotalTitleName() + " subjectId:" + downloadBean.getSubjectId() + " subtitleResId:" + downloadBean.getSubtitleResId(), true);
        com.transsion.subtitle.h.f54887a.b().e(downloadBean, new Function1() { // from class: com.transsion.player.longvideo.helper.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.G(this.f47987a, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(LongVodSubtitleHelper longVodSubtitleHelper, boolean z10) {
        if (!z10 && longVodSubtitleHelper.f47945g.isEmpty()) {
            longVodSubtitleHelper.f47939a.getRoot().post(new Runnable() { // from class: com.transsion.player.longvideo.helper.e0
                @Override // java.lang.Runnable
                public final void run() {
                    LongVodSubtitleHelper.H();
                }
            });
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H() {
    }

    private final ImageView J() {
        return null;
    }

    private final TextView K() {
        if (this.f47944f) {
            return this.f47939a.f64618h.f64659x;
        }
        return null;
    }

    private final TextView L() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UGCVideoDetailPlayDao N() {
        return (UGCVideoDetailPlayDao) this.f47956r.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VideoDetailPlayDao O() {
        return (VideoDetailPlayDao) this.f47955q.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P(LongVodSubtitleHelper longVodSubtitleHelper, String str) {
        longVodSubtitleHelper.f47942d.f(str);
        return Unit.f67061a;
    }

    private final void Q(DownloadBean downloadBean) {
        kotlinx.coroutines.k.d(this.f47954p, null, null, new LongVodSubtitleHelper$loadFromDB$1(downloadBean, this, null), 3, null);
    }

    private final void U(View view) {
        ho.k kVar = this.f47939a.f64618h;
        View view2 = this.f47951m;
        if (view2 != null) {
            jg.c.g(view2);
        }
    }

    private final void V(View view, boolean z10) {
        this.f47942d.b(true, true);
        x xVar = this.f47942d;
        String string = Utils.a().getString(z10 ? R$string.subtitle_turn_on_toast : R$string.subtitle_turn_off_toast);
        Intrinsics.g(string, "getString(...)");
        xVar.c(string);
    }

    private final void a0(VideoSubtitleControl videoSubtitleControl) {
        LocalVideoUiType localVideoUiType = LocalVideoUiType.MIDDLE;
        TextView textViewK = K();
        ho.j jVar = this.f47939a;
        videoSubtitleControl.b0(localVideoUiType, textViewK, jVar.f64630t, jVar.f64629s, jVar.f64615e, false);
        videoSubtitleControl.k0(new Function1() { // from class: com.transsion.player.longvideo.helper.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.b0(this.f48033a, ((Boolean) obj).booleanValue());
            }
        });
        videoSubtitleControl.F(localVideoUiType, new Function2() { // from class: com.transsion.player.longvideo.helper.f0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return LongVodSubtitleHelper.c0(this.f47991a, (View) obj, ((Boolean) obj2).booleanValue());
            }
        }, new Function1() { // from class: com.transsion.player.longvideo.helper.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LongVodSubtitleHelper.d0(this.f47993a, (View) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b0(LongVodSubtitleHelper longVodSubtitleHelper, boolean z10) {
        View viewI = longVodSubtitleHelper.I();
        if (viewI != null) {
            viewI.setVisibility(z10 ? 0 : 8);
        }
        ImageView imageViewJ = longVodSubtitleHelper.J();
        if (imageViewJ != null) {
            imageViewJ.setVisibility(z10 ? 8 : 0);
        }
        TextView textViewL = longVodSubtitleHelper.L();
        if (textViewL != null) {
            textViewL.setText(Utils.a().getString(z10 ? com.transsion.postdetail.R$string.play_loading : com.transsion.postdetail.R$string.turn_on_short));
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c0(LongVodSubtitleHelper longVodSubtitleHelper, View switchView, boolean z10) {
        Intrinsics.h(switchView, "switchView");
        longVodSubtitleHelper.V(switchView, z10);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d0(LongVodSubtitleHelper longVodSubtitleHelper, View settingView) {
        Intrinsics.h(settingView, "settingView");
        longVodSubtitleHelper.U(settingView);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UGCVideoDetailPlayDao g0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VideoDetailPlayDao k0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).D1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q(LongVodSubtitleHelper longVodSubtitleHelper, eu.a aVar) {
        VideoSubtitleControl videoSubtitleControl = longVodSubtitleHelper.f47946h;
        Intrinsics.e(aVar);
        videoSubtitleControl.O(aVar);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r(boolean z10) {
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s(LongVodSubtitleHelper longVodSubtitleHelper, boolean z10, boolean z11) {
        if (z10) {
            longVodSubtitleHelper.f47942d.b(true, z11);
        } else {
            longVodSubtitleHelper.f47942d.b(false, true);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t(LongVodSubtitleHelper longVodSubtitleHelper, String lanName, String lan, int i11) {
        Intrinsics.h(lanName, "lanName");
        Intrinsics.h(lan, "lan");
        longVodSubtitleHelper.f47953o.d().n(new Pair(lanName, lan));
        longVodSubtitleHelper.f47942d.g(lanName, lan, i11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u(LongVodSubtitleHelper longVodSubtitleHelper, DubsInfo it) {
        Intrinsics.h(it, "it");
        Function1 function1 = longVodSubtitleHelper.f47943e;
        if (function1 != null) {
            function1.invoke(it);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v(LongVodSubtitleHelper longVodSubtitleHelper, List list) {
        Intrinsics.h(list, "list");
        longVodSubtitleHelper.f47953o.c().n(list);
        longVodSubtitleHelper.f47942d.e(list);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w(LongVodSubtitleHelper longVodSubtitleHelper, String str) {
        x xVar = longVodSubtitleHelper.f47942d;
        if (str == null) {
            str = "";
        }
        xVar.c(str);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x(LongVodSubtitleHelper longVodSubtitleHelper, String str, String str2) {
        longVodSubtitleHelper.f47942d.d(str, str2);
        return Unit.f67061a;
    }

    public final View I() {
        return null;
    }

    public final Map M() {
        return this.f47946h.G();
    }

    public final void R() {
        this.f47946h.N();
    }

    public final void S() {
        DownloadBean downloadBean;
        if (this.f47947i || (downloadBean = this.f47948j) == null) {
            return;
        }
        this.f47947i = true;
        lg.a.f68839a.c(com.transsion.baselib.report.a.f43340a.a(), "流媒体，网络连接成功开始检测字幕，name:" + downloadBean.getTotalTitleName() + " subjectId:" + downloadBean.getSubjectId() + " subtitleResId:" + downloadBean.getSubtitleResId(), true);
        com.transsion.subtitle.h.b.a(com.transsion.subtitle.h.f54887a.b(), downloadBean, null, 2, null);
    }

    public final void T(go.a bean, go.c playStream) {
        UGCVideoBelongToCollection belongToCollection;
        UGCVideoBelongToCollection belongToCollection2;
        UGCVideoBelongToCollection belongToCollection3;
        Intrinsics.h(bean, "bean");
        Intrinsics.h(playStream, "playStream");
        this.f47947i = false;
        this.f47949k = bean;
        if (bean.d() != null) {
            this.f47948j = bean.d();
        } else {
            DownloadBean downloadBean = new DownloadBean(playStream.h(), playStream.c(), bean.p(), "", StringsKt.x(playStream.g()), null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, bean.e(), bean.l(), 0, 0, 0, 0, 0, 0, 0, bean.o(), this.f47940b, null, bean.p(), 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -1477181472, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            downloadBean.setStream(playStream.k());
            downloadBean.setStreamVideoDetail(true);
            UGCVideo uGCVideoU = bean.u();
            downloadBean.setUgcVideoId(uGCVideoU != null ? uGCVideoU.getUgcVideoId() : null);
            UGCVideo uGCVideoU2 = bean.u();
            downloadBean.setUgcVideoCollectionId((uGCVideoU2 == null || (belongToCollection3 = uGCVideoU2.getBelongToCollection()) == null) ? null : belongToCollection3.getCollectionId());
            UGCVideo uGCVideoU3 = bean.u();
            downloadBean.setUgcVideoName(uGCVideoU3 != null ? uGCVideoU3.getTitle() : null);
            UGCVideo uGCVideoU4 = bean.u();
            downloadBean.setUgcVideoCollectionName((uGCVideoU4 == null || (belongToCollection2 = uGCVideoU4.getBelongToCollection()) == null) ? null : belongToCollection2.getCollectionName());
            UGCVideo uGCVideoU5 = bean.u();
            downloadBean.setUgcVideoPosition((uGCVideoU5 == null || (belongToCollection = uGCVideoU5.getBelongToCollection()) == null) ? null : belongToCollection.getPosition());
            UGCVideo uGCVideoU6 = bean.u();
            downloadBean.setUgcVideoType(uGCVideoU6 != null ? uGCVideoU6.getCategory() : null);
            downloadBean.setOps(bean.q());
            downloadBean.setSubtitleIdType(playStream.d());
            this.f47948j = downloadBean;
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        String strA = com.transsion.baselib.report.a.f43340a.a();
        DownloadBean downloadBean2 = this.f47948j;
        String ugcVideoId = downloadBean2 != null ? downloadBean2.getUgcVideoId() : null;
        DownloadBean downloadBean3 = this.f47948j;
        c0828a.c(strA, "subtitle onSetNewDataSource，ugcVideoId:" + ugcVideoId + " CollectionId:" + (downloadBean3 != null ? downloadBean3.getUgcVideoCollectionId() : null), true);
        this.f47946h.j0(this.f47948j);
        DownloadBean downloadBean4 = this.f47948j;
        Intrinsics.e(downloadBean4);
        Q(downloadBean4);
    }

    public final void W(LongVodUiType uiType) {
        LocalVideoUiType localVideoUiType;
        Intrinsics.h(uiType, "uiType");
        if (uiType == LongVodUiType.LAND) {
            E();
        }
        int i11 = b.f47958a[uiType.ordinal()];
        if (i11 != 1) {
            localVideoUiType = i11 != 2 ? LocalVideoUiType.MIDDLE : LocalVideoUiType.PORTRAIT;
        } else {
            localVideoUiType = LocalVideoUiType.LAND;
        }
        this.f47946h.P(localVideoUiType);
    }

    public final void X(long j11) {
        this.f47946h.S(j11);
    }

    public final void Y() {
        this.f47946h.U();
    }

    public final void Z() {
        VideoSubtitleControl videoSubtitleControl = this.f47946h;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.Z();
        }
    }

    public final void e0(boolean z10) {
        this.f47946h.d0(z10);
    }

    public final void f0(ViewGroup viewGroup) {
        this.f47952n = viewGroup;
        a0(this.f47946h);
    }

    public final void h0(List dubs) {
        Intrinsics.h(dubs, "dubs");
        this.f47941c = dubs;
        this.f47946h.r0(dubs);
    }

    public final void i0(long j11) {
        this.f47946h.s0(j11);
    }

    public final void j0(float f11) {
        this.f47946h.t0(f11);
    }
}
