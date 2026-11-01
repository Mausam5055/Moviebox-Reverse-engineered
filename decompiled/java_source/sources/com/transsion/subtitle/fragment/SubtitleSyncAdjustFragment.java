package com.transsion.subtitle.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.subtitle.view.SubtitleSyncAdjustView;
import com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u001d\u0010\n\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0016\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0016\u0010\u0011J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u0017\u0010\u001e\u001a\u00020\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\"R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006("}, d2 = {"Lcom/transsion/subtitle/fragment/SubtitleSyncAdjustFragment;", "Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;", "Lfu/h;", "<init>", "()V", "", "l0", "", "Leu/a;", "list", "n0", "(Ljava/util/List;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "j0", "(Landroid/view/LayoutInflater;)Lfu/h;", "initView", "", "hidden", "onHiddenChanged", "(Z)V", "lazyLoadData", "Lhu/b;", "mCallback", "m0", "(Lhu/b;)V", "Lcom/transsion/subtitle/helper/j;", "g", "Lcom/transsion/subtitle/helper/j;", "stHelper", "h", "ndHelper", "i", "Lhu/b;", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubtitleSyncAdjustFragment extends SubtitleBaseFragment<fu.h> {

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private com.transsion.subtitle.helper.j stHelper;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private com.transsion.subtitle.helper.j ndHelper;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private hu.b mCallback;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(SubtitleSyncAdjustFragment subtitleSyncAdjustFragment, View view) {
        androidx.p009lifecycle.b0 b0VarH;
        SubtitleDownloadViewModel viewModel = subtitleSyncAdjustFragment.getViewModel();
        if (viewModel == null || (b0VarH = viewModel.h()) == null) {
            return;
        }
        b0VarH.q("SELECT_SUBTITLE");
    }

    private final void l0() {
        List<eu.a> listL;
        ArrayList arrayList = new ArrayList();
        hu.b bVar = this.mCallback;
        if (bVar == null || (listL = bVar.j()) == null) {
            listL = CollectionsKt.l();
        }
        for (eu.a aVar : listL) {
            if (aVar.f()) {
                arrayList.add(aVar);
            }
        }
        n0(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void n0(List list) {
        fu.h hVar;
        SubtitleSyncAdjustView subtitleSyncAdjustView;
        fu.h hVar2;
        SubtitleSyncAdjustView subtitleSyncAdjustView2;
        Space space;
        Space space2;
        SubtitleSyncAdjustView subtitleSyncAdjustView3;
        SubtitleSyncAdjustView subtitleSyncAdjustView4;
        SubtitleSyncAdjustView subtitleSyncAdjustView5;
        com.transsion.subtitle.a.f54738a.a(SubtitleSyncAdjustFragment.class.getSimpleName() + " --> showSyncAdjustLayout() --> list.size = " + list.size());
        fu.h hVar3 = (fu.h) getMViewBinding();
        if (hVar3 != null && (subtitleSyncAdjustView5 = hVar3.f62522f) != null) {
            subtitleSyncAdjustView5.setVisibility(8);
        }
        fu.h hVar4 = (fu.h) getMViewBinding();
        if (hVar4 != null && (subtitleSyncAdjustView4 = hVar4.f62521e) != null) {
            subtitleSyncAdjustView4.setVisibility(8);
        }
        if (list.size() == 1) {
            eu.a aVar = (eu.a) list.get(0);
            fu.h hVar5 = (fu.h) getMViewBinding();
            if (hVar5 != null && (subtitleSyncAdjustView3 = hVar5.f62522f) != null) {
                subtitleSyncAdjustView3.setVisibility(0);
                subtitleSyncAdjustView3.setTitle("");
                com.transsion.subtitle.helper.j jVar = this.stHelper;
                if (jVar != null) {
                    jVar.r(aVar);
                }
                com.transsion.subtitle.helper.j jVar2 = this.stHelper;
                if (jVar2 != null) {
                    jVar2.q(new Function2() { // from class: com.transsion.subtitle.fragment.b0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return SubtitleSyncAdjustFragment.q0(this.f54854a, (eu.a) obj, ((Long) obj2).longValue());
                        }
                    });
                }
            }
            fu.h hVar6 = (fu.h) getMViewBinding();
            if (hVar6 == null || (space2 = hVar6.f62519c) == null) {
                return;
            }
            space2.setVisibility(8);
            return;
        }
        fu.h hVar7 = (fu.h) getMViewBinding();
        if (hVar7 != null && (space = hVar7.f62519c) != null) {
            space.setVisibility(0);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            eu.a aVar2 = (eu.a) it.next();
            if (TextUtils.equals(aVar2.a(), "1st") && (hVar2 = (fu.h) getMViewBinding()) != null && (subtitleSyncAdjustView2 = hVar2.f62522f) != null) {
                subtitleSyncAdjustView2.setVisibility(0);
                subtitleSyncAdjustView2.setTitle("1st " + aVar2.b().getName());
                com.transsion.subtitle.helper.j jVar3 = this.stHelper;
                if (jVar3 != null) {
                    jVar3.r(aVar2);
                }
                com.transsion.subtitle.helper.j jVar4 = this.stHelper;
                if (jVar4 != null) {
                    jVar4.q(new Function2() { // from class: com.transsion.subtitle.fragment.c0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return SubtitleSyncAdjustFragment.o0(this.f54856a, (eu.a) obj, ((Long) obj2).longValue());
                        }
                    });
                }
            }
            if (TextUtils.equals(aVar2.a(), "2nd") && (hVar = (fu.h) getMViewBinding()) != null && (subtitleSyncAdjustView = hVar.f62521e) != null) {
                subtitleSyncAdjustView.setVisibility(0);
                subtitleSyncAdjustView.setTitle("2nd " + aVar2.b().getName());
                com.transsion.subtitle.helper.j jVar5 = this.ndHelper;
                if (jVar5 != null) {
                    jVar5.r(aVar2);
                }
                com.transsion.subtitle.helper.j jVar6 = this.ndHelper;
                if (jVar6 != null) {
                    jVar6.q(new Function2() { // from class: com.transsion.subtitle.fragment.d0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return SubtitleSyncAdjustFragment.p0(this.f54858a, (eu.a) obj, ((Long) obj2).longValue());
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o0(SubtitleSyncAdjustFragment subtitleSyncAdjustFragment, eu.a aVar, long j11) {
        hu.b bVar = subtitleSyncAdjustFragment.mCallback;
        if (bVar != null) {
            bVar.d(aVar, j11);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p0(SubtitleSyncAdjustFragment subtitleSyncAdjustFragment, eu.a aVar, long j11) {
        hu.b bVar = subtitleSyncAdjustFragment.mCallback;
        if (bVar != null) {
            bVar.d(aVar, j11);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q0(SubtitleSyncAdjustFragment subtitleSyncAdjustFragment, eu.a aVar, long j11) {
        hu.b bVar = subtitleSyncAdjustFragment.mCallback;
        if (bVar != null) {
            bVar.d(aVar, j11);
        }
        return Unit.f67061a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        AppCompatImageView appCompatImageView;
        Intrinsics.h(view, "view");
        fu.h hVar = (fu.h) getMViewBinding();
        if (hVar != null && (appCompatImageView = hVar.f62518b) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.subtitle.fragment.a0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SubtitleSyncAdjustFragment.k0(this.f54852a, view2);
                }
            });
        }
        fu.h hVar2 = (fu.h) getMViewBinding();
        com.transsion.subtitle.helper.j jVar = new com.transsion.subtitle.helper.j(hVar2 != null ? hVar2.f62522f : null);
        jVar.o(null);
        this.stHelper = jVar;
        fu.h hVar3 = (fu.h) getMViewBinding();
        com.transsion.subtitle.helper.j jVar2 = new com.transsion.subtitle.helper.j(hVar3 != null ? hVar3.f62521e : null);
        jVar2.o(null);
        this.ndHelper = jVar2;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
    public fu.h getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        fu.h hVarC = fu.h.c(inflater);
        Intrinsics.g(hVarC, "inflate(...)");
        return hVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        l0();
    }

    public final void m0(hu.b mCallback) {
        this.mCallback = mCallback;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        l0();
    }

    @Override // com.transsion.subtitle.fragment.SubtitleBaseFragment, com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        e0("dialog_subtitle_sync_adjust");
    }
}
