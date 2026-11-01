package com.transsion.ad.test.ad_example;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.icon.BiddingIconAdManager;
import com.transsion.ad.bidding.icon.BiddingWrapperIconBean;
import com.transsion.ad.bidding.icon.BiddingWrapperIconView;
import com.transsion.ad.test.TestBaseActivity;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\rB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdIconActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;", "a", "Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;", "iconAdapter", "Lji/m;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lji/m;", "binding", "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;", "c", "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;", "adManager", "", "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/List;", "iconList", "Ldi/a;", "e", "Ldi/a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdIconActivity extends TestBaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private a iconAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ji.m binding;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private BiddingIconAdManager adManager = new BiddingIconAdManager();

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final List iconList = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final di.a listener = new b();

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\fR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;", "adManager", "<init>", "(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;)V", "F", "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;", "C1", "()Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;", "", "G", "I", "designW", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class a extends BaseQuickAdapter {

        /* JADX INFO: renamed from: F, reason: from kotlin metadata */
        private final BiddingIconAdManager adManager;

        /* JADX INFO: renamed from: G, reason: from kotlin metadata */
        private final int designW;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(BiddingIconAdManager adManager) {
            super(R$layout.item_test_ad_icon_layout, null, 2, null);
            Intrinsics.h(adManager, "adManager");
            this.adManager = adManager;
            this.designW = com.blankj.utilcode.util.a0.a(160.0f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
        public void F(BaseViewHolder holder, BiddingWrapperIconBean item) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            BiddingWrapperIconView biddingWrapperIconView = (BiddingWrapperIconView) holder.getViewOrNull(R$id.wrapperIconView);
            if (biddingWrapperIconView != null) {
                biddingWrapperIconView.getLayoutParams().width = this.designW;
            } else {
                biddingWrapperIconView = null;
            }
            if (biddingWrapperIconView != null) {
                biddingWrapperIconView.showData(this.adManager, item, new f0(getContext()));
            }
        }

        /* JADX INFO: renamed from: C1, reason: from getter */
        public final BiddingIconAdManager getAdManager() {
            return this.adManager;
        }
    }

    public static final class b extends di.a {
        b() {
        }

        @Override // di.a
        public void e(TAdErrorCode tAdErrorCode, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.e(tAdErrorCode, biddingIntermediateMaterialBean);
            oi.a.i(oi.a.f71022a, "", 0, false, 6, null);
            oi.b.a.c(TestAdIconActivity.this, 6, "onBiddingBuyOutError() --> PS兜底加载失败 --> errorMessage = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), null, false, 12, null);
        }

        @Override // com.hisavana.common.interfacz.TAdditionalListener
        public void onLoadFailure(TAdErrorCode tAdErrorCode, AdditionalInfo p11) {
            Intrinsics.h(p11, "p1");
            super.onLoadFailure(tAdErrorCode, p11);
            oi.b.a.c(TestAdIconActivity.this, 6, "onLoadFailure() --> Hi程序化加载失败 --> errorMessage = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), null, false, 12, null);
        }

        @Override // di.a
        public void w(List list) {
            super.w(list);
            a aVar = TestAdIconActivity.this.iconAdapter;
            if (aVar != null) {
                aVar.n1(list);
            }
        }
    }

    public static final class c extends RecyclerView.l {
        c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            parent.getChildAdapterPosition(view);
            outRect.right = com.blankj.utilcode.util.a0.a(12.0f);
        }
    }

    /* JADX INFO: renamed from: com.transsion.ad.test.ad_example.TestAdIconActivity$onCreate$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ad.test.ad_example.TestAdIconActivity$onCreate$2", f = "TestAdIconActivity.kt", l = {96}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TestAdIconActivity.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                BiddingIconAdManager biddingIconAdManager = TestAdIconActivity.this.adManager;
                di.a aVar = TestAdIconActivity.this.listener;
                this.label = 1;
                if (BiddingIconAdManager.S(biddingIconAdManager, "MBNativeTestId", true, 10, aVar, null, this, 16, null) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_ic";
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ji.m mVarC = ji.m.c(getLayoutInflater());
        this.binding = mVarC;
        if (mVarC == null) {
            Intrinsics.z("binding");
            mVarC = null;
        }
        setContentView(mVarC.getRoot());
        ji.m mVar = this.binding;
        if (mVar == null) {
            Intrinsics.z("binding");
            mVar = null;
        }
        RecyclerView recyclerView = mVar.f66146b;
        a aVar = new a(this.adManager);
        this.iconAdapter = aVar;
        recyclerView.setAdapter(aVar);
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 0, false));
        recyclerView.addItemDecoration(new c());
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass2(null), 3, null);
    }
}
