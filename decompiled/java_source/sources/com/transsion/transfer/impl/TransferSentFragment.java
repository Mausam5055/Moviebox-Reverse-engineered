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
import kotlin.Triple;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 $2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0017¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0017¢\u0006\u0004\b\u0011\u0010\u0004J\r\u0010\u0012\u001a\u00020\u0005¢\u0006\u0004\b\u0012\u0010\u0004R!\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00140\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u0016\u001a\u0004\b!\u0010\"¨\u0006%"}, d2 = {"Lcom/transsion/transfer/impl/TransferSentFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lgv/i;", "<init>", "()V", "", "r0", "Landroid/view/LayoutInflater;", "inflater", "k0", "(Landroid/view/LayoutInflater;)Lgv/i;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "p0", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/transsion/transfer/impl/entity/FileData;", "a", "Lkotlin/Lazy;", "h0", "()Ljava/util/concurrent/CopyOnWriteArrayList;", "data", "Lcom/transsion/transfer/impl/adapter/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "i0", "()Lcom/transsion/transfer/impl/adapter/b;", "mAdapter", "Lcom/transsion/transfer/impl/k;", "c", "j0", "()Lcom/transsion/transfer/impl/k;", "serverViewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Transfer_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TransferSentFragment extends BaseFragment<gv.i> {

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy data = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.t
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TransferSentFragment.g0();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy mAdapter = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.u
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TransferSentFragment.o0(this.f55821a);
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy serverViewModel = LazyKt.b(new Function0() { // from class: com.transsion.transfer.impl.v
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TransferSentFragment.q0(this.f55822a);
        }
    });

    /* JADX INFO: renamed from: com.transsion.transfer.impl.TransferSentFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TransferSentFragment a() {
            TransferSentFragment transferSentFragment = new TransferSentFragment();
            transferSentFragment.setArguments(androidx.core.os.d.a());
            return transferSentFragment;
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f55633a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55633a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f55633a;
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
            this.f55633a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CopyOnWriteArrayList g0() {
        return new CopyOnWriteArrayList();
    }

    private final CopyOnWriteArrayList h0() {
        return (CopyOnWriteArrayList) this.data.getValue();
    }

    private final com.transsion.transfer.impl.adapter.b i0() {
        return (com.transsion.transfer.impl.adapter.b) this.mAdapter.getValue();
    }

    private final k j0() {
        return (k) this.serverViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l0(TransferSentFragment transferSentFragment, Pair pair) {
        kv.b.f68395a.q(((List) pair.getSecond()).size(), transferSentFragment.j0().t());
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m0(TransferSentFragment transferSentFragment, Triple triple) {
        Object next;
        Iterator it = mv.b.f70015a.d().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(triple.getSecond(), ((FileData) next).getFileRemotePath()));
        FileData fileData = (FileData) next;
        if (fileData != null) {
            transferSentFragment.i0().I1((String) triple.getSecond(), fileData);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n0(TransferSentFragment transferSentFragment, Pair pair) {
        if (!((Boolean) pair.getSecond()).booleanValue()) {
            transferSentFragment.i0().H1();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.transfer.impl.adapter.b o0(TransferSentFragment transferSentFragment) {
        androidx.p009lifecycle.u viewLifecycleOwner = transferSentFragment.getViewLifecycleOwner();
        Intrinsics.g(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        return new com.transsion.transfer.impl.adapter.b(androidx.p009lifecycle.v.a(viewLifecycleOwner), true, transferSentFragment.h0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final k q0(TransferSentFragment transferSentFragment) {
        FragmentActivity fragmentActivityRequireActivity = transferSentFragment.requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        return (k) new v0(fragmentActivityRequireActivity).a(k.class);
    }

    private final void r0() {
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        if (h0().isEmpty()) {
            gv.i mViewBinding = getMViewBinding();
            if (mViewBinding == null || (linearLayout2 = mViewBinding.f64012c) == null) {
                return;
            }
            jg.c.k(linearLayout2);
            return;
        }
        gv.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (linearLayout = mViewBinding2.f64012c) == null) {
            return;
        }
        jg.c.g(linearLayout);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        RecyclerView recyclerView;
        Intrinsics.h(view, "view");
        gv.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f64011b) != null) {
            recyclerView.setItemAnimator(null);
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
            recyclerView.setAdapter(i0());
        }
        j0().u().j(this, new b(new Function1() { // from class: com.transsion.transfer.impl.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferSentFragment.l0(this.f55824a, (Pair) obj);
            }
        }));
        j0().v().j(this, new b(new Function1() { // from class: com.transsion.transfer.impl.x
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferSentFragment.m0(this.f55825a, (Triple) obj);
            }
        }));
        j0().o().j(this, new b(new Function1() { // from class: com.transsion.transfer.impl.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferSentFragment.n0(this.f55826a, (Pair) obj);
            }
        }));
        r0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public gv.i getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        gv.i iVarC = gv.i.c(inflater);
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        h0().addAll(mv.b.f70015a.d());
        i0().notifyDataSetChanged();
        r0();
    }

    public final void p0() {
        List listD = mv.b.f70015a.d();
        if (!listD.isEmpty()) {
            List<Object> data = i0().getData();
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
            h0().clear();
            h0().addAll(CollectionsKt.U0(listR0));
            i0().notifyDataSetChanged();
        }
        r0();
    }
}
