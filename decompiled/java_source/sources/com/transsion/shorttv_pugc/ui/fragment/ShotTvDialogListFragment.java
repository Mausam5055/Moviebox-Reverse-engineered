package com.transsion.shorttv_pugc.ui.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.base.fragment.PageStatusFragment;
import com.transsion.shorttv_pugc.ui.dialog.ShortTvEpisodeListDialog;
import com.transsion.shorttv_pugc.ui.widget.UGCVideoDetailHorLoadMoreView;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 ?2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001@B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004R\u001b\u0010'\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010.\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u00100\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010-R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R$\u00109\u001a\u0002052\u0006\u00106\u001a\u0002058\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b7\u00108\u001a\u0004\b9\u0010:R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006A"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;", "Lcom/transsion/shorttv_pugc/base/fragment/PageStatusFragment;", "Lms/w;", "<init>", "()V", "", "t0", "u0", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "r0", "(Landroidx/recyclerview/widget/RecyclerView;)I", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;", WebConstants.FIELD_ITEM, "A0", "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "p0", "(Landroid/view/LayoutInflater;)Lms/w;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "i", "Lkotlin/Lazy;", "q0", "()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "viewModel", "Lcom/transsion/shorttv_pugc/ui/adapter/o;", "j", "Lcom/transsion/shorttv_pugc/ui/adapter/o;", "adapter", CampaignEx.JSON_KEY_AD_K, "I", "startEp", "l", "endEp", "", "m", "J", "lastClickTime", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "n", "Z", "isInit", "()Z", "Lbt/b;", "o", "Lbt/b;", "exposureHelper", TtmlNode.TAG_P, "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShotTvDialogListFragment extends PageStatusFragment<ms.w> {

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private com.transsion.shorttv_pugc.ui.adapter.o adapter;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private int startEp;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private int endEp;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private long lastClickTime;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private boolean isInit;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ShortTvViewModel.class), new Function0<x0>() { // from class: com.transsion.shorttv_pugc.ui.fragment.ShotTvDialogListFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final x0 invoke() {
            x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<v0.c>() { // from class: com.transsion.shorttv_pugc.ui.fragment.ShotTvDialogListFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final bt.b exposureHelper = new bt.b(0.6f, new b(), false, 4, null);

    /* JADX INFO: renamed from: com.transsion.shorttv_pugc.ui.fragment.ShotTvDialogListFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShotTvDialogListFragment a(IntRange range) {
            Intrinsics.h(range, "range");
            ShotTvDialogListFragment shotTvDialogListFragment = new ShotTvDialogListFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("start", range.getFirst());
            bundle.putInt(TtmlNode.END, range.getLast());
            shotTvDialogListFragment.setArguments(bundle);
            return shotTvDialogListFragment;
        }
    }

    public static final class b implements bt.a {
        b() {
        }

        @Override // bt.a
        public void a(int i11, long j11, View view) {
            List<Object> data;
            com.transsion.shorttv_pugc.ui.adapter.o oVar = ShotTvDialogListFragment.this.adapter;
            if (oVar == null || (data = oVar.getData()) == null) {
                return;
            }
            ShotTvDialogListFragment shotTvDialogListFragment = ShotTvDialogListFragment.this;
            if (data.size() < i11) {
                return;
            }
            ut.a aVar = ut.a.f76891a;
            ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.l0(data, i11);
            String strI = shotTvDialogListFragment.q0().I();
            if (strI == null) {
                strI = "";
            }
            aVar.d(j11, uGCVideo, "up Next", strI);
        }
    }

    public static final class c extends RecyclerView.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LinearLayoutManager f54192a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f54193b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f54194c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ShotTvDialogListFragment f54195d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f54196e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f54197f;

        c(LinearLayoutManager linearLayoutManager, Ref.BooleanRef booleanRef, int i11, ShotTvDialogListFragment shotTvDialogListFragment, Ref.BooleanRef booleanRef2, int i12) {
            this.f54192a = linearLayoutManager;
            this.f54193b = booleanRef;
            this.f54194c = i11;
            this.f54195d = shotTvDialogListFragment;
            this.f54196e = booleanRef2;
            this.f54197f = i12;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i11, i12);
            int itemCount = this.f54192a.getItemCount();
            int iFindFirstVisibleItemPosition = this.f54192a.findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = this.f54192a.findLastVisibleItemPosition();
            Ref.BooleanRef booleanRef = this.f54193b;
            if (!booleanRef.element && iFindFirstVisibleItemPosition <= this.f54194c) {
                booleanRef.element = true;
                this.f54195d.u0();
            }
            Ref.BooleanRef booleanRef2 = this.f54196e;
            if (booleanRef2.element || iFindLastVisibleItemPosition < (itemCount - 1) - this.f54197f) {
                return;
            }
            booleanRef2.element = true;
            this.f54195d.t0();
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f54198a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54198a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f54198a;
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
            this.f54198a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ShortTvViewModel q0() {
        return (ShortTvViewModel) this.viewModel.getValue();
    }

    private final int r0(RecyclerView recyclerView) {
        int iA = yr.a.a(68);
        if (iA > 0) {
            return recyclerView.getHeight() / iA;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:149:0x0138 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:0x0124 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x012a  */
    public static final Unit s0(ShotTvDialogListFragment shotTvDialogListFragment, Pair pair) {
        ArrayList arrayList;
        r6.f fVarH0;
        r6.g gVarO0;
        r6.f fVarH1;
        r6.f fVarH2;
        r6.f fVarH3;
        r6.g gVarO1;
        List<Object> data;
        List listI;
        Iterator it;
        int iIntValue;
        com.transsion.shorttv_pugc.ui.adapter.o oVar;
        List listL;
        FrameLayout frameLayout;
        Collection collection;
        r6.g gVarO2;
        r6.f fVarH4;
        r6.f fVarH5;
        if (pair != null) {
            if ((pair.getFirst() instanceof ot.b.C0876b) || !((collection = (Collection) pair.getSecond()) == null || collection.isEmpty())) {
                List list = (List) pair.getSecond();
                if (list != null) {
                    arrayList = new ArrayList();
                    for (Object obj : list) {
                        int i11 = shotTvDialogListFragment.startEp;
                        int i12 = shotTvDialogListFragment.endEp;
                        int ep2 = ((ShorttvModel.UGCVideo) obj).getEp();
                        if (i11 <= ep2 && ep2 <= i12) {
                            arrayList.add(obj);
                        }
                    }
                } else {
                    arrayList = null;
                }
                if (arrayList == null || arrayList.isEmpty()) {
                    return Unit.f67061a;
                }
                ms.w wVar = (ms.w) shotTvDialogListFragment.getMViewBinding();
                if (wVar != null && (frameLayout = wVar.f69945b) != null) {
                    yr.b.b(frameLayout);
                }
                com.transsion.shorttv_pugc.ui.adapter.o oVar2 = shotTvDialogListFragment.adapter;
                if (oVar2 != null && (data = oVar2.getData()) != null && (listI = ShortTvExtKt.i(data, arrayList)) != null) {
                    if (listI.size() > 1) {
                        Iterator it2 = listI.iterator();
                        if (it2.hasNext()) {
                            ArrayList arrayList2 = new ArrayList();
                            Object next = it2.next();
                            while (it2.hasNext()) {
                                Object next2 = it2.next();
                                arrayList2.add(Integer.valueOf(((Number) next2).intValue() - ((Number) next).intValue()));
                                next = next2;
                            }
                            listL = arrayList2;
                        } else {
                            listL = CollectionsKt.l();
                        }
                        List list2 = listL;
                        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                            Iterator it3 = list2.iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    if (((Number) it3.next()).intValue() != 1) {
                                        it = listI.iterator();
                                        while (it.hasNext()) {
                                            iIntValue = ((Number) it.next()).intValue();
                                            oVar = shotTvDialogListFragment.adapter;
                                            if (oVar != null) {
                                                oVar.notifyItemInserted(iIntValue);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        com.transsion.shorttv_pugc.ui.adapter.o oVar3 = shotTvDialogListFragment.adapter;
                        if (oVar3 != null) {
                            oVar3.notifyItemRangeInserted(((Number) CollectionsKt.i0(listI)).intValue(), listI.size());
                        }
                    } else {
                        it = listI.iterator();
                        while (it.hasNext()) {
                            iIntValue = ((Number) it.next()).intValue();
                            oVar = shotTvDialogListFragment.adapter;
                            if (oVar != null) {
                                oVar.notifyItemInserted(iIntValue);
                            }
                        }
                    }
                }
                com.transsion.shorttv_pugc.ui.adapter.o oVar4 = shotTvDialogListFragment.adapter;
                if (oVar4 != null && (gVarO1 = oVar4.o0()) != null) {
                    gVarO1.e(false);
                }
                ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.v0(arrayList);
                Integer numValueOf = uGCVideo != null ? Integer.valueOf(uGCVideo.getEp()) : null;
                ShorttvModel.UGCVideo uGCVideo2 = (ShorttvModel.UGCVideo) CollectionsKt.k0(arrayList);
                Integer numValueOf2 = uGCVideo2 != null ? Integer.valueOf(uGCVideo2.getEp()) : null;
                ShorttvModel.UGCVideo uGCVideo3 = (ShorttvModel.UGCVideo) CollectionsKt.v0(shotTvDialogListFragment.q0().p());
                if (Intrinsics.c(numValueOf, uGCVideo3 != null ? Integer.valueOf(uGCVideo3.getEp()) : null)) {
                    com.transsion.shorttv_pugc.ui.adapter.o oVar5 = shotTvDialogListFragment.adapter;
                    if (oVar5 != null && (fVarH3 = oVar5.h0()) != null) {
                        r6.f.u(fVarH3, false, 1, null);
                    }
                    com.transsion.shorttv_pugc.ui.adapter.o oVar6 = shotTvDialogListFragment.adapter;
                    if (oVar6 != null && (fVarH2 = oVar6.h0()) != null) {
                        fVarH2.z(false);
                    }
                } else {
                    int i13 = shotTvDialogListFragment.endEp;
                    if (numValueOf != null && numValueOf.intValue() == i13) {
                        com.transsion.shorttv_pugc.ui.adapter.o oVar7 = shotTvDialogListFragment.adapter;
                        if (oVar7 != null && (fVarH1 = oVar7.h0()) != null) {
                            fVarH1.z(false);
                        }
                    } else {
                        int i14 = shotTvDialogListFragment.startEp;
                        if (numValueOf2 != null && numValueOf2.intValue() == i14) {
                            com.transsion.shorttv_pugc.ui.adapter.o oVar8 = shotTvDialogListFragment.adapter;
                            if (oVar8 != null && (gVarO0 = oVar8.o0()) != null) {
                                gVarO0.d(false);
                            }
                        } else {
                            com.transsion.shorttv_pugc.ui.adapter.o oVar9 = shotTvDialogListFragment.adapter;
                            if (oVar9 != null && (fVarH0 = oVar9.h0()) != null) {
                                fVarH0.s();
                            }
                        }
                    }
                }
            } else {
                com.transsion.shorttv_pugc.ui.adapter.o oVar10 = shotTvDialogListFragment.adapter;
                if (oVar10 != null && (fVarH5 = oVar10.h0()) != null) {
                    fVarH5.v();
                }
                com.transsion.shorttv_pugc.ui.adapter.o oVar11 = shotTvDialogListFragment.adapter;
                if (oVar11 != null && (fVarH4 = oVar11.h0()) != null) {
                    fVarH4.z(false);
                }
                com.transsion.shorttv_pugc.ui.adapter.o oVar12 = shotTvDialogListFragment.adapter;
                if (oVar12 != null && (gVarO2 = oVar12.o0()) != null) {
                    gVarO2.e(false);
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t0() {
        List<Object> data;
        ShorttvModel.UGCVideo uGCVideo;
        List<Object> data2;
        ShorttvModel.UGCVideo uGCVideo2;
        com.transsion.shorttv_pugc.ui.adapter.o oVar = this.adapter;
        if (oVar == null || (data2 = oVar.getData()) == null || (uGCVideo2 = (ShorttvModel.UGCVideo) CollectionsKt.v0(data2)) == null || uGCVideo2.getEp() != this.endEp) {
            String strR = q0().r();
            com.transsion.shorttv_pugc.ui.adapter.o oVar2 = this.adapter;
            int ep2 = (oVar2 == null || (data = oVar2.getData()) == null || (uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.v0(data)) == null) ? this.startEp : uGCVideo.getEp();
            q0().Z(strR, ep2, Math.min(ep2 + 10, this.endEp));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u0() {
        int iMax;
        int iMax2;
        r6.g gVarO0;
        List<Object> data;
        ShorttvModel.UGCVideo uGCVideo;
        com.transsion.shorttv_pugc.ui.adapter.o oVar = this.adapter;
        Integer numValueOf = (oVar == null || (data = oVar.getData()) == null || (uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.k0(data)) == null) ? null : Integer.valueOf(uGCVideo.getEp());
        if (numValueOf == null) {
            iMax2 = this.startEp;
            iMax = iMax2 + 10;
        } else {
            if (numValueOf.intValue() == this.startEp) {
                return;
            }
            iMax = Math.max(numValueOf.intValue() - 1, this.startEp);
            iMax2 = Math.max(iMax - 10, this.startEp);
        }
        com.transsion.shorttv_pugc.ui.adapter.o oVar2 = this.adapter;
        if (oVar2 != null && (gVarO0 = oVar2.o0()) != null) {
            gVarO0.e(true);
        }
        q0().Z(q0().r(), iMax2, iMax);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(ShotTvDialogListFragment shotTvDialogListFragment, com.transsion.shorttv_pugc.ui.adapter.o oVar, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        if (shotTvDialogListFragment.lastClickTime == 0 || System.currentTimeMillis() - shotTvDialogListFragment.lastClickTime > 1000) {
            shotTvDialogListFragment.lastClickTime = System.currentTimeMillis();
            ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) oVar.getData().get(i11);
            ut.a aVar = ut.a.f76891a;
            String strI = shotTvDialogListFragment.q0().I();
            if (strI == null) {
                strI = "";
            }
            aVar.a(WebConstants.FIELD_ITEM, uGCVideo, "up Next", strI);
            shotTvDialogListFragment.A0(uGCVideo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(ShotTvDialogListFragment shotTvDialogListFragment) {
        shotTvDialogListFragment.t0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(ShotTvDialogListFragment shotTvDialogListFragment) {
        shotTvDialogListFragment.u0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(LinearLayoutManager linearLayoutManager, int i11) {
        linearLayoutManager.scrollToPositionWithOffset(i11, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(LinearLayoutManager linearLayoutManager, int i11) {
        linearLayoutManager.scrollToPositionWithOffset(i11, 0);
    }

    public final void A0(ShorttvModel.UGCVideo item) {
        Intrinsics.h(item, "item");
        if (getParentFragment() instanceof ShortTvEpisodeListDialog) {
            Fragment parentFragment = getParentFragment();
            Intrinsics.f(parentFragment, "null cannot be cast to non-null type com.transsion.shorttv_pugc.ui.dialog.ShortTvEpisodeListDialog");
            ((ShortTvEpisodeListDialog) parentFragment).n0(item);
        }
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initListener() {
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initViewData() {
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initViewModel() {
        q0().u().j(getViewLifecycleOwner(), new d(new Function1() { // from class: com.transsion.shorttv_pugc.ui.fragment.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShotTvDialogListFragment.s0(this.f54205a, (Pair) obj);
            }
        }));
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
    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        this.startEp = arguments != null ? arguments.getInt("start") : this.startEp;
        Bundle arguments2 = getArguments();
        this.endEp = arguments2 != null ? arguments2.getInt(TtmlNode.END) : this.endEp;
        final LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        ms.w wVar = (ms.w) getMViewBinding();
        if (wVar != null) {
            wVar.f69946c.setLayoutManager(linearLayoutManager);
            wVar.f69946c.addOnScrollListener(this.exposureHelper);
            RecyclerView recyclerView = wVar.f69946c;
            final com.transsion.shorttv_pugc.ui.adapter.o oVar = new com.transsion.shorttv_pugc.ui.adapter.o();
            List listZ = q0().z();
            ArrayList arrayList = new ArrayList();
            for (Object obj : listZ) {
                int i11 = this.startEp;
                int i12 = this.endEp;
                int ep2 = ((ShorttvModel.UGCVideo) obj).getEp();
                if (i11 <= ep2 && ep2 <= i12) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                String strR = q0().r();
                int i13 = this.startEp;
                q0().Z(strR, i13, Math.min(i13 + 10, this.endEp));
                FrameLayout loading = wVar.f69945b;
                Intrinsics.g(loading, "loading");
                yr.b.e(loading);
            }
            oVar.n1(arrayList);
            this.adapter = oVar;
            for (ShorttvModel.UGCVideo uGCVideo : q0().z()) {
                int ep3 = uGCVideo.getEp();
                Integer num = (Integer) q0().s().f();
                uGCVideo.setSelected(num != null && ep3 == num.intValue());
            }
            oVar.w1(new p6.d() { // from class: com.transsion.shorttv_pugc.ui.fragment.d0
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i14) {
                    ShotTvDialogListFragment.v0(this.f54207a, oVar, baseQuickAdapter, view2, i14);
                }
            });
            oVar.h0().C(new UGCVideoDetailHorLoadMoreView());
            oVar.h0().z(true);
            oVar.h0().y(true);
            oVar.h0().E(3);
            oVar.h0().D(new p6.f() { // from class: com.transsion.shorttv_pugc.ui.fragment.e0
                @Override // p6.f
                public final void a() {
                    ShotTvDialogListFragment.w0(this.f54256a);
                }
            });
            oVar.o0().d(true);
            oVar.o0().c(2);
            oVar.o0().b(new p6.g() { // from class: com.transsion.shorttv_pugc.ui.fragment.f0
                @Override // p6.g
                public final void a() {
                    ShotTvDialogListFragment.x0(this.f54259a);
                }
            });
            Integer num2 = (Integer) q0().s().f();
            int iIntValue = num2 != null ? num2.intValue() : 1;
            int i14 = this.startEp;
            final int i15 = iIntValue - i14;
            int i16 = this.endEp;
            if (iIntValue <= i16 && i14 <= iIntValue) {
                RecyclerView rv2 = wVar.f69946c;
                Intrinsics.g(rv2, "rv");
                final int iR0 = ((i16 - i14) + 1) - r0(rv2);
                if (i15 <= iR0) {
                    wVar.f69946c.post(new Runnable() { // from class: com.transsion.shorttv_pugc.ui.fragment.g0
                        @Override // java.lang.Runnable
                        public final void run() {
                            ShotTvDialogListFragment.y0(linearLayoutManager, i15);
                        }
                    });
                } else {
                    wVar.f69946c.post(new Runnable() { // from class: com.transsion.shorttv_pugc.ui.fragment.h0
                        @Override // java.lang.Runnable
                        public final void run() {
                            ShotTvDialogListFragment.z0(linearLayoutManager, iR0);
                        }
                    });
                }
            }
            recyclerView.setAdapter(oVar);
            wVar.f69946c.addOnScrollListener(new c(linearLayoutManager, new Ref.BooleanRef(), 3, this, new Ref.BooleanRef(), 3));
            wVar.f69946c.getLayoutParams().height = com.blankj.utilcode.util.i.e(500.0f);
        }
        this.isInit = true;
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    /* JADX INFO: renamed from: p0, reason: merged with bridge method [inline-methods] */
    public ms.w getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        ms.w wVarC = ms.w.c(inflater);
        Intrinsics.g(wVarC, "inflate(...)");
        return wVarC;
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void retryLoadData() {
    }
}
