package com.transsion.home.fragment.rank;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.a0;
import androidx.compose.foundation.layout.d0;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.f3;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.s;
import androidx.compose.runtime.u2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.layout.t;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.ComposeView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.StateView;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.view.r;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.home.R$color;
import com.transsion.home.R$id;
import com.transsion.home.R$string;
import com.transsion.home.bean.CategoryType;
import com.transsion.home.bean.RankAllData;
import com.transsion.home.viewmodel.RankAllViewModel;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gl.u;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import o0.x;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0007\u0018\u0000 >2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b\"\u0010#J'\u0010'\u001a\u00020\u00052\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u000f0$2\b\u0010&\u001a\u0004\u0018\u00010\fH\u0007¢\u0006\u0004\b'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010:\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010=\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006@²\u0006\u0010\u0010?\u001a\u0004\u0018\u00010\f8\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/transsion/home/fragment/rank/RankAllFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lgl/u;", "<init>", "()V", "", "C0", "E0", "Landroid/view/View;", "getNoNetworkView", "()Landroid/view/View;", "v0", "", "getPageName", "()Ljava/lang/String;", "Lcom/transsion/home/bean/CategoryType;", "category", "", RequestParameters.POSITION, "D0", "(Lcom/transsion/home/bean/CategoryType;I)V", "Landroid/view/LayoutInflater;", "inflater", "z0", "(Landroid/view/LayoutInflater;)Lgl/u;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "startLoading", "hideLoading", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "", "items", "defaultCateGory", "i0", "(Ljava/util/List;Ljava/lang/String;Landroidx/compose/runtime/i;I)V", "Lcom/transsion/home/viewmodel/RankAllViewModel;", "a", "Lcom/transsion/home/viewmodel/RankAllViewModel;", "viewModel", "Lcom/transsion/home/fragment/rank/RankListFragment;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/home/fragment/rank/RankListFragment;", "listFragment", "", "c", "Z", "hasRenderFirst", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/view/View;", "mErrorView", "e", "I", "tabId", "f", "Ljava/lang/String;", "rankingListId", "g", "currentCategory", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RankAllFragment extends BaseFragment<u> {

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f45194h = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private RankAllViewModel viewModel;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private RankListFragment listFragment;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean hasRenderFirst;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private View mErrorView;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int tabId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String rankingListId;

    /* JADX INFO: renamed from: com.transsion.home.fragment.rank.RankAllFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RankAllFragment a(String str, Integer num, String str2, String str3) {
            Bundle bundle = new Bundle();
            bundle.putString("category", str);
            bundle.putInt("tabId", num != null ? num.intValue() : 0);
            bundle.putString("defaultCategory", str2);
            bundle.putString("rankingListId", str3);
            RankAllFragment rankAllFragment = new RankAllFragment();
            rankAllFragment.setArguments(bundle);
            return rankAllFragment;
        }
    }

    static final class b implements Function3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CategoryType f45201a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RankAllFragment f45202b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f45203c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ i1 f45204d;

        b(CategoryType categoryType, RankAllFragment rankAllFragment, int i11, i1 i1Var) {
            this.f45201a = categoryType;
            this.f45202b = rankAllFragment;
            this.f45203c = i11;
            this.f45204d = i1Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(CategoryType categoryType, RankAllFragment rankAllFragment, int i11, i1 i1Var) {
            if (!Intrinsics.c(RankAllFragment.j0(i1Var), categoryType.getType())) {
                RankAllFragment.k0(i1Var, categoryType.getType());
                RankListFragment rankListFragment = rankAllFragment.listFragment;
                if (rankListFragment != null) {
                    rankListFragment.startLoading();
                }
                RankAllViewModel rankAllViewModel = rankAllFragment.viewModel;
                if (rankAllViewModel != null) {
                    rankAllViewModel.k(RankAllFragment.j0(i1Var), rankAllFragment.tabId, rankAllFragment.rankingListId);
                }
                rankAllFragment.D0(categoryType, i11);
            }
            return Unit.f67061a;
        }

        public final void b(androidx.compose.foundation.lazy.b item, androidx.compose.runtime.i iVar, int i11) {
            Intrinsics.h(item, "$this$item");
            if ((i11 & 17) == 16 && iVar.h()) {
                iVar.G();
                return;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1073765077, i11, -1, "com.transsion.home.fragment.rank.RankAllFragment.SetRankCategoryUI.<anonymous>.<anonymous>.<anonymous>.<anonymous> (RankAllFragment.kt:282)");
            }
            boolean zC = Intrinsics.c(RankAllFragment.j0(this.f45204d), this.f45201a.getType());
            int i12 = zC ? R$color.rank_all_list_background : R$color.rank_all_category_background;
            androidx.compose.ui.b.c cVarH = androidx.compose.ui.b.f4087a.h();
            androidx.compose.ui.f.a aVar = androidx.compose.ui.f.f4178a;
            androidx.compose.ui.f fVarB = BackgroundKt.b(SizeKt.p(SizeKt.d(aVar, 0.0f, 1, null), null, false, 3, null), i0.b.a(i12, iVar, 0), null, 2, null);
            float fG = o0.i.g(0);
            FragmentActivity activity = this.f45202b.getActivity();
            androidx.compose.ui.f fVarF = PaddingKt.f(fVarB, fG, o0.i.g((activity == null || !com.transsion.baseui.util.b.a(activity)) ? 16 : 20));
            iVar.P(-1224400529);
            boolean zA = iVar.A(this.f45201a) | iVar.A(this.f45202b) | iVar.c(this.f45203c);
            final CategoryType categoryType = this.f45201a;
            final RankAllFragment rankAllFragment = this.f45202b;
            final int i13 = this.f45203c;
            final i1 i1Var = this.f45204d;
            Object objY = iVar.y();
            if (zA || objY == androidx.compose.runtime.i.f3736a.a()) {
                objY = new Function0() { // from class: com.transsion.home.fragment.rank.i
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return RankAllFragment.b.c(categoryType, rankAllFragment, i13, i1Var);
                    }
                };
                iVar.p(objY);
            }
            iVar.K();
            androidx.compose.ui.f fVarD = ClickableKt.d(fVarF, false, null, null, (Function0) objY, 7, null);
            CategoryType categoryType2 = this.f45201a;
            t tVarB = a0.b(androidx.compose.foundation.layout.b.f2836a.c(), cVarH, iVar, 48);
            int iA = androidx.compose.runtime.g.a(iVar, 0);
            s sVarN = iVar.n();
            androidx.compose.ui.f fVarE = ComposedModifierKt.e(iVar, fVarD);
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
            f3.b(iVarA, tVarB, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            f3.b(iVarA, fVarE, companion.d());
            d0 d0Var = d0.f2849a;
            iVar.P(1353739126);
            if (zC) {
                BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.l(aVar, o0.i.g(3)), o0.i.g(16)), i0.b.a(com.tn.lib.widget.R$color.brand, iVar, 0), null, 2, null), iVar, 0);
            }
            iVar.K();
            int i14 = zC ? com.tn.lib.widget.R$color.brand : R$color.rank_all_category_text;
            String name = categoryType2.getName();
            if (name == null) {
                name = "";
            }
            TextKt.a(name, PaddingKt.g(aVar, o0.i.g(12), 0.0f, 2, null), i0.b.a(i14, iVar, 0), x.c(14), null, androidx.compose.ui.text.font.p.f6149b.c(), androidx.compose.ui.text.font.h.f6124b.b(), 0L, null, null, 0L, androidx.compose.ui.text.style.p.f6442a.b(), true, 2, 0, null, null, iVar, 199728, 3504, 116624);
            iVar.r();
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

    static final class c implements Function2 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RankAllData f45206b;

        c(RankAllData rankAllData) {
            this.f45206b = rankAllData;
        }

        /* JADX WARN: Code duplicated, block: B:43:0x0084  */
        /* JADX WARN: Code duplicated, block: B:45:0x0088  */
        public final void a(androidx.compose.runtime.i iVar, int i11) {
            String currentCategoryType;
            List<CategoryType> arrayList;
            List<CategoryType> categoryList;
            if ((i11 & 3) == 2 && iVar.h()) {
                iVar.G();
                return;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(45154986, i11, -1, "com.transsion.home.fragment.rank.RankAllFragment.initView.<anonymous>.<anonymous> (RankAllFragment.kt:134)");
            }
            Bundle arguments = RankAllFragment.this.getArguments();
            String string = arguments != null ? arguments.getString("defaultCategory") : null;
            if (string == null || string.length() == 0) {
                RankAllData rankAllData = this.f45206b;
                currentCategoryType = rankAllData != null ? rankAllData.getCurrentCategoryType() : null;
            } else {
                currentCategoryType = string;
            }
            if (string != null && string.length() != 0) {
                RankAllData rankAllData2 = this.f45206b;
                if (rankAllData2 == null || (categoryList = rankAllData2.getCategoryList()) == null) {
                    RankAllData rankAllData3 = this.f45206b;
                    currentCategoryType = rankAllData3 != null ? rankAllData3.getCurrentCategoryType() : null;
                } else {
                    List<CategoryType> list = categoryList;
                    if ((list instanceof Collection) && list.isEmpty()) {
                        RankAllData rankAllData4 = this.f45206b;
                        currentCategoryType = rankAllData4 != null ? rankAllData4.getCurrentCategoryType() : null;
                    } else {
                        Iterator<T> it = list.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                RankAllData rankAllData5 = this.f45206b;
                                currentCategoryType = rankAllData5 != null ? rankAllData5.getCurrentCategoryType() : null;
                            } else if (Intrinsics.c(((CategoryType) it.next()).getType(), currentCategoryType)) {
                            }
                        }
                    }
                }
            }
            RankAllFragment rankAllFragment = RankAllFragment.this;
            RankAllData rankAllData6 = this.f45206b;
            if (rankAllData6 == null || (arrayList = rankAllData6.getCategoryList()) == null) {
                arrayList = new ArrayList<>();
            }
            rankAllFragment.i0(arrayList, currentCategoryType, iVar, 0);
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

    public static final class d implements nh.n {
        d() {
        }

        @Override // nh.n
        public void onConnected() {
            nh.n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            View view;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (RankAllFragment.this.isResumed() && (view = RankAllFragment.this.mErrorView) != null && jg.c.i(view)) {
                View view2 = RankAllFragment.this.mErrorView;
                if (view2 != null) {
                    jg.c.g(view2);
                }
                RankAllFragment.this.lazyLoadData();
            }
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    static final class e implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f45208a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45208a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f45208a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45208a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(RankAllFragment rankAllFragment, View view) {
        FragmentActivity activity = rankAllFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B0(RankAllFragment rankAllFragment, RankAllData rankAllData) {
        ComposeView composeView;
        List<Subject> subjects;
        if (rankAllFragment.hasRenderFirst) {
            RankListFragment rankListFragment = rankAllFragment.listFragment;
            if (rankListFragment != null) {
                rankListFragment.hideLoading();
            }
        } else {
            rankAllFragment.hideLoading();
        }
        if (((rankAllData == null || (subjects = rankAllData.getSubjects()) == null) ? 0 : subjects.size()) <= 0) {
            rankAllFragment.E0();
            return Unit.f67061a;
        }
        if (!rankAllFragment.hasRenderFirst) {
            u mViewBinding = rankAllFragment.getMViewBinding();
            if (mViewBinding != null && (composeView = mViewBinding.f63850b) != null) {
                composeView.setContent(androidx.compose.runtime.internal.b.b(45154986, true, rankAllFragment.new c(rankAllData)));
            }
            rankAllFragment.hasRenderFirst = true;
        }
        RankListFragment rankListFragment2 = rankAllFragment.listFragment;
        if (rankListFragment2 != null) {
            rankListFragment2.k0(rankAllData);
        }
        hj.b logViewConfig = rankAllFragment.getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        return Unit.f67061a;
    }

    private final void C0() {
        setNetListener(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D0(CategoryType category, int position) {
        String type;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("event_type", "category_click");
        if (category == null || (type = category.getType()) == null) {
            type = "";
        }
        linkedHashMap.put("category", type);
        linkedHashMap.put(RequestParameters.POSITION, String.valueOf(position));
        hj.i.f64505a.p(getPageName(), linkedHashMap);
    }

    private final void E0() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.transsion.home.fragment.rank.e
            @Override // java.lang.Runnable
            public final void run() {
                RankAllFragment.F0(this.f45222a);
            }
        }, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(RankAllFragment rankAllFragment) {
        FrameLayout frameLayout;
        if (rankAllFragment.isDetached() || !rankAllFragment.isAdded() || rankAllFragment.getContext() == null) {
            return;
        }
        View viewV0 = nh.m.f70474a.e() ? rankAllFragment.v0() : rankAllFragment.getNoNetworkView();
        if (rankAllFragment.hasRenderFirst) {
            RankListFragment rankListFragment = rankAllFragment.listFragment;
            if (rankListFragment != null) {
                rankListFragment.j0(viewV0);
            }
        } else {
            u mViewBinding = rankAllFragment.getMViewBinding();
            if (mViewBinding != null && (frameLayout = mViewBinding.f63851c) != null) {
                frameLayout.removeAllViews();
                frameLayout.addView(viewV0);
                frameLayout.setVisibility(0);
            }
        }
        rankAllFragment.mErrorView = viewV0;
    }

    private final View getNoNetworkView() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        final NoNetworkBigView noNetworkBigView = new NoNetworkBigView(contextRequireContext);
        noNetworkBigView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        NoNetworkBigView.showTitle$default(noNetworkBigView, false, null, 2, null);
        noNetworkBigView.retry(new Function0() { // from class: com.transsion.home.fragment.rank.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RankAllFragment.x0(noNetworkBigView, this);
            }
        });
        noNetworkBigView.goToSetting(new Function0() { // from class: com.transsion.home.fragment.rank.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RankAllFragment.y0(this.f45225a);
            }
        });
        r.a(getPageName());
        return noNetworkBigView;
    }

    private final String getPageName() {
        return "rank_all_page";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String j0(i1 i1Var) {
        return (String) i1Var.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(i1 i1Var, String str) {
        i1Var.setValue(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l0(List list, RankAllFragment rankAllFragment, i1 i1Var, androidx.compose.foundation.lazy.u LazyColumn) {
        Intrinsics.h(LazyColumn, "$this$LazyColumn");
        int i11 = 0;
        for (Object obj : list) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            CategoryType categoryType = (CategoryType) obj;
            androidx.compose.foundation.lazy.t.a(LazyColumn, categoryType.getType() + i11, null, androidx.compose.runtime.internal.b.b(-1073765077, true, new b(categoryType, rankAllFragment, i11, i1Var)), 2, null);
            i11 = i12;
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m0(RankAllFragment rankAllFragment, List list, String str, int i11, androidx.compose.runtime.i iVar, int i12) {
        rankAllFragment.i0(list, str, iVar, v1.a(i11 | 1));
        return Unit.f67061a;
    }

    private final View v0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(3, 1, false, "", "");
        stateView.retry(new Function0() { // from class: com.transsion.home.fragment.rank.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RankAllFragment.w0(this.f45226a);
            }
        });
        return stateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w0(RankAllFragment rankAllFragment) {
        rankAllFragment.lazyLoadData();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x0(NoNetworkBigView noNetworkBigView, RankAllFragment rankAllFragment) {
        jg.c.g(noNetworkBigView);
        rankAllFragment.lazyLoadData();
        r.b(rankAllFragment.getPageName());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y0(RankAllFragment rankAllFragment) {
        r.c(rankAllFragment.getPageName());
        return Unit.f67061a;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void hideLoading() {
        ConstraintLayout constraintLayout;
        u mViewBinding = getMViewBinding();
        if (mViewBinding == null || (constraintLayout = mViewBinding.f63852d) == null) {
            return;
        }
        jg.c.h(constraintLayout);
    }

    public final void i0(final List items, final String str, androidx.compose.runtime.i iVar, final int i11) {
        int i12;
        androidx.compose.runtime.i iVar2;
        Intrinsics.h(items, "items");
        androidx.compose.runtime.i iVarG = iVar.g(-1793930920);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.A(items) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 48) == 0) {
            i12 |= iVarG.O(str) ? 32 : 16;
        }
        if ((i11 & 384) == 0) {
            i12 |= iVarG.A(this) ? 256 : 128;
        }
        if ((i12 & 147) == 146 && iVarG.h()) {
            iVarG.G();
            iVar2 = iVarG;
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1793930920, i12, -1, "com.transsion.home.fragment.rank.RankAllFragment.SetRankCategoryUI (RankAllFragment.kt:276)");
            }
            iVarG.P(1849434622);
            Object objY = iVarG.y();
            androidx.compose.runtime.i.a aVar = androidx.compose.runtime.i.f3736a;
            if (objY == aVar.a()) {
                objY = u2.c(str, null, 2, null);
                iVarG.p(objY);
            }
            final i1 i1Var = (i1) objY;
            iVarG.K();
            androidx.compose.ui.f fVarB = BackgroundKt.b(androidx.compose.ui.f.f4178a, i0.b.a(R$color.rank_all_category_background, iVarG, 0), null, 2, null);
            iVarG.P(-1746271574);
            boolean zA = iVarG.A(items) | iVarG.A(this);
            Object objY2 = iVarG.y();
            if (zA || objY2 == aVar.a()) {
                objY2 = new Function1() { // from class: com.transsion.home.fragment.rank.c
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return RankAllFragment.l0(items, this, i1Var, (androidx.compose.foundation.lazy.u) obj);
                    }
                };
                iVarG.p(objY2);
            }
            iVarG.K();
            iVar2 = iVarG;
            LazyDslKt.a(fVarB, null, null, false, null, null, null, false, (Function1) objY2, iVarG, 0, 254);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVar2.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2() { // from class: com.transsion.home.fragment.rank.d
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return RankAllFragment.m0(this.f45218a, items, str, i11, (androidx.compose.runtime.i) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        b0 b0VarJ;
        TitleLayout titleLayout;
        Intrinsics.h(view, "view");
        u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (titleLayout = mViewBinding.f63853e) != null) {
            titleLayout.setLeftOnclick(new View.OnClickListener() { // from class: com.transsion.home.fragment.rank.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    RankAllFragment.A0(this.f45213a, view2);
                }
            });
            String string = getString(R$string.str_ranking);
            Intrinsics.g(string, "getString(...)");
            titleLayout.setTitleText(string);
            oh.h hVar = oh.h.f71021a;
            Context context = titleLayout.getContext();
            Intrinsics.g(context, "getContext(...)");
            titleLayout.setPadding(0, hVar.d(context), 0, 0);
        }
        RankAllViewModel rankAllViewModel = this.viewModel;
        if (rankAllViewModel != null && (b0VarJ = rankAllViewModel.j()) != null) {
            b0VarJ.j(this, new e(new Function1() { // from class: com.transsion.home.fragment.rank.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RankAllFragment.B0(this.f45214a, (RankAllData) obj);
                }
            }));
        }
        Fragment fragmentJ0 = getChildFragmentManager().j0(R$id.rank_all_category_item_fragment);
        Intrinsics.f(fragmentJ0, "null cannot be cast to non-null type com.transsion.home.fragment.rank.RankListFragment");
        this.listFragment = (RankListFragment) fragmentJ0;
        C0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        if (this.hasRenderFirst) {
            RankListFragment rankListFragment = this.listFragment;
            if (rankListFragment != null) {
                rankListFragment.startLoading();
            }
        } else {
            startLoading();
        }
        Bundle arguments = getArguments();
        this.tabId = arguments != null ? arguments.getInt("tabId") : 0;
        Bundle arguments2 = getArguments();
        this.rankingListId = arguments2 != null ? arguments2.getString("rankingListId") : null;
        RankAllViewModel rankAllViewModel = this.viewModel;
        if (rankAllViewModel != null) {
            Bundle arguments3 = getArguments();
            rankAllViewModel.k(arguments3 != null ? arguments3.getString("category") : null, this.tabId, this.rankingListId);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void startLoading() {
        FrameLayout frameLayout;
        ConstraintLayout constraintLayout;
        u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (constraintLayout = mViewBinding.f63852d) != null) {
            jg.c.k(constraintLayout);
        }
        u mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (frameLayout = mViewBinding2.f63851c) == null) {
            return;
        }
        jg.c.g(frameLayout);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
    public u getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.viewModel = (RankAllViewModel) new v0(activity).a(RankAllViewModel.class);
        }
        u uVarC = u.c(inflater);
        Intrinsics.g(uVarC, "inflate(...)");
        return uVarC;
    }
}
