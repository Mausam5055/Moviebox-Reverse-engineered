package com.transsion.shorttv._channel;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.os.d;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.google.android.material.appbar.AppBarLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv._channel.ShortTvCategoryFragment;
import com.transsion.shorttv._channel.model.ShortTvCategoryBean;
import com.transsion.shorttv._channel.model.ShortTvCategoryItemBean;
import com.transsion.shorttv._channel.ui.activity.ShortTvCategoryActivity;
import com.transsion.shorttv._channel.ui.viewmodel.ShortTvCategoryViewModel;
import com.transsion.shorttv.base.fragment.PageStatusFragment;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.Pager;
import com.transsion.shorttv.bean.Subject;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.y0;
import ms.v;
import nh.m;
import r6.f;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 L2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001MB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0019\u0010\u000f\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u0017\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u0017\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0018H\u0016¢\u0006\u0004\b \u0010\u001aJ!\u0010%\u001a\u00020\t2\u0006\u0010\"\u001a\u00020!2\b\u0010$\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010%\u001a\u00020\tH\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010'\u001a\u00020\tH\u0016¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\tH\u0016¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\tH\u0016¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010*\u001a\u00020\tH\u0016¢\u0006\u0004\b*\u0010\u0004J\u000f\u0010+\u001a\u00020\tH\u0016¢\u0006\u0004\b+\u0010\u0004J\u000f\u0010,\u001a\u00020\tH\u0016¢\u0006\u0004\b,\u0010\u0004J\u000f\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\tH\u0016¢\u0006\u0004\b0\u0010\u0004R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010;\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010=\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010:R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u001b\u0010G\u001a\u00020B8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010D\u001a\u0004\bE\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010J¨\u0006N"}, d2 = {"Lcom/transsion/shorttv/_channel/ShortTvCategoryFragment;", "Lcom/transsion/shorttv/base/fragment/PageStatusFragment;", "Lms/v;", "<init>", "()V", "Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;", "categoryItemBean", "", RequestParameters.POSITION, "", "v0", "(Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;I)V", "reload", "Lcom/transsion/shorttv/_channel/model/ShortTvCategoryBean;", "categoryBean", "I0", "(Lcom/transsion/shorttv/_channel/model/ShortTvCategoryBean;)V", "loadMore", "loadData", "", "isExpand", "u0", "(Z)V", "G0", "", "getPageName", "()Ljava/lang/String;", "initAd", "Landroid/view/LayoutInflater;", "inflater", "x0", "(Landroid/view/LayoutInflater;)Lms/v;", "getPageStateLayoutTitle", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initViewData", "(Landroid/view/View;Landroid/os/Bundle;)V", "initViewModel", "loadDefaultData", "initListener", "retryLoadData", "onPause", "onDestroyView", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "onDestroy", "Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;", "i", "Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;", "viewModel", "Lcom/transsion/shorttv/_channel/ui/adapter/b;", "j", "Lcom/transsion/shorttv/_channel/ui/adapter/b;", "mAdapter", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/String;", "categoryType", "l", "showType", "Lxr/b;", "m", "Lxr/b;", "mExposureHelper", "Ltr/a;", "n", "Lkotlin/Lazy;", "w0", "()Ltr/a;", "categoryDotHelper", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "o", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "v3ListManager", TtmlNode.TAG_P, "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvCategoryFragment extends PageStatusFragment<v> {

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private ShortTvCategoryViewModel viewModel;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private com.transsion.shorttv._channel.ui.adapter.b mAdapter;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String categoryType;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String showType;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private xr.b mExposureHelper;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final Lazy categoryDotHelper = LazyKt.b(new Function0() { // from class: mr.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTvCategoryFragment.t0();
        }
    });

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private BiddingListManager v3ListManager;

    /* JADX INFO: renamed from: com.transsion.shorttv._channel.ShortTvCategoryFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Fragment a(String str, String str2) {
            Bundle bundleA = d.a();
            bundleA.putString("category_type", str);
            if (str2 == null) {
                str2 = "1";
            }
            bundleA.putString("showType", str2);
            ShortTvCategoryFragment shortTvCategoryFragment = new ShortTvCategoryFragment();
            shortTvCategoryFragment.setArguments(bundleA);
            return shortTvCategoryFragment;
        }
    }

    public static final class b implements xr.a {
        b() {
        }

        @Override // xr.a
        public void a(int i11, long j11, View view) {
            Subject subject;
            Boolean hasResource;
            Subject subject2;
            Subject subject3;
            List<Object> data;
            com.transsion.shorttv._channel.ui.adapter.b bVar = ShortTvCategoryFragment.this.mAdapter;
            boolean zBooleanValue = false;
            if (i11 >= ((bVar == null || (data = bVar.getData()) == null) ? 0 : data.size())) {
                return;
            }
            com.transsion.shorttv._channel.ui.adapter.b bVar2 = ShortTvCategoryFragment.this.mAdapter;
            ShortTvCategoryItemBean shortTvCategoryItemBean = bVar2 != null ? (ShortTvCategoryItemBean) bVar2.getItem(i11) : null;
            tr.a aVarW0 = ShortTvCategoryFragment.this.w0();
            String pageName = ShortTvCategoryFragment.this.getPageName();
            String subjectId = (shortTvCategoryItemBean == null || (subject3 = shortTvCategoryItemBean.getSubject()) == null) ? null : subject3.getSubjectId();
            String ops = (shortTvCategoryItemBean == null || (subject2 = shortTvCategoryItemBean.getSubject()) == null) ? null : subject2.getOps();
            Integer numValueOf = Integer.valueOf(i11);
            String itemType = shortTvCategoryItemBean != null ? shortTvCategoryItemBean.getItemType() : null;
            if (shortTvCategoryItemBean != null && (subject = shortTvCategoryItemBean.getSubject()) != null && (hasResource = subject.getHasResource()) != null) {
                zBooleanValue = hasResource.booleanValue();
            }
            aVarW0.a(pageName, subjectId, ops, numValueOf, itemType, zBooleanValue, ShortTvCategoryFragment.this.categoryType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(final ShortTvCategoryFragment shortTvCategoryFragment) {
        RecyclerView recyclerView;
        if (m.f70474a.e()) {
            shortTvCategoryFragment.loadMore();
            return;
        }
        fs.b.f62459a.d(R$string.short_tv_no_network_toast);
        v vVar = (v) shortTvCategoryFragment.getMViewBinding();
        if (vVar == null || (recyclerView = vVar.f69940e) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: mr.h
            @Override // java.lang.Runnable
            public final void run() {
                ShortTvCategoryFragment.B0(this.f69691a);
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(ShortTvCategoryFragment shortTvCategoryFragment) {
        f fVarH0;
        com.transsion.shorttv._channel.ui.adapter.b bVar = shortTvCategoryFragment.mAdapter;
        if (bVar == null || (fVarH0 = bVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i11);
        if (item instanceof ShortTvCategoryItemBean) {
            tr.b.c(((ShortTvCategoryItemBean) item).getSubject());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(ShortTvCategoryFragment shortTvCategoryFragment, BaseQuickAdapter adapter, View view, int i11) {
        List<Object> data;
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (ds.d.f61428a.a(view.getId(), 2000L)) {
            return;
        }
        com.transsion.shorttv._channel.ui.adapter.b bVar = shortTvCategoryFragment.mAdapter;
        ShortTvCategoryItemBean shortTvCategoryItemBean = (bVar == null || (data = bVar.getData()) == null) ? null : (ShortTvCategoryItemBean) CollectionsKt.l0(data, i11);
        if (shortTvCategoryItemBean == null || view.getId() != R$id.ll_download) {
            return;
        }
        shortTvCategoryFragment.v0(shortTvCategoryItemBean, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(ShortTvCategoryFragment shortTvCategoryFragment, v vVar, AppBarLayout appBarLayout, int i11) {
        if (shortTvCategoryFragment.getContext() == null) {
            return;
        }
        if (Math.abs(i11) >= appBarLayout.getTotalScrollRange()) {
            vVar.f69941f.setBackgroundColor(androidx.core.content.b.getColor(shortTvCategoryFragment.requireContext(), R$color.short_tv_bg));
            vVar.f69938c.setImageTintList(ColorStateList.valueOf(androidx.core.content.b.getColor(shortTvCategoryFragment.requireContext(), R$color.short_tv_white)));
            AppCompatTextView tvTitle = vVar.f69942g;
            Intrinsics.g(tvTitle, "tvTitle");
            yr.b.e(tvTitle);
            AppCompatTextView tvTitleExpand = vVar.f69943h;
            Intrinsics.g(tvTitleExpand, "tvTitleExpand");
            yr.b.b(tvTitleExpand);
            shortTvCategoryFragment.u0(true);
            return;
        }
        vVar.f69941f.setBackgroundColor(androidx.core.content.b.getColor(shortTvCategoryFragment.requireContext(), R$color.short_tv_transparent));
        vVar.f69938c.setImageTintList(ColorStateList.valueOf(androidx.core.content.b.getColor(shortTvCategoryFragment.requireContext(), R$color.short_tv_white)));
        AppCompatTextView tvTitle2 = vVar.f69942g;
        Intrinsics.g(tvTitle2, "tvTitle");
        yr.b.b(tvTitle2);
        AppCompatTextView tvTitleExpand2 = vVar.f69943h;
        Intrinsics.g(tvTitleExpand2, "tvTitleExpand");
        yr.b.e(tvTitleExpand2);
        shortTvCategoryFragment.u0(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F0(ShortTvCategoryFragment shortTvCategoryFragment, BaseDto baseDto) {
        List<Object> data;
        HashMap mapG;
        com.transsion.shorttv._channel.ui.adapter.b bVar;
        f fVarH0;
        Pager pager;
        f fVarH1;
        com.transsion.shorttv._channel.ui.adapter.b bVar2;
        f fVarH2;
        ShortTvCategoryBean shortTvCategoryBean;
        List<ShortTvCategoryItemBean> list;
        lg.a.C0828a.f(lg.a.f68839a, "CategoryFragment", "return code=" + (baseDto != null ? baseDto.getCode() : null) + " size=" + ((baseDto == null || (shortTvCategoryBean = (ShortTvCategoryBean) baseDto.getData()) == null || (list = shortTvCategoryBean.getList()) == null) ? null : Integer.valueOf(list.size())), false, 4, null);
        if (baseDto == null) {
            return Unit.f67061a;
        }
        shortTvCategoryFragment.showContentView();
        com.transsion.shorttv._channel.ui.adapter.b bVar3 = shortTvCategoryFragment.mAdapter;
        if (bVar3 != null && (fVarH1 = bVar3.h0()) != null && fVarH1.r() && (bVar2 = shortTvCategoryFragment.mAdapter) != null && (fVarH2 = bVar2.h0()) != null) {
            fVarH2.s();
        }
        if (Intrinsics.c(baseDto.getCode(), "0")) {
            ShortTvCategoryBean shortTvCategoryBean2 = (ShortTvCategoryBean) baseDto.getData();
            if (((shortTvCategoryBean2 == null || (pager = shortTvCategoryBean2.getPager()) == null) ? false : Intrinsics.c(pager.getHasMore(), Boolean.FALSE)) && (bVar = shortTvCategoryFragment.mAdapter) != null && (fVarH0 = bVar.h0()) != null) {
                f.u(fVarH0, false, 1, null);
            }
            shortTvCategoryFragment.I0((ShortTvCategoryBean) baseDto.getData());
            hj.b logViewConfig = shortTvCategoryFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            hj.b logViewConfig2 = shortTvCategoryFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                ShortTvCategoryBean shortTvCategoryBean3 = (ShortTvCategoryBean) baseDto.getData();
                logViewConfig2.n(shortTvCategoryBean3 != null ? shortTvCategoryBean3.getOps() : null);
            }
        } else {
            com.transsion.shorttv._channel.ui.adapter.b bVar4 = shortTvCategoryFragment.mAdapter;
            if ((bVar4 == null || (data = bVar4.getData()) == null || data.size() != 0) ? false : true) {
                PageStatusFragment.c0(shortTvCategoryFragment, false, 1, null);
            }
        }
        hj.b logViewConfig3 = shortTvCategoryFragment.getLogViewConfig();
        if (logViewConfig3 != null && (mapG = logViewConfig3.g()) != null) {
            mapG.put("category_type", shortTvCategoryFragment.categoryType);
        }
        return Unit.f67061a;
    }

    private final void G0() {
        Function1 function1 = new Function1() { // from class: mr.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvCategoryFragment.H0(this.f69692a, (AddToDownloadEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = AddToDownloadEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H0(ShortTvCategoryFragment shortTvCategoryFragment, AddToDownloadEvent value) {
        com.transsion.shorttv._channel.ui.adapter.b bVar;
        List<Object> data;
        Intrinsics.h(value, "value");
        try {
            com.transsion.shorttv._channel.ui.adapter.b bVar2 = shortTvCategoryFragment.mAdapter;
            int i11 = -1;
            if (bVar2 != null && (data = bVar2.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    Subject subject = ((ShortTvCategoryItemBean) it.next()).getSubject();
                    if (Intrinsics.c(subject != null ? subject.getSubjectId() : null, value.getSubjectId())) {
                        i11 = i12;
                        break;
                    }
                    i12++;
                }
            }
            if (i11 >= 0 && (bVar = shortTvCategoryFragment.mAdapter) != null) {
                bVar.notifyItemChanged(i11);
            }
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
        return Unit.f67061a;
    }

    private final void I0(ShortTvCategoryBean categoryBean) {
        v vVar;
        List<Object> data;
        String url;
        Subject subject;
        Cover cover;
        String thumbnail;
        Subject subject2;
        Cover cover2;
        List<Object> data2;
        com.transsion.shorttv._channel.ui.adapter.b bVar;
        if (categoryBean == null || (vVar = (v) getMViewBinding()) == null) {
            return;
        }
        vVar.f69942g.setText(categoryBean.getDesc());
        vVar.f69943h.setText(categoryBean.getDesc());
        List<ShortTvCategoryItemBean> list = categoryBean.getList();
        if (list != null && (bVar = this.mAdapter) != null) {
            bVar.q(list);
        }
        com.transsion.shorttv._channel.ui.adapter.b bVar2 = this.mAdapter;
        if (bVar2 == null || (data = bVar2.getData()) == null || !(!data.isEmpty())) {
            return;
        }
        com.transsion.shorttv._channel.ui.adapter.b bVar3 = this.mAdapter;
        ShortTvCategoryItemBean shortTvCategoryItemBean = (bVar3 == null || (data2 = bVar3.getData()) == null) ? null : (ShortTvCategoryItemBean) data2.get(0);
        ej.f.a aVar = ej.f.f61882a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        ej.f.b bVarM = aVar.m(contextRequireContext);
        String str = "";
        if (shortTvCategoryItemBean == null || (subject2 = shortTvCategoryItemBean.getSubject()) == null || (cover2 = subject2.getCover()) == null || (url = cover2.getUrl()) == null) {
            url = "";
        }
        ej.f.b bVarG = bVarM.g(url);
        if (shortTvCategoryItemBean != null && (subject = shortTvCategoryItemBean.getSubject()) != null && (cover = subject.getCover()) != null && (thumbnail = cover.getThumbnail()) != null) {
            str = thumbnail;
        }
        ej.f.b bVarL = bVarG.l(str);
        AppCompatImageView ivCover = vVar.f69939d;
        Intrinsics.g(ivCover, "ivCover");
        bVarL.d(ivCover);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getPageName() {
        return "category";
    }

    private final void initAd() {
        BiddingListManager biddingListManager = new BiddingListManager();
        v vVar = (v) getMViewBinding();
        biddingListManager.F(vVar != null ? vVar.f69940e : null);
        biddingListManager.A(androidx.p009lifecycle.v.a(this));
        biddingListManager.G("PlayListScene");
        biddingListManager.z(new Function2() { // from class: mr.j
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ShortTvCategoryFragment.y0(this.f69693a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
            }
        });
        this.v3ListManager = biddingListManager;
    }

    private final void loadData() {
        ShortTvCategoryViewModel shortTvCategoryViewModel = this.viewModel;
        if (shortTvCategoryViewModel == null) {
            Intrinsics.z("viewModel");
            shortTvCategoryViewModel = null;
        }
        String str = this.categoryType;
        if (str == null) {
            str = "Nollywood";
        }
        shortTvCategoryViewModel.i(str);
    }

    private final void loadMore() {
        loadData();
    }

    private final void reload() {
        if (m.f70474a.e()) {
            loadDefaultData();
        } else {
            showLoadingView();
            showNoNetworkViewDelayed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final tr.a t0() {
        return new tr.a();
    }

    private final void u0(boolean isExpand) {
        if (isAdded()) {
            FragmentActivity activity = getActivity();
            if (activity instanceof ShortTvCategoryActivity) {
                ((ShortTvCategoryActivity) activity).Z(isExpand);
            }
        }
    }

    private final void v0(ShortTvCategoryItemBean categoryItemBean, int position) {
        Boolean hasResource;
        Context context = getContext();
        if (context != null) {
            Subject subject = categoryItemBean.getSubject();
            ns.a.f70542a.a((FragmentActivity) context, "playlist", a.a(subject, this.categoryType), (64 & 8) != 0 ? null : "download_subject", (64 & 16) != 0 ? false : true, (64 & 32) != 0 ? null : subject, (64 & 64) != 0 ? null : null, (64 & 128) != 0 ? Boolean.FALSE : Boolean.TRUE);
            w0().b("playlist", "download_subject", subject != null ? subject.getSubjectId() : null, subject != null ? subject.getOps() : null, Integer.valueOf(position), categoryItemBean.getItemType(), (subject == null || (hasResource = subject.getHasResource()) == null) ? false : hasResource.booleanValue(), this.categoryType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final tr.a w0() {
        return (tr.a) this.categoryDotHelper.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y0(ShortTvCategoryFragment shortTvCategoryFragment, int i11, BiddingNativeManager current) {
        List<Object> data;
        Intrinsics.h(current, "current");
        if (current != null) {
            ShortTvCategoryItemBean shortTvCategoryItemBean = new ShortTvCategoryItemBean(null, null, new Subject(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, false, null, null, 0, 0, null, 0, null, 0, null, -1, 1073741823, null), 3, null);
            Subject subject = shortTvCategoryItemBean.getSubject();
            if (subject != null) {
                subject.setNonAdDelegate(current);
            }
            com.transsion.shorttv._channel.ui.adapter.b bVar = shortTvCategoryFragment.mAdapter;
            if (i11 < ((bVar == null || (data = bVar.getData()) == null) ? 0 : data.size())) {
                com.transsion.shorttv._channel.ui.adapter.b bVar2 = shortTvCategoryFragment.mAdapter;
                if (bVar2 != null) {
                    bVar2.n(i11, shortTvCategoryItemBean);
                }
            } else {
                com.transsion.shorttv._channel.ui.adapter.b bVar3 = shortTvCategoryFragment.mAdapter;
                if (bVar3 != null) {
                    bVar3.p(shortTvCategoryItemBean);
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(ShortTvCategoryFragment shortTvCategoryFragment, View view) {
        FragmentActivity activity = shortTvCategoryFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void initListener() {
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void initViewData() {
        Toolbar toolbar;
        v vVar = (v) getMViewBinding();
        if (vVar != null && (toolbar = vVar.f69941f) != null) {
            tr.b.a(toolbar);
        }
        pageStateFitStatusBar();
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void initViewData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        Bundle arguments = getArguments();
        this.categoryType = arguments != null ? arguments.getString("category_type") : null;
        Bundle arguments2 = getArguments();
        this.showType = arguments2 != null ? arguments2.getString("showType") : null;
        ArrayList arrayList = new ArrayList();
        final v vVar = (v) getMViewBinding();
        if (vVar != null) {
            vVar.f69938c.setOnClickListener(new View.OnClickListener() { // from class: mr.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ShortTvCategoryFragment.z0(this.f69686a, view2);
                }
            });
            RecyclerView recyclerView = vVar.f69940e;
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
            xr.b bVar = new xr.b(0.6f, new b(), false, 4, null);
            bVar.l(2);
            recyclerView.addOnScrollListener(bVar);
            this.mExposureHelper = bVar;
            com.transsion.shorttv._channel.ui.adapter.b bVar2 = new com.transsion.shorttv._channel.ui.adapter.b(arrayList, getPageName(), this.mExposureHelper, this.showType);
            bVar2.h0().z(true);
            bVar2.h0().y(true);
            bVar2.h0().D(new p6.f() { // from class: mr.d
                @Override // p6.f
                public final void a() {
                    ShortTvCategoryFragment.A0(this.f69687a);
                }
            });
            bVar2.w1(new p6.d() { // from class: mr.e
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i11) {
                    ShortTvCategoryFragment.C0(baseQuickAdapter, view2, i11);
                }
            });
            bVar2.l(R$id.ll_download);
            bVar2.s1(new p6.b() { // from class: mr.f
                @Override // p6.b
                public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i11) {
                    ShortTvCategoryFragment.D0(this.f69688a, baseQuickAdapter, view2, i11);
                }
            });
            this.mAdapter = bVar2;
            recyclerView.setAdapter(bVar2);
            vVar.f69937b.addOnOffsetChangedListener(new AppBarLayout.g() { // from class: mr.g
                @Override // com.google.android.material.appbar.AppBarLayout.b
                public final void onOffsetChanged(AppBarLayout appBarLayout, int i11) {
                    ShortTvCategoryFragment.E0(this.f69689a, vVar, appBarLayout, i11);
                }
            });
        }
        initAd();
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void initViewModel() {
        ShortTvCategoryViewModel shortTvCategoryViewModel = (ShortTvCategoryViewModel) new v0(this).a(ShortTvCategoryViewModel.class);
        this.viewModel = shortTvCategoryViewModel;
        if (shortTvCategoryViewModel == null) {
            Intrinsics.z("viewModel");
            shortTvCategoryViewModel = null;
        }
        shortTvCategoryViewModel.j().j(this, new a.C0657a(new Function1() { // from class: mr.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTvCategoryFragment.F0(this.f69685a, (BaseDto) obj);
            }
        }));
        G0();
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void loadDefaultData() {
        if (m.f70474a.e()) {
            showLoadingView();
            loadData();
        }
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        BiddingListManager biddingListManager = this.v3ListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        ShortTvCategoryViewModel shortTvCategoryViewModel = this.viewModel;
        if (shortTvCategoryViewModel == null) {
            Intrinsics.z("viewModel");
            shortTvCategoryViewModel = null;
        }
        shortTvCategoryViewModel.o(1);
        ShortTvCategoryViewModel shortTvCategoryViewModel2 = this.viewModel;
        if (shortTvCategoryViewModel2 == null) {
            Intrinsics.z("viewModel");
            shortTvCategoryViewModel2 = null;
        }
        shortTvCategoryViewModel2.j().q(null);
        super.onDestroyView();
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        xr.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    public void retryLoadData() {
        List<Object> data;
        com.transsion.shorttv._channel.ui.adapter.b bVar = this.mAdapter;
        if (bVar != null && (data = bVar.getData()) != null && data.size() == 0) {
            reload();
            return;
        }
        com.transsion.shorttv._channel.ui.adapter.b bVar2 = this.mAdapter;
        if (bVar2 == null || bVar2.h0().i() != LoadMoreStatus.Fail) {
            return;
        }
        bVar2.h0().w();
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment
    /* JADX INFO: renamed from: x0, reason: merged with bridge method [inline-methods] */
    public v getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        v vVarC = v.c(inflater);
        Intrinsics.g(vVarC, "inflate(...)");
        return vVarC;
    }
}
