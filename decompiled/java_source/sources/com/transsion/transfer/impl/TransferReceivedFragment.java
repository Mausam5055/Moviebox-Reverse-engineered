package com.transsion.transfer.impl;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.transfer.impl.entity.FileData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 &2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\r\u0010\u0012\u001a\u00020\u0005¢\u0006\u0004\b\u0012\u0010\u0004J\r\u0010\u0013\u001a\u00020\u0005¢\u0006\u0004\b\u0013\u0010\u0004J\r\u0010\u0014\u001a\u00020\u0005¢\u0006\u0004\b\u0014\u0010\u0004R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R!\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0017\u001a\u0004\b\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u0017\u001a\u0004\b#\u0010$¨\u0006'"}, d2 = {"Lcom/transsion/transfer/impl/TransferReceivedFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lgv/h;", "<init>", "()V", "", "v0", "Landroid/view/LayoutInflater;", "inflater", "n0", "(Landroid/view/LayoutInflater;)Lgv/h;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "m0", "t0", "u0", "Lcom/transsion/transfer/impl/ClientViewModel;", "a", "Lkotlin/Lazy;", "j0", "()Lcom/transsion/transfer/impl/ClientViewModel;", "clientViewModel", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/transsion/transfer/impl/entity/FileData;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "k0", "()Ljava/util/concurrent/CopyOnWriteArrayList;", "data", "Lcom/transsion/transfer/impl/adapter/b;", "c", "l0", "()Lcom/transsion/transfer/impl/adapter/b;", "mAdapter", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TransferReceivedFragment extends BaseFragment<gv.h> {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy clientViewModel = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TransferReceivedFragment.h0(this.f55777a);
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy data = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TransferReceivedFragment.i0();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy mAdapter = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.r
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TransferReceivedFragment.r0(this.f55779a);
        }
    });

    /* JADX INFO: renamed from: com.transsion.transfer.impl.TransferReceivedFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TransferReceivedFragment a() {
            TransferReceivedFragment transferReceivedFragment = new TransferReceivedFragment();
            transferReceivedFragment.setArguments(androidx.core.os.d.a());
            return transferReceivedFragment;
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f55628a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55628a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f55628a;
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
            this.f55628a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClientViewModel h0(TransferReceivedFragment transferReceivedFragment) {
        FragmentActivity fragmentActivityRequireActivity = transferReceivedFragment.requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        return (ClientViewModel) new v0(fragmentActivityRequireActivity).a(ClientViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CopyOnWriteArrayList i0() {
        return new CopyOnWriteArrayList();
    }

    private final ClientViewModel j0() {
        return (ClientViewModel) this.clientViewModel.getValue();
    }

    private final CopyOnWriteArrayList k0() {
        return (CopyOnWriteArrayList) this.data.getValue();
    }

    private final com.transsion.transfer.impl.adapter.b l0() {
        return (com.transsion.transfer.impl.adapter.b) this.mAdapter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o0(TransferReceivedFragment transferReceivedFragment, Pair pair) {
        Object next;
        Iterator it = mv.a.f70013a.d().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((FileData) next).getFileRemotePath(), pair.getFirst()));
        FileData fileData = (FileData) next;
        if (fileData != null) {
            transferReceivedFragment.l0().I1((String) pair.getFirst(), fileData);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p0(TransferReceivedFragment transferReceivedFragment, List list) {
        List list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            List<Object> data = transferReceivedFragment.l0().getData();
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.f(MapsKt.e(CollectionsKt.v(data, 10)), 16));
            for (Object obj : data) {
                linkedHashMap.put(((FileData) obj).getFileRemotePath(), obj);
            }
            List list3 = list;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt.f(MapsKt.e(CollectionsKt.v(list3, 10)), 16));
            for (Object obj2 : list3) {
                linkedHashMap2.put(((FileData) obj2).getFileRemotePath(), obj2);
            }
            List listR0 = CollectionsKt.R0(MapsKt.o(linkedHashMap, linkedHashMap2).values());
            transferReceivedFragment.k0().clear();
            List list4 = listR0;
            transferReceivedFragment.k0().addAll(CollectionsKt.U0(list4));
            transferReceivedFragment.l0().notifyDataSetChanged();
            transferReceivedFragment.j0().C(CollectionsKt.U0(list4));
        }
        transferReceivedFragment.v0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q0(TransferReceivedFragment transferReceivedFragment, boolean z10, String error) {
        Intrinsics.h(error, "error");
        if (z10) {
            transferReceivedFragment.j0().s(false);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.transfer.impl.adapter.b r0(final TransferReceivedFragment transferReceivedFragment) {
        androidx.p009lifecycle.u viewLifecycleOwner = transferReceivedFragment.getViewLifecycleOwner();
        Intrinsics.g(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        com.transsion.transfer.impl.adapter.b bVar = new com.transsion.transfer.impl.adapter.b(androidx.p009lifecycle.v.a(viewLifecycleOwner), false, transferReceivedFragment.k0());
        bVar.J1(new Function1() { // from class: com.transsion.transfer.impl.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferReceivedFragment.s0(this.f55781a, (FileData) obj);
            }
        });
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s0(TransferReceivedFragment transferReceivedFragment, FileData it) {
        Intrinsics.h(it, "it");
        transferReceivedFragment.j0().y(it);
        return Unit.f67061a;
    }

    private final void v0() {
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        if (k0().isEmpty()) {
            gv.h mViewBinding = getMViewBinding();
            if (mViewBinding == null || (linearLayout2 = mViewBinding.f64009c) == null) {
                return;
            }
            jg.c.k(linearLayout2);
            return;
        }
        gv.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (linearLayout = mViewBinding2.f64009c) == null) {
            return;
        }
        jg.c.g(linearLayout);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        RecyclerView recyclerView;
        Intrinsics.h(view, "view");
        gv.h mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f64008b) != null) {
            recyclerView.setItemAnimator(null);
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
            recyclerView.setAdapter(l0());
        }
        j0().u().j(this, new b(new Function1() { // from class: com.transsion.transfer.impl.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferReceivedFragment.p0(this.f55773a, (List) obj);
            }
        }));
        j0().v().j(this, new b(new Function1() { // from class: com.transsion.transfer.impl.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferReceivedFragment.o0(this.f55775a, (Pair) obj);
            }
        }));
        v0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        if (j0().x()) {
            j0().s(false);
        } else {
            j0().k(new Function2() { // from class: com.transsion.transfer.impl.m
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return TransferReceivedFragment.q0(this.f55771a, ((Boolean) obj).booleanValue(), (String) obj2);
                }
            });
        }
    }

    public final void m0() {
        j0().s(true);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public gv.h getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        gv.h hVarC = gv.h.c(inflater);
        Intrinsics.g(hVarC, "inflate(...)");
        return hVarC;
    }

    public final void t0() {
        l0().H1();
    }

    public final void u0() {
        List listD = mv.a.f70013a.d();
        if (!listD.isEmpty()) {
            List<Object> data = l0().getData();
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.f(MapsKt.e(CollectionsKt.v(data, 10)), 16));
            for (Object obj : data) {
                linkedHashMap.put(((FileData) obj).getFileRemotePath(), obj);
            }
            List list = listD;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt.f(MapsKt.e(CollectionsKt.v(list, 10)), 16));
            for (Object obj2 : list) {
                linkedHashMap2.put(((FileData) obj2).getFileRemotePath(), obj2);
            }
            List listR0 = CollectionsKt.R0(MapsKt.o(linkedHashMap, linkedHashMap2).values());
            k0().clear();
            k0().addAll(CollectionsKt.U0(listR0));
            l0().notifyDataSetChanged();
        }
        v0();
    }
}
