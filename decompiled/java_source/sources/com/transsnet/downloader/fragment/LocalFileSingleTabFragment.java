package com.transsnet.downloader.fragment;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.bean.HistoricalPlayRecordMultipleEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Locale;
import kotlin.Deprecated;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000e\u0010\nJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;", "Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;", "<init>", "()V", "", "receiveArguments", "initViewData", "initViewModel", "", "getEmptyDescText", "()Ljava/lang/String;", "", "T0", "()Z", "getPageName", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/String;", "tabName", "", "l", "I", "tabIndex", "m", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LocalFileSingleTabFragment extends LocalFileBaseFragment {

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private String tabName = "";

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private int tabIndex;

    public static final class b extends RecyclerView.l {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            if (parent.getAdapter() == null || childAdapterPosition != 0) {
                return;
            }
            outRect.top = com.blankj.utilcode.util.a0.a(12.0f);
        }
    }

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.LocalFileSingleTabFragment$initViewModel$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.fragment.LocalFileSingleTabFragment$initViewModel$1", f = "LocalFileSingleTabFragment.kt", l = {95}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LocalFileSingleTabFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.y0 y0VarP = LocalFileSingleTabFragment.this.G0().P();
                final LocalFileSingleTabFragment localFileSingleTabFragment = LocalFileSingleTabFragment.this;
                kotlinx.coroutines.flow.c cVar = new kotlinx.coroutines.flow.c() { // from class: com.transsnet.downloader.fragment.LocalFileSingleTabFragment.initViewModel.1.1

                    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.LocalFileSingleTabFragment$initViewModel$1$1$1, reason: invalid class name and collision with other inner class name */
                    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
                    @DebugMetadata(c = "com.transsnet.downloader.fragment.LocalFileSingleTabFragment$initViewModel$1$1$1", f = "LocalFileSingleTabFragment.kt", l = {}, m = "invokeSuspend")
                    static final class C06931 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
                        final /* synthetic */ int $it;
                        int label;
                        final /* synthetic */ LocalFileSingleTabFragment this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C06931(int i11, LocalFileSingleTabFragment localFileSingleTabFragment, Continuation<? super C06931> continuation) {
                            super(2, continuation);
                            this.$it = i11;
                            this.this$0 = localFileSingleTabFragment;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new C06931(this.$it, this.this$0, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
                            return ((C06931) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) throws Throwable {
                            IntrinsicsKt.f();
                            if (this.label != 0) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.b(obj);
                            int i11 = this.$it;
                            if (i11 >= 0) {
                                com.transsnet.downloader.adapter.a aVarF0 = this.this$0.getMAllHistoricalPlayRecordAdapter();
                                if (aVarF0 != null) {
                                    aVarF0.notifyItemChanged(this.$it);
                                }
                                com.transsnet.downloader.viewmodel.a0.f60085a.t("刷新UI index = " + this.$it);
                            } else {
                                com.transsnet.downloader.viewmodel.a0.f60085a.t(" 异常  index = " + i11);
                            }
                            return Unit.f67061a;
                        }
                    }

                    public final Object a(int i12, Continuation continuation) {
                        Object objG = kotlinx.coroutines.i.g(kotlinx.coroutines.y0.c(), new C06931(i12, localFileSingleTabFragment, null), continuation);
                        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
                    }

                    @Override // kotlinx.coroutines.flow.c
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return a(((Number) obj2).intValue(), continuation);
                    }
                };
                this.label = 1;
                if (y0VarP.a(cVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p1(LocalFileSingleTabFragment localFileSingleTabFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        localFileSingleTabFragment.V0(adapter, view, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q1(LocalFileSingleTabFragment localFileSingleTabFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object obj = adapter.getData().get(i11);
        localFileSingleTabFragment.Y0(obj instanceof HistoricalPlayRecordMultipleEntity ? (HistoricalPlayRecordMultipleEntity) obj : null, i11, localFileSingleTabFragment.tabIndex);
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment
    public boolean T0() {
        return true;
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment
    public String getEmptyDescText() {
        String string = getString(R$string.download_no_local_file_tips_2);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment
    public String getPageName() {
        String lowerCase = this.tabName.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        return "file_manager_tab_" + lowerCase;
    }

    @Override // com.transsnet.downloader.fragment.LocalFileBaseFragment, com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        RecyclerView recyclerView;
        r6.f fVarH0;
        TitleLayout titleLayout;
        py.s mViewBinding = getMViewBinding();
        if (mViewBinding != null && (titleLayout = mViewBinding.f72909d) != null) {
            titleLayout.setVisibility(8);
        }
        com.transsnet.downloader.adapter.a aVarF0 = getMAllHistoricalPlayRecordAdapter();
        if (aVarF0 != null && (fVarH0 = aVarF0.h0()) != null) {
            fVarH0.z(false);
        }
        py.s mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (recyclerView = mViewBinding2.f72907b) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(requireContext()));
        com.transsnet.downloader.adapter.a aVar = new com.transsnet.downloader.adapter.a(T0());
        aVar.w1(new p6.d() { // from class: com.transsnet.downloader.fragment.d7
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                LocalFileSingleTabFragment.p1(this.f59171a, baseQuickAdapter, view, i11);
            }
        });
        aVar.l(R$id.ivTopRightCornerPoint);
        aVar.s1(new p6.b() { // from class: com.transsnet.downloader.fragment.e7
            @Override // p6.b
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                LocalFileSingleTabFragment.q1(this.f59182a, baseQuickAdapter, view, i11);
            }
        });
        b1(aVar);
        recyclerView.setAdapter(getMAllHistoricalPlayRecordAdapter());
        recyclerView.addItemDecoration(new b());
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        String string;
        super.receiveArguments();
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("extra_download_out_file_tab_name")) == null) {
            string = "";
        }
        this.tabName = string;
        Bundle arguments2 = getArguments();
        this.tabIndex = arguments2 != null ? arguments2.getInt("extra_position") : 0;
    }
}
