package com.transsion.ugcvideodetail.hepler;

import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$string;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsion.play.detail.widget.PlayDetailResTabTitleView;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDetailParams;
import com.transsion.ugcvideodetail.api.bean.UGCVideoInteractiveInfo;
import com.transsion.ugcvideodetail.fragment.UGCVideoDetailCommentFragment;
import com.transsion.ugcvideodetail.fragment.UGCVideoDetailForYouFragment;
import com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel;
import com.transsion.user.action.sync.event.CommentEvent;
import com.transsion.web.api.WebConstants;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final a f56332r = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f56333a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final UGCVideoDetailViewModel f56334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final UGCVideo f56335c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final DownloadBean f56336d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MagicIndicator f56337e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ViewPager2 f56338f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f56339g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final UGCVideoPlayFrom f56340h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f56341i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f56342j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final AppBarLayout f56343k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ORCommonNavigator f56344l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private b f56345m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private FragmentStateAdapter f56346n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f56347o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f56348p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final List f56349q;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final class b extends ik.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ViewPager2 f56350b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f56351c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ e f56352d;

        public b(e eVar, ViewPager2 viewPager2, List tabList) {
            Intrinsics.h(tabList, "tabList");
            this.f56352d = eVar;
            this.f56350b = viewPager2;
            this.f56351c = tabList;
        }

        private final LinearLayout.LayoutParams j() {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            layoutParams.setMarginStart(dk.a.b(6));
            layoutParams.setMarginEnd(dk.a.b(2));
            return layoutParams;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void k(int i11, e eVar, PlayDetailResTabTitleView playDetailResTabTitleView, b bVar, View view) {
            if (i11 == 1 && eVar.f56348p) {
                eVar.f56348p = false;
                playDetailResTabTitleView.setDotVisibility(false);
                com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("key_subj_comment_dot", false);
            }
            ViewPager2 viewPager2 = bVar.f56350b;
            if (viewPager2 != null) {
                viewPager2.setCurrentItem(i11, true);
            }
        }

        @Override // j00.a
        public int a() {
            return this.f56352d.f56340h == UGCVideoPlayFrom.LOCAL_VIDEO ? this.f56352d.f56349q.size() - 1 : this.f56352d.f56349q.size();
        }

        @Override // j00.a
        public j00.c b(Context context) {
            Intrinsics.h(context, "context");
            if (this.f56352d.f56340h == UGCVideoPlayFrom.LOCAL_VIDEO) {
                LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
                linePagerIndicator.setColors(0);
                return linePagerIndicator;
            }
            LinePagerIndicator linePagerIndicator2 = new LinePagerIndicator(context);
            linePagerIndicator2.setMode(1);
            linePagerIndicator2.setLineHeight(com.blankj.utilcode.util.i.e(3.0f));
            linePagerIndicator2.setStartInterpolator(new AccelerateInterpolator());
            linePagerIndicator2.setEndInterpolator(new DecelerateInterpolator(2.0f));
            linePagerIndicator2.setColors(-1, -1, -1);
            return linePagerIndicator2;
        }

        @Override // j00.a
        public j00.d c(Context context, final int i11) {
            String strValueOf;
            UGCVideoInteractiveInfo interactiveInfo;
            String commentNum;
            Integer numV;
            Intrinsics.h(context, "context");
            final PlayDetailResTabTitleView playDetailResTabTitleView = new PlayDetailResTabTitleView(context);
            final e eVar = this.f56352d;
            if (i11 == 1) {
                playDetailResTabTitleView.setDotVisibility(eVar.f56348p);
                UGCVideo uGCVideo = eVar.f56335c;
                int iIntValue = (uGCVideo == null || (interactiveInfo = uGCVideo.getInteractiveInfo()) == null || (commentNum = interactiveInfo.getCommentNum()) == null || (numV = StringsKt.v(commentNum)) == null) ? 0 : numV.intValue();
                String str = "";
                if (iIntValue > 99) {
                    strValueOf = "99+";
                } else {
                    strValueOf = iIntValue <= 0 ? "" : String.valueOf(iIntValue);
                }
                Object obj = this.f56351c.get(i11);
                if (strValueOf.length() != 0) {
                    str = "(" + strValueOf + ")";
                }
                playDetailResTabTitleView.setTitle(obj + str);
            } else {
                playDetailResTabTitleView.setTitle((String) this.f56351c.get(i11));
            }
            playDetailResTabTitleView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.hepler.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    e.b.k(i11, eVar, playDetailResTabTitleView, this, view);
                }
            });
            return playDetailResTabTitleView;
        }

        @Override // ik.a
        public LinearLayout.LayoutParams h(Context context, int i11) {
            Intrinsics.h(context, "context");
            return j();
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            super.onPageScrollStateChanged(i11);
            MagicIndicator magicIndicator = e.this.f56337e;
            if (magicIndicator != null) {
                magicIndicator.onPageScrollStateChanged(i11);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            super.onPageScrolled(i11, f11, i12);
            MagicIndicator magicIndicator = e.this.f56337e;
            if (magicIndicator != null) {
                magicIndicator.onPageScrolled(i11, f11, i12);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            super.onPageSelected(i11);
            MagicIndicator magicIndicator = e.this.f56337e;
            if (magicIndicator != null) {
                magicIndicator.onPageSelected(i11);
            }
            e.this.f56347o = i11;
            if (i11 == 1) {
                e.this.t();
            }
        }
    }

    public static final class d extends FragmentStateAdapter {
        d(Fragment fragment) {
            super(fragment);
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public Fragment createFragment(int i11) {
            String str;
            String str2;
            String str3;
            String str4;
            String str5;
            DownloadBean downloadBean;
            UGCVideoBelongToCollection belongToCollection;
            UGCVideo uGCVideo = e.this.f56335c;
            String name = null;
            if (uGCVideo == null || (ops = uGCVideo.getOps()) == null) {
                DownloadBean downloadBean2 = e.this.f56336d;
                if (downloadBean2 != null) {
                    String ops = downloadBean2.getOps();
                    str = ops;
                } else {
                    str = null;
                }
            } else {
                str = ops;
            }
            UGCVideo uGCVideo2 = e.this.f56335c;
            if (uGCVideo2 == null || (ugcVideoId = uGCVideo2.getUgcVideoId()) == null) {
                DownloadBean downloadBean3 = e.this.f56336d;
                if (downloadBean3 != null) {
                    String ugcVideoId = downloadBean3.getUgcVideoId();
                    str2 = ugcVideoId;
                } else {
                    str2 = null;
                }
            } else {
                str2 = ugcVideoId;
            }
            UGCVideo uGCVideo3 = e.this.f56335c;
            String collectionId = (uGCVideo3 == null || (belongToCollection = uGCVideo3.getBelongToCollection()) == null) ? null : belongToCollection.getCollectionId();
            UGCVideo uGCVideo4 = e.this.f56335c;
            if (uGCVideo4 == null || (subjectId = uGCVideo4.getSubjectId()) == null) {
                DownloadBean downloadBean4 = e.this.f56336d;
                if (downloadBean4 != null) {
                    String subjectId = downloadBean4.getSubjectId();
                    str3 = subjectId;
                } else {
                    str3 = null;
                }
            } else {
                str3 = subjectId;
            }
            UGCVideo uGCVideo5 = e.this.f56335c;
            if (uGCVideo5 == null || (ugcVideoType = uGCVideo5.getCategory()) == null) {
                DownloadBean downloadBean5 = e.this.f56336d;
                if (downloadBean5 != null) {
                    String ugcVideoType = downloadBean5.getUgcVideoType();
                    str4 = ugcVideoType;
                } else {
                    str4 = null;
                }
            } else {
                str4 = ugcVideoType;
            }
            UGCVideoDetailParams uGCVideoDetailParams = new UGCVideoDetailParams(str, str2, collectionId, str3, str4);
            if (e.this.f56340h == UGCVideoPlayFrom.ON_LINE_VIDEO) {
                str5 = "TYPE_ONLINE";
            } else {
                DownloadBean downloadBean6 = e.this.f56336d;
                str5 = (downloadBean6 == null || !downloadBean6.isInnerRes()) ? "TYPE_LOCAL_OUT" : "TYPE_LOCAL_INNER";
            }
            if (i11 != 0) {
                UGCVideoDetailCommentFragment uGCVideoDetailCommentFragmentA = UGCVideoDetailCommentFragment.INSTANCE.a();
                e eVar = e.this;
                uGCVideoDetailCommentFragmentA.setArguments(androidx.core.os.d.b(TuplesKt.a("page_name", eVar.f56339g), TuplesKt.a("video_params", uGCVideoDetailParams), TuplesKt.a(WebConstants.PAGE_FROM, eVar.f56339g), TuplesKt.a("from_opt_id", eVar.f56341i)));
                return uGCVideoDetailCommentFragmentA;
            }
            UGCVideoDetailForYouFragment uGCVideoDetailForYouFragmentA = UGCVideoDetailForYouFragment.INSTANCE.a();
            e eVar2 = e.this;
            Pair pairA = TuplesKt.a("page_name", eVar2.f56339g);
            Pair pairA2 = TuplesKt.a("video_params", uGCVideoDetailParams);
            Pair pairA3 = TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_TYPE, str5);
            if (Intrinsics.c(str5, "TYPE_LOCAL_OUT") && (downloadBean = eVar2.f56336d) != null) {
                name = downloadBean.getName();
            }
            uGCVideoDetailForYouFragmentA.setArguments(androidx.core.os.d.b(pairA, pairA2, pairA3, TuplesKt.a("content_name", name), TuplesKt.a("from_opt_id", eVar2.f56341i)));
            return uGCVideoDetailForYouFragmentA;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return e.this.f56340h == UGCVideoPlayFrom.LOCAL_VIDEO ? e.this.f56349q.size() - 1 : e.this.f56349q.size();
        }
    }

    public e(Fragment fragment, UGCVideoDetailViewModel uGCVideoDetailViewModel, UGCVideo uGCVideo, DownloadBean downloadBean, MagicIndicator magicIndicator, ViewPager2 viewPager2, String str, UGCVideoPlayFrom playFrom, String str2, int i11, AppBarLayout appBarLayout) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(playFrom, "playFrom");
        this.f56333a = fragment;
        this.f56334b = uGCVideoDetailViewModel;
        this.f56335c = uGCVideo;
        this.f56336d = downloadBean;
        this.f56337e = magicIndicator;
        this.f56338f = viewPager2;
        this.f56339g = str;
        this.f56340h = playFrom;
        this.f56341i = str2;
        this.f56342j = i11;
        this.f56343k = appBarLayout;
        this.f56347o = RangesKt.m(i11, 0, playFrom == UGCVideoPlayFrom.LOCAL_VIDEO ? 0 : 1);
        this.f56349q = CollectionsKt.o(Utils.a().getString(R$string.for_you), Utils.a().getString(R$string.name_comments));
        n();
        q();
        p();
        o();
    }

    private final void m() {
        ViewPager2 viewPager2 = this.f56338f;
        if (viewPager2 != null) {
            viewPager2.registerOnPageChangeCallback(new c());
        }
        ViewPager2 viewPager3 = this.f56338f;
        if (viewPager3 != null) {
            viewPager3.setCurrentItem(this.f56347o, false);
        }
    }

    private final void n() {
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final void o() {
        ORCommonNavigator oRCommonNavigator = new ORCommonNavigator(this.f56333a.requireContext());
        oRCommonNavigator.setFollowTouch(true);
        b bVar = new b(this, this.f56338f, this.f56349q);
        this.f56345m = bVar;
        oRCommonNavigator.setAdapter(bVar);
        this.f56344l = oRCommonNavigator;
        MagicIndicator magicIndicator = this.f56337e;
        if (magicIndicator != null) {
            magicIndicator.setNavigator(oRCommonNavigator);
        }
        MagicIndicator magicIndicator2 = this.f56337e;
        if (magicIndicator2 != null) {
            magicIndicator2.onPageSelected(this.f56347o);
        }
    }

    private final void p() {
        d dVar = new d(this.f56333a);
        this.f56346n = dVar;
        ViewPager2 viewPager2 = this.f56338f;
        if (viewPager2 != null) {
            viewPager2.setAdapter(dVar);
        }
        ViewPager2 viewPager3 = this.f56338f;
        if (viewPager3 != null) {
            viewPager3.setUserInputEnabled(false);
        }
        m();
    }

    private final void q() {
        Fragment fragment = this.f56333a;
        Function1 function1 = new Function1() { // from class: com.transsion.ugcvideodetail.hepler.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return e.r(this.f56331a, (CommentEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = CommentEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(fragment, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r(e eVar, CommentEvent value) {
        String strValueOf;
        UGCVideoInteractiveInfo interactiveInfo;
        String commentNum;
        Integer numV;
        Intrinsics.h(value, "value");
        try {
            UGCVideo uGCVideo = eVar.f56335c;
            if (Intrinsics.c(uGCVideo != null ? uGCVideo.getUgcVideoId() : null, value.getSubjectId())) {
                UGCVideo uGCVideo2 = eVar.f56335c;
                int iIntValue = ((uGCVideo2 == null || (interactiveInfo = uGCVideo2.getInteractiveInfo()) == null || (commentNum = interactiveInfo.getCommentNum()) == null || (numV = StringsKt.v(commentNum)) == null) ? 0 : numV.intValue()) + 1;
                String str = "";
                if (iIntValue > 99) {
                    strValueOf = "99+";
                } else {
                    strValueOf = iIntValue <= 0 ? "" : String.valueOf(iIntValue);
                }
                Object obj = eVar.f56349q.get(1);
                if (strValueOf.length() != 0) {
                    str = "(" + strValueOf + ")";
                }
                String str2 = obj + str;
                ORCommonNavigator oRCommonNavigator = eVar.f56344l;
                j00.d pagerTitleView = oRCommonNavigator != null ? oRCommonNavigator.getPagerTitleView(1) : null;
                PlayDetailResTabTitleView playDetailResTabTitleView = pagerTitleView instanceof PlayDetailResTabTitleView ? (PlayDetailResTabTitleView) pagerTitleView : null;
                if (playDetailResTabTitleView != null) {
                    playDetailResTabTitleView.setTitle(str2);
                }
            }
        } catch (Exception e11) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail " + e11.getMessage(), false, 2, null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t() {
        AppBarLayout appBarLayout = this.f56343k;
        if (appBarLayout != null) {
            appBarLayout.setExpanded(false, true);
        }
    }

    public final void s(boolean z10) {
        if (com.transsion.baseui.util.c.f43504a.a(90991, 500L) || !this.f56333a.isAdded() || this.f56333a.isDetached() || this.f56333a.isRemoving()) {
            return;
        }
        List<androidx.p010savedstate.e> listY0 = this.f56333a.getChildFragmentManager().y0();
        Intrinsics.g(listY0, "getFragments(...)");
        for (androidx.p010savedstate.e eVar : listY0) {
            if (eVar instanceof ix.a) {
                ((ix.a) eVar).onScreenChange(z10);
            }
        }
    }
}
