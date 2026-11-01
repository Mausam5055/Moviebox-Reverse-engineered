package com.transsion.home.fragment.hashtag;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.a0;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.baseui.widget.CustomPagerTitleView;
import com.transsion.gslb.Utils;
import com.transsion.home.R$string;
import com.transsion.home.hashtag.HashTagViewModel;
import com.transsion.home.hashtag.model.HashTagTab;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gl.p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\b\b\u0007\u0018\u0000 ?2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002&#B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001d\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001e\u0010(\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u001b\u0010.\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00105\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00107\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00104R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010>\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006@"}, d2 = {"Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lgl/p;", "<init>", "()V", "", "", "tabTitles", "", "j0", "(Ljava/util/List;)V", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "h0", "(Landroid/view/LayoutInflater;)Lgl/p;", "lazyLoadData", "onResume", "", "hidden", "onHiddenChanged", "(Z)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "a", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;", "mainHasTag", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/List;", "hasTagList", "Lcom/transsion/home/hashtag/HashTagViewModel;", "c", "Lkotlin/Lazy;", "i0", "()Lcom/transsion/home/hashtag/HashTagViewModel;", "viewModel", "Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$b;", "titleUpdateCallback", "e", "Ljava/lang/String;", "fromOptId", "f", "ugcVideoId", "", "g", "I", "tabId", "h", "Z", "hasMarkLoadResult", "i", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCHashTagFragment extends BaseFragment<p> {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f45070j = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private UGCVideoHashTag mainHasTag;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private List hasTagList;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(HashTagViewModel.class), new Function0<x0>() { // from class: com.transsion.home.fragment.hashtag.UGCHashTagFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final x0 invoke() {
            x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<v0.c>() { // from class: com.transsion.home.fragment.hashtag.UGCHashTagFragment$special$$inlined$activityViewModels$default$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final v0.c invoke() {
            v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private b titleUpdateCallback;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String fromOptId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String ugcVideoId;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int tabId;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean hasMarkLoadResult;

    /* JADX INFO: renamed from: com.transsion.home.fragment.hashtag.UGCHashTagFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCHashTagFragment a(UGCVideoHashTag uGCVideoHashTag, ArrayList arrayList, String str, String str2, int i11) {
            Bundle bundle = new Bundle();
            bundle.putParcelable("hash_tag", uGCVideoHashTag);
            bundle.putParcelableArrayList("hash_tags", arrayList);
            bundle.putString("fromOptId", str);
            bundle.putString("UGCVideoId", str2);
            bundle.putInt("tabId", i11);
            UGCHashTagFragment uGCHashTagFragment = new UGCHashTagFragment();
            uGCHashTagFragment.setArguments(bundle);
            return uGCHashTagFragment;
        }

        public final UGCHashTagFragment b(String str, String str2, String str3, int i11) {
            Bundle bundle = new Bundle();
            bundle.putString("hashtag", str);
            bundle.putString("fromOptId", str2);
            bundle.putString("UGCVideoId", str3);
            bundle.putInt("tabId", i11);
            UGCHashTagFragment uGCHashTagFragment = new UGCHashTagFragment();
            uGCHashTagFragment.setArguments(bundle);
            return uGCHashTagFragment;
        }
    }

    public interface b {
        void l(String str);
    }

    public static final class c extends j00.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f45079b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ UGCHashTagFragment f45080c;

        public static final class a extends com.transsion.baseui.util.f {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ UGCHashTagFragment f45081e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ int f45082f;

            a(UGCHashTagFragment uGCHashTagFragment, int i11) {
                this.f45081e = uGCHashTagFragment;
                this.f45082f = i11;
            }

            @Override // com.transsion.baseui.util.f
            public void c(View view) {
            }

            @Override // com.transsion.baseui.util.f
            public void d(View view) {
                MagicIndicator magicIndicator;
                ViewPager2 viewPager2;
                p mViewBinding = this.f45081e.getMViewBinding();
                if (mViewBinding != null && (viewPager2 = mViewBinding.f63807d) != null) {
                    viewPager2.setCurrentItem(this.f45082f, true);
                }
                p mViewBinding2 = this.f45081e.getMViewBinding();
                if (mViewBinding2 == null || (magicIndicator = mViewBinding2.f63806c) == null) {
                    return;
                }
                magicIndicator.onPageScrolled(this.f45082f, 0.0f, 0);
            }
        }

        c(List list, UGCHashTagFragment uGCHashTagFragment) {
            this.f45079b = list;
            this.f45080c = uGCHashTagFragment;
        }

        @Override // j00.a
        public int a() {
            return this.f45079b.size();
        }

        @Override // j00.a
        public j00.c b(Context context) {
            Intrinsics.h(context, "context");
            LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
            linePagerIndicator.setMode(1);
            linePagerIndicator.setLineHeight(com.blankj.utilcode.util.i.e(2.0f));
            linePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
            linePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
            int color = androidx.core.content.b.getColor(context, R$color.text_01);
            linePagerIndicator.setColors(Integer.valueOf(color), Integer.valueOf(color), Integer.valueOf(color));
            return linePagerIndicator;
        }

        @Override // j00.a
        public j00.d c(Context context, int i11) {
            Intrinsics.h(context, "context");
            CustomPagerTitleView customPagerTitleView = new CustomPagerTitleView(context, 17, a0.a(10.0f));
            List list = this.f45079b;
            UGCHashTagFragment uGCHashTagFragment = this.f45080c;
            customPagerTitleView.setText((CharSequence) list.get(i11));
            customPagerTitleView.setTextSize(16.0f);
            customPagerTitleView.setOnClickListener(new a(uGCHashTagFragment, i11));
            return customPagerTitleView;
        }
    }

    public static final class d extends FragmentStateAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f45084b;

        public static final class a implements HashTagPageFragment.b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List f45085a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ UGCHashTagFragment f45086b;

            a(List list, UGCHashTagFragment uGCHashTagFragment) {
                this.f45085a = list;
                this.f45086b = uGCHashTagFragment;
            }

            @Override // com.transsion.home.fragment.hashtag.HashTagPageFragment.b
            public void a(String tabId, Long l11, String str) {
                HashMap mapG;
                String string;
                Intrinsics.h(tabId, "tabId");
                HashTagTab hashTagTab = (HashTagTab) CollectionsKt.l0(this.f45085a, 0);
                if (Intrinsics.c(tabId, hashTagTab != null ? hashTagTab.getId() : null) && !this.f45086b.hasMarkLoadResult) {
                    this.f45086b.hasMarkLoadResult = true;
                    hj.b logViewConfig = this.f45086b.getLogViewConfig();
                    if (logViewConfig != null) {
                        logViewConfig.k(true);
                    }
                    hj.b logViewConfig2 = this.f45086b.getLogViewConfig();
                    if (logViewConfig2 == null || (mapG = logViewConfig2.g()) == null) {
                        return;
                    }
                    if (l11 == null || (string = l11.toString()) == null) {
                        string = "";
                    }
                    mapG.put("load_duration", string);
                    if (str == null) {
                        str = "";
                    }
                    mapG.put("ops", str);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(List list) {
            super(UGCHashTagFragment.this);
            this.f45084b = list;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public HashTagPageFragment createFragment(int i11) {
            String title;
            HashTagPageFragment.Companion aVar = HashTagPageFragment.INSTANCE;
            String id2 = ((HashTagTab) this.f45084b.get(i11)).getId();
            String str = UGCHashTagFragment.this.fromOptId;
            UGCVideoHashTag uGCVideoHashTag = UGCHashTagFragment.this.mainHasTag;
            if (uGCVideoHashTag == null || (title = uGCVideoHashTag.getTitle()) == null) {
                title = "";
            }
            HashTagPageFragment hashTagPageFragmentA = aVar.a(id2, str, title, UGCHashTagFragment.this.ugcVideoId);
            hashTagPageFragmentA.F0(new a(this.f45084b, UGCHashTagFragment.this));
            return hashTagPageFragmentA;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f45084b.size();
        }
    }

    public static final class e extends ViewPager2.OnPageChangeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f45087a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ UGCHashTagFragment f45088b;

        e(List list, UGCHashTagFragment uGCHashTagFragment) {
            this.f45087a = list;
            this.f45088b = uGCHashTagFragment;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            MagicIndicator magicIndicator;
            super.onPageScrollStateChanged(i11);
            p mViewBinding = this.f45088b.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f63806c) == null) {
                return;
            }
            magicIndicator.onPageScrollStateChanged(i11);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            MagicIndicator magicIndicator;
            super.onPageScrolled(i11, f11, i12);
            p mViewBinding = this.f45088b.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f63806c) == null) {
                return;
            }
            magicIndicator.onPageScrolled(i11, f11, i12);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            MagicIndicator magicIndicator;
            super.onPageSelected(i11);
            String id2 = ((HashTagTab) this.f45087a.get(i11)).getId();
            lg.a.C0828a.f(lg.a.f68839a, "/home/hashtag", "onPageSelected: position=" + i11 + ", filterId=" + id2, false, 4, null);
            this.f45088b.i0().w(id2);
            p mViewBinding = this.f45088b.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f63806c) == null) {
                return;
            }
            magicIndicator.onPageSelected(i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HashTagViewModel i0() {
        return (HashTagViewModel) this.viewModel.getValue();
    }

    private final void j0(List tabTitles) {
        MagicIndicator magicIndicator;
        CommonNavigator commonNavigator = new CommonNavigator(requireContext());
        commonNavigator.setAdapter(new c(tabTitles, this));
        p mViewBinding = getMViewBinding();
        if (mViewBinding == null || (magicIndicator = mViewBinding.f63806c) == null) {
            return;
        }
        magicIndicator.setNavigator(commonNavigator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(UGCHashTagFragment uGCHashTagFragment) {
        MagicIndicator magicIndicator;
        p mViewBinding = uGCHashTagFragment.getMViewBinding();
        if (mViewBinding == null || (magicIndicator = mViewBinding.f63806c) == null) {
            return;
        }
        magicIndicator.onPageSelected(0);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
    public p getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        p pVarC = p.c(inflater);
        Intrinsics.g(pVarC, "inflate(...)");
        return pVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        String string;
        String stringExtra;
        Intent intent;
        Intent intent2;
        Uri data;
        ViewPager2 viewPager2;
        UGCVideoHashTag uGCVideoHashTag;
        String tag;
        MagicIndicator magicIndicator;
        HashMap mapG;
        Intrinsics.h(view, "view");
        Bundle arguments = getArguments();
        String string2 = arguments != null ? arguments.getString("hashtag") : null;
        Bundle arguments2 = getArguments();
        String string3 = "";
        if (arguments2 == null || (string = arguments2.getString("fromOptId")) == null) {
            string = "";
        }
        this.fromOptId = string;
        Bundle arguments3 = getArguments();
        this.ugcVideoId = arguments3 != null ? arguments3.getString("UGCVideoId") : null;
        Bundle arguments4 = getArguments();
        this.tabId = arguments4 != null ? arguments4.getInt("tabId", 0) : 0;
        if (string2 == null || string2.length() == 0) {
            FragmentActivity activity = getActivity();
            if (activity == null || (intent2 = activity.getIntent()) == null || (data = intent2.getData()) == null || (stringExtra = data.getQueryParameter("hashtag")) == null) {
                FragmentActivity activity2 = getActivity();
                stringExtra = (activity2 == null || (intent = activity2.getIntent()) == null) ? null : intent.getStringExtra("hashtag");
            }
            if (stringExtra == null || stringExtra.length() == 0) {
                Bundle arguments5 = getArguments();
                this.mainHasTag = arguments5 != null ? (UGCVideoHashTag) arguments5.getParcelable("hash_tag") : null;
                Bundle arguments6 = getArguments();
                this.hasTagList = arguments6 != null ? arguments6.getParcelableArrayList("hash_tags") : null;
            } else {
                Pair pairY = i0().y(stringExtra);
                this.mainHasTag = (UGCVideoHashTag) pairY.getFirst();
                this.hasTagList = (List) pairY.getSecond();
            }
        } else {
            Pair pairY2 = i0().y(string2);
            this.mainHasTag = (UGCVideoHashTag) pairY2.getFirst();
            this.hasTagList = (List) pairY2.getSecond();
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            mapG.put(WebConstants.PAGE_FROM, hj.i.f64505a.i());
            mapG.put("from_opt_id", this.fromOptId);
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        UGCVideoHashTag uGCVideoHashTag2 = this.mainHasTag;
        String title = uGCVideoHashTag2 != null ? uGCVideoHashTag2.getTitle() : null;
        List list = this.hasTagList;
        lg.a.C0828a.f(c0828a, "/home/hashtag", "initView: hashTag=" + title + ", hashTags size=" + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        i0().r(this.mainHasTag, this.hasTagList, this.tabId, this.ugcVideoId);
        List listM = i0().m();
        lg.a.C0828a.f(c0828a, "/home/hashtag", "initView: filters size=" + listM.size(), false, 4, null);
        p mViewBinding = getMViewBinding();
        if (mViewBinding == null || (viewPager2 = mViewBinding.f63807d) == null) {
            return;
        }
        viewPager2.setAdapter(new d(listM));
        List list2 = listM;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((HashTagTab) it.next()).getName());
        }
        j0(arrayList);
        viewPager2.registerOnPageChangeCallback(new e(listM, this));
        viewPager2.setUserInputEnabled(true);
        viewPager2.setCurrentItem(0, false);
        p mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (magicIndicator = mViewBinding2.f63806c) != null) {
            magicIndicator.post(new Runnable() { // from class: com.transsion.home.fragment.hashtag.n
                @Override // java.lang.Runnable
                public final void run() {
                    UGCHashTagFragment.k0(this.f45106a);
                }
            });
        }
        UGCVideoHashTag uGCVideoHashTag3 = this.mainHasTag;
        if ((uGCVideoHashTag3 != null && (tag = uGCVideoHashTag3.getTitle()) != null) || ((uGCVideoHashTag = this.mainHasTag) != null && (tag = uGCVideoHashTag.getTag()) != null)) {
            string3 = tag;
        }
        if (!StringsKt.c0(string3, Utils.SEPARATOR, false, 2, null)) {
            string3 = getString(R$string.ugc_hashtag_page_title, string3);
            Intrinsics.e(string3);
        }
        b bVar = this.titleUpdateCallback;
        if (bVar != null) {
            bVar.l(string3);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b("/home/hashtag", false, 2, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.h(context, "context");
        super.onAttach(context);
        KeyEventDispatcher.Component activity = getActivity();
        this.titleUpdateCallback = activity instanceof b ? (b) activity : null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                logResume();
            }
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        lg.a.C0828a c0828a = lg.a.f68839a;
        UGCVideoHashTag uGCVideoHashTag = this.mainHasTag;
        lg.a.C0828a.f(c0828a, "/home/hashtag", "resume hashtag: " + (uGCVideoHashTag != null ? uGCVideoHashTag.getTitle() : null), false, 4, null);
    }
}
