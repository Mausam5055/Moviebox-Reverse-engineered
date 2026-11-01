package com.transsion.subtitle.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.KeyboardUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.SubtitleLanguageMapBean;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.subtitle.R$string;
import com.transsion.subtitle.view.SubtitleSearchTabTitleView;
import com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 F2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001GB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u001d\u0010\u000e\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0010\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001c\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J:\u0010&\u001a\u00020\u00072#\u0010#\u001a\u001f\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001e2\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00106\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R \u0010=\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020:098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R$\u0010@\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u00105¨\u0006H"}, d2 = {"Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;", "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;", "Lfu/f;", "<init>", "()V", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "", "y0", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "initViewModel", "", "Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;", "tabs", "x0", "(Ljava/util/List;)V", "r0", "t0", "Landroid/view/LayoutInflater;", "inflater", "s0", "(Landroid/view/LayoutInflater;)Lfu/f;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "initView", "lazyLoadData", "Lkotlin/Function1;", "Leu/a;", "Lkotlin/ParameterName;", "name", "bean", "callback", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "z0", "(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "g", "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;", "commonNavigator", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "h", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "vpAdapter", "", "i", "I", "selectTabIndex", "j", "Ljava/lang/String;", "searchName", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/baselib/db/download/DownloadBean;", "", "Lcom/transsion/subtitle/fragment/SubtitleSearchResultListFragment;", "l", "Ljava/util/Map;", "fragmentList", "m", "Lkotlin/jvm/functions/Function1;", "subtitleSelectCallback", "", "n", "Z", "isFeedbackShown", "o", TtmlNode.TAG_P, "a", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubtitleSearchDownloadFragment extends SubtitleBaseFragment<fu.f> {

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private CommonNavigator commonNavigator;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private FragmentStateAdapter vpAdapter;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int selectTabIndex;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String searchName;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private DownloadBean downloadBean;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private Function1 subtitleSelectCallback;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean isFeedbackShown;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final Map fragmentList = new LinkedHashMap();

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String type = "";

    /* JADX INFO: renamed from: com.transsion.subtitle.fragment.SubtitleSearchDownloadFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SubtitleSearchDownloadFragment a(String str, DownloadBean downloadBean, String str2) {
            SubtitleSearchDownloadFragment subtitleSearchDownloadFragment = new SubtitleSearchDownloadFragment();
            subtitleSearchDownloadFragment.y0(downloadBean);
            subtitleSearchDownloadFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("EXTRA_NAME", str), TuplesKt.a("KEY_PAGE_NAME", str2)));
            return subtitleSearchDownloadFragment;
        }
    }

    public static final class b extends j00.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f54808b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ SubtitleSearchDownloadFragment f54809c;

        public static final class a extends com.transsion.baseui.util.f {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ SubtitleSearchDownloadFragment f54810e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ int f54811f;

            a(SubtitleSearchDownloadFragment subtitleSearchDownloadFragment, int i11) {
                this.f54810e = subtitleSearchDownloadFragment;
                this.f54811f = i11;
            }

            @Override // com.transsion.baseui.util.f
            public void c(View view) {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.transsion.baseui.util.f
            public void d(View view) {
                ViewPager2 viewPager2;
                fu.f fVar = (fu.f) this.f54810e.getMViewBinding();
                if (fVar == null || (viewPager2 = fVar.f62502i) == null) {
                    return;
                }
                viewPager2.setCurrentItem(this.f54811f, true);
            }
        }

        b(List list, SubtitleSearchDownloadFragment subtitleSearchDownloadFragment) {
            this.f54808b = list;
            this.f54809c = subtitleSearchDownloadFragment;
        }

        @Override // j00.a
        public int a() {
            return this.f54808b.size();
        }

        @Override // j00.a
        public j00.c b(Context context) {
            Intrinsics.h(context, "context");
            LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
            linePagerIndicator.setColors(0);
            return linePagerIndicator;
        }

        @Override // j00.a
        public j00.d c(Context context, int i11) {
            Intrinsics.h(context, "context");
            SubtitleSearchTabTitleView subtitleSearchTabTitleView = new SubtitleSearchTabTitleView(context);
            List list = this.f54808b;
            SubtitleSearchDownloadFragment subtitleSearchDownloadFragment = this.f54809c;
            subtitleSearchTabTitleView.setTextWithString(((SubtitleLanguageMapBean) list.get(i11)).getLanName());
            subtitleSearchTabTitleView.setOnClickListener(new a(subtitleSearchDownloadFragment, i11));
            return subtitleSearchTabTitleView;
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            MagicIndicator magicIndicator;
            super.onPageScrollStateChanged(i11);
            fu.f fVar = (fu.f) SubtitleSearchDownloadFragment.this.getMViewBinding();
            if (fVar == null || (magicIndicator = fVar.f62498e) == null) {
                return;
            }
            magicIndicator.onPageScrollStateChanged(i11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            MagicIndicator magicIndicator;
            super.onPageScrolled(i11, f11, i12);
            fu.f fVar = (fu.f) SubtitleSearchDownloadFragment.this.getMViewBinding();
            if (fVar == null || (magicIndicator = fVar.f62498e) == null) {
                return;
            }
            magicIndicator.onPageScrolled(i11, f11, i12);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            MagicIndicator magicIndicator;
            super.onPageSelected(i11);
            fu.f fVar = (fu.f) SubtitleSearchDownloadFragment.this.getMViewBinding();
            if (fVar != null && (magicIndicator = fVar.f62498e) != null) {
                magicIndicator.onPageSelected(i11);
            }
            SubtitleSearchDownloadFragment.this.selectTabIndex = i11;
        }
    }

    public static final class d implements TextWatcher {
        public d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            SubtitleSearchDownloadFragment.this.searchName = String.valueOf(editable);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        }
    }

    public static final class e implements TextView.OnEditorActionListener {
        e() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i11, KeyEvent keyEvent) {
            if (i11 != 0 && i11 != 3) {
                return false;
            }
            CharSequence text = textView != null ? textView.getText() : null;
            if (text == null || text.length() == 0) {
                uh.b.f76753a.e(Utils.a().getString(R$string.subtitle_search_empty_tips));
                return true;
            }
            SubtitleSearchResultListFragment subtitleSearchResultListFragment = (SubtitleSearchResultListFragment) SubtitleSearchDownloadFragment.this.fragmentList.get(Integer.valueOf(SubtitleSearchDownloadFragment.this.selectTabIndex));
            if (subtitleSearchResultListFragment != null) {
                subtitleSearchResultListFragment.Q0(SubtitleSearchDownloadFragment.this.searchName);
            }
            if (textView != null) {
                KeyboardUtils.e(textView);
            }
            return true;
        }
    }

    public static final class f extends FragmentStateAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f54816b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(List list) {
            super(SubtitleSearchDownloadFragment.this);
            this.f54816b = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit h(SubtitleSearchDownloadFragment subtitleSearchDownloadFragment) {
            return subtitleSearchDownloadFragment.isFeedbackShown ? Unit.f67061a : Unit.f67061a;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public Fragment createFragment(int i11) {
            SubtitleSearchResultListFragment subtitleSearchResultListFragmentA = SubtitleSearchResultListFragment.INSTANCE.a(SubtitleSearchDownloadFragment.this.downloadBean, (SubtitleLanguageMapBean) this.f54816b.get(i11), SubtitleSearchDownloadFragment.this.searchName, SubtitleSearchDownloadFragment.this.getPageName());
            final SubtitleSearchDownloadFragment subtitleSearchDownloadFragment = SubtitleSearchDownloadFragment.this;
            subtitleSearchDownloadFragment.fragmentList.put(Integer.valueOf(i11), subtitleSearchResultListFragmentA);
            subtitleSearchResultListFragmentA.U0(subtitleSearchDownloadFragment.subtitleSelectCallback);
            subtitleSearchResultListFragmentA.T0(new Function0() { // from class: com.transsion.subtitle.fragment.h
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return SubtitleSearchDownloadFragment.f.h(subtitleSearchDownloadFragment);
                }
            });
            return subtitleSearchResultListFragmentA;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f54816b.size();
        }
    }

    static final class g implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f54817a;

        g(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54817a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f54817a;
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
            this.f54817a.invoke(obj);
        }
    }

    private final void initViewModel() {
        androidx.p009lifecycle.b0 b0VarJ;
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String tag = getTAG();
            Intrinsics.g(tag, "<get-TAG>(...)");
            lg.a.C0828a.f(c0828a, tag, "initViewModel ", false, 4, null);
            SubtitleDownloadViewModel viewModel = getViewModel();
            if (viewModel != null && (b0VarJ = viewModel.j()) != null) {
                b0VarJ.j(parentFragment, new g(new Function1() { // from class: com.transsion.subtitle.fragment.g
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SubtitleSearchDownloadFragment.w0(this.f54861a, (List) obj);
                    }
                }));
            }
            SubtitleDownloadViewModel viewModel2 = getViewModel();
            if (viewModel2 != null) {
                viewModel2.i();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void r0(List tabs) {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        MagicIndicator magicIndicator;
        Context context = getContext();
        if (context == null) {
            return;
        }
        CommonNavigator commonNavigator = new CommonNavigator(context);
        commonNavigator.setFollowTouch(true);
        commonNavigator.setAdapter(new b(tabs, this));
        this.commonNavigator = commonNavigator;
        fu.f fVar = (fu.f) getMViewBinding();
        if (fVar != null && (magicIndicator = fVar.f62498e) != null) {
            magicIndicator.setNavigator(this.commonNavigator);
        }
        t0();
        fu.f fVar2 = (fu.f) getMViewBinding();
        if (fVar2 != null && (viewPager3 = fVar2.f62502i) != null) {
            viewPager3.registerOnPageChangeCallback(new c());
        }
        fu.f fVar3 = (fu.f) getMViewBinding();
        if (fVar3 == null || (viewPager2 = fVar3.f62502i) == null) {
            return;
        }
        viewPager2.setCurrentItem(this.selectTabIndex, false);
    }

    private final void t0() {
        LinearLayout titleContainer;
        View childAt;
        LinearLayout titleContainer2;
        CommonNavigator commonNavigator = this.commonNavigator;
        int childCount = (commonNavigator == null || (titleContainer2 = commonNavigator.getTitleContainer()) == null) ? 0 : titleContainer2.getChildCount();
        if (childCount > 0) {
            for (int i11 = 0; i11 < childCount; i11++) {
                CommonNavigator commonNavigator2 = this.commonNavigator;
                if (commonNavigator2 != null && (titleContainer = commonNavigator2.getTitleContainer()) != null && (childAt = titleContainer.getChildAt(i11)) != null) {
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
                    if (layoutParams2 == null) {
                        layoutParams2 = new LinearLayout.LayoutParams(-2, com.blankj.utilcode.util.a0.a(30.0f));
                    }
                    layoutParams2.height = com.blankj.utilcode.util.a0.a(30.0f);
                    if (i11 == 0) {
                        layoutParams2.setMarginStart(com.blankj.utilcode.util.a0.a(16.0f));
                    }
                    layoutParams2.setMarginEnd(com.blankj.utilcode.util.a0.a(8.0f));
                    childAt.setLayoutParams(layoutParams2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(SubtitleSearchDownloadFragment subtitleSearchDownloadFragment, View view) {
        androidx.p009lifecycle.b0 b0VarH;
        SubtitleDownloadViewModel viewModel = subtitleSearchDownloadFragment.getViewModel();
        if (viewModel == null || (b0VarH = viewModel.h()) == null) {
            return;
        }
        b0VarH.q(subtitleSearchDownloadFragment.type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(SubtitleSearchDownloadFragment subtitleSearchDownloadFragment, View view) {
        String str = subtitleSearchDownloadFragment.searchName;
        if (str == null || str.length() == 0) {
            uh.b.f76753a.e(Utils.a().getString(R$string.subtitle_search_empty_tips));
            return;
        }
        SubtitleSearchResultListFragment subtitleSearchResultListFragment = (SubtitleSearchResultListFragment) subtitleSearchDownloadFragment.fragmentList.get(Integer.valueOf(subtitleSearchDownloadFragment.selectTabIndex));
        if (subtitleSearchResultListFragment != null) {
            subtitleSearchResultListFragment.Q0(subtitleSearchDownloadFragment.searchName);
        }
        if (view != null) {
            KeyboardUtils.e(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w0(SubtitleSearchDownloadFragment subtitleSearchDownloadFragment, List list) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = subtitleSearchDownloadFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, "get languages list success, size = " + list.size() + " ", false, 4, null);
        ArrayList arrayList = new ArrayList();
        Intrinsics.e(list);
        arrayList.addAll(list);
        com.transsion.subtitle.helper.e.d(arrayList);
        subtitleSearchDownloadFragment.x0(arrayList);
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void x0(List tabs) {
        ViewPager2 viewPager2;
        this.vpAdapter = new f(tabs);
        fu.f fVar = (fu.f) getMViewBinding();
        if (fVar != null && (viewPager2 = fVar.f62502i) != null) {
            viewPager2.setAdapter(this.vpAdapter);
        }
        r0(tabs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y0(DownloadBean downloadBean) {
        this.downloadBean = downloadBean;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        EditTextWithClear editTextWithClear;
        TextView textView;
        EditTextWithClear editTextWithClear2;
        AppCompatImageView appCompatImageView;
        fu.f fVar;
        EditTextWithClear editTextWithClear3;
        EditTextWithClear editTextWithClear4;
        Intrinsics.h(view, "view");
        if (c0()) {
            int iA = com.blankj.utilcode.util.a0.a(12.0f);
            int iA2 = com.blankj.utilcode.util.a0.a(5.0f);
            fu.f fVar2 = (fu.f) getMViewBinding();
            if (fVar2 != null && (editTextWithClear4 = fVar2.f62495b) != null) {
                editTextWithClear4.setPadding(iA * 3, iA2, iA, iA2);
            }
        }
        initViewModel();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.searchName = arguments.getString("EXTRA_NAME", "");
        }
        String str = this.searchName;
        if (str != null && str.length() != 0 && (fVar = (fu.f) getMViewBinding()) != null && (editTextWithClear3 = fVar.f62495b) != null) {
            editTextWithClear3.setText(this.searchName);
        }
        fu.f fVar3 = (fu.f) getMViewBinding();
        if (fVar3 != null && (appCompatImageView = fVar3.f62496c) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.subtitle.fragment.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SubtitleSearchDownloadFragment.u0(this.f54859a, view2);
                }
            });
        }
        fu.f fVar4 = (fu.f) getMViewBinding();
        if (fVar4 != null && (editTextWithClear2 = fVar4.f62495b) != null) {
            editTextWithClear2.addTextChangedListener(new d());
        }
        fu.f fVar5 = (fu.f) getMViewBinding();
        if (fVar5 != null && (textView = fVar5.f62500g) != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.subtitle.fragment.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SubtitleSearchDownloadFragment.v0(this.f54860a, view2);
                }
            });
        }
        fu.f fVar6 = (fu.f) getMViewBinding();
        if (fVar6 == null || (editTextWithClear = fVar6.f62495b) == null) {
            return;
        }
        editTextWithClear.setOnEditorActionListener(new e());
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.subtitle.fragment.SubtitleBaseFragment, com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        e0("dialog_subtitle_search");
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public fu.f getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        fu.f fVarC = fu.f.c(inflater);
        Intrinsics.g(fVarC, "inflate(...)");
        return fVarC;
    }

    public final void z0(Function1 callback, String type) {
        Intrinsics.h(type, "type");
        this.subtitleSelectCallback = callback;
        this.type = type;
    }
}
