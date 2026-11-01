package com.transsion.ad.test.ad_config;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import androidx.p009lifecycle.v;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.o;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.pslink.PsLinkAdPlan;
import com.transsion.ad.ps.model.ItemDetail;
import com.transsion.ad.ps.model.PSAdTypeEnum;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.ad.test.TestBaseActivity;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import ji.y;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import mi.l;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "Z", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lji/y;", "a", "Lji/y;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdPsOfferActivity extends TestBaseActivity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private y binding;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/ad/db/pslink/PsLinkAdPlan;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class a extends BaseQuickAdapter {
        public a() {
            super(R$layout.test_item_ad_plan_layout, null, 2, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
        public void F(BaseViewHolder holder, PsLinkAdPlan item) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            StringBuilder sb2 = new StringBuilder();
            RecommendInfo recommendInfo = (RecommendInfo) o.d(item.getPsInfoJson(), RecommendInfo.class);
            sb2.append("id = " + item.getId() + "\n");
            sb2.append("nonId = " + item.getNonId() + "\n");
            sb2.append("adSource = " + item.getAdSource() + "\n");
            sb2.append("extAdSlot = " + item.getExtAdSlot() + "\n");
            sb2.append("showMax = " + item.getShowMax() + "\n");
            sb2.append("clickMax = " + item.getClickMax() + "\n");
            sb2.append("showHours = " + item.getShowHours() + "\n");
            sb2.append("showedTimes = " + item.getShowedTimes() + "\n");
            sb2.append("clickedTimes = " + item.getClickedTimes() + "\n");
            sb2.append("showDate = " + item.getShowDate() + "\n");
            sb2.append("rank = " + item.getRank() + "\n");
            sb2.append("psPlanId = " + item.getPsPlanId() + "\n");
            sb2.append("updateTimestamp = " + item.getUpdateTimestamp() + "\n");
            sb2.append("packageName = " + recommendInfo.getPackageName() + "\n");
            ItemDetail detail = recommendInfo.getDetail();
            sb2.append("name = " + (detail != null ? detail.getName() : null) + "\n");
            sb2.append("showAttributionLink = " + recommendInfo.getShowAttributionLink() + "\n");
            sb2.append("attributionLink = " + recommendInfo.getAttributionLink() + "\n");
            sb2.append("deepLink = " + recommendInfo.getDeepLink() + "\n");
            sb2.append("gpLink = " + recommendInfo.getGpLink() + "\n");
            sb2.append("isOffer = " + recommendInfo.isOffer() + "\n");
            Integer adType = recommendInfo.getAdType();
            int value = PSAdTypeEnum.PS_AD_TYPE_USER_RETENTION_1.getValue();
            if (adType != null && adType.intValue() == value) {
                sb2.append("adType = 拉活\n");
            } else {
                sb2.append("adType = 拉新\n");
            }
            holder.setText(R$id.tvConfig, sb2.toString());
        }
    }

    /* JADX INFO: renamed from: com.transsion.ad.test.ad_config.TestAdPsOfferActivity$onCreate$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ad.test.ad_config.TestAdPsOfferActivity$onCreate$2", f = "TestAdPsOfferActivity.kt", l = {46}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ a $mAdPlanAdapter;
        int label;

        /* JADX INFO: renamed from: com.transsion.ad.test.ad_config.TestAdPsOfferActivity$onCreate$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.ad.test.ad_config.TestAdPsOfferActivity$onCreate$2$1", f = "TestAdPsOfferActivity.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE, 50}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            final /* synthetic */ a $mAdPlanAdapter;
            int label;
            final /* synthetic */ TestAdPsOfferActivity this$0;

            /* JADX INFO: renamed from: com.transsion.ad.test.ad_config.TestAdPsOfferActivity$onCreate$2$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
            @DebugMetadata(c = "com.transsion.ad.test.ad_config.TestAdPsOfferActivity$onCreate$2$1$1", f = "TestAdPsOfferActivity.kt", l = {}, m = "invokeSuspend")
            static final class C06011 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                final /* synthetic */ List<PsLinkAdPlan> $allPslink;
                final /* synthetic */ a $mAdPlanAdapter;
                int label;
                final /* synthetic */ TestAdPsOfferActivity this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C06011(a aVar, List<PsLinkAdPlan> list, TestAdPsOfferActivity testAdPsOfferActivity, Continuation<? super C06011> continuation) {
                    super(2, continuation);
                    this.$mAdPlanAdapter = aVar;
                    this.$allPslink = list;
                    this.this$0 = testAdPsOfferActivity;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C06011(this.$mAdPlanAdapter, this.$allPslink, this.this$0, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                    return ((C06011) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    IntrinsicsKt.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                    this.$mAdPlanAdapter.n1(this.$allPslink);
                    List<PsLinkAdPlan> list = this.$allPslink;
                    y yVar = null;
                    String str = "计划数量 = " + (list != null ? Boxing.d(list.size()) : null);
                    y yVar2 = this.this$0.binding;
                    if (yVar2 == null) {
                        Intrinsics.z("binding");
                    } else {
                        yVar = yVar2;
                    }
                    yVar.f66197f.setText(str);
                    return Unit.f67061a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(TestAdPsOfferActivity testAdPsOfferActivity, a aVar, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = testAdPsOfferActivity;
                this.$mAdPlanAdapter = aVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$mAdPlanAdapter, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object objF = IntrinsicsKt.f();
                int i11 = this.label;
                if (i11 != 0) {
                    if (i11 == 1) {
                        ResultKt.b(obj);
                    } else {
                        if (i11 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f67061a;
                }
                ResultKt.b(obj);
                l lVarA0 = MbAdDatabase.INSTANCE.b(this.this$0).A0();
                this.label = 1;
                obj = lVarA0.a(this);
                if (obj == objF) {
                    return objF;
                }
                a2 a2VarC = y0.c();
                C06011 c06011 = new C06011(this.$mAdPlanAdapter, (List) obj, this.this$0, null);
                this.label = 2;
                if (kotlinx.coroutines.i.g(a2VarC, c06011, this) == objF) {
                    return objF;
                }
                return Unit.f67061a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(a aVar, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$mAdPlanAdapter = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TestAdPsOfferActivity.this.new AnonymousClass2(this.$mAdPlanAdapter, continuation);
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
                i0 i0VarB = y0.b();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(TestAdPsOfferActivity.this, this.$mAdPlanAdapter, null);
                this.label = 1;
                if (kotlinx.coroutines.i.g(i0VarB, anonymousClass1, this) == objF) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W(TestAdPsOfferActivity testAdPsOfferActivity, View view) {
        hi.f fVar = hi.f.f64472a;
        fVar.j(!fVar.e());
        testAdPsOfferActivity.Z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(TestAdPsOfferActivity testAdPsOfferActivity, View view) {
        kotlinx.coroutines.k.d(v.a(testAdPsOfferActivity), null, null, new TestAdPsOfferActivity$onCreate$4$1(testAdPsOfferActivity, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(TestAdPsOfferActivity testAdPsOfferActivity, View view) {
        hi.f fVar = hi.f.f64472a;
        fVar.g(!fVar.b());
        testAdPsOfferActivity.Z();
    }

    private final void Z() {
        y yVar = this.binding;
        y yVar2 = null;
        if (yVar == null) {
            Intrinsics.z("binding");
            yVar = null;
        }
        Button button = yVar.f66193b;
        hi.f fVar = hi.f.f64472a;
        button.setText(fVar.e() ? "releasePsApi = true" : "releasePsApi = false");
        y yVar3 = this.binding;
        if (yVar3 == null) {
            Intrinsics.z("binding");
        } else {
            yVar2 = yVar3;
        }
        yVar2.f66195d.setText(fVar.b() ? "detailRequestLog = true" : "detailRequestLog = false");
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_ps_d";
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        y yVarC = y.c(getLayoutInflater());
        this.binding = yVarC;
        y yVar = null;
        if (yVarC == null) {
            Intrinsics.z("binding");
            yVarC = null;
        }
        setContentView(yVarC.getRoot());
        a aVar = new a();
        y yVar2 = this.binding;
        if (yVar2 == null) {
            Intrinsics.z("binding");
            yVar2 = null;
        }
        RecyclerView recyclerView = yVar2.f66196e;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(aVar);
        kotlinx.coroutines.k.d(v.a(this), null, null, new AnonymousClass2(aVar, null), 3, null);
        Z();
        y yVar3 = this.binding;
        if (yVar3 == null) {
            Intrinsics.z("binding");
            yVar3 = null;
        }
        yVar3.f66193b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_config.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdPsOfferActivity.W(this.f42270a, view);
            }
        });
        y yVar4 = this.binding;
        if (yVar4 == null) {
            Intrinsics.z("binding");
            yVar4 = null;
        }
        yVar4.f66194c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_config.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdPsOfferActivity.X(this.f42271a, view);
            }
        });
        y yVar5 = this.binding;
        if (yVar5 == null) {
            Intrinsics.z("binding");
        } else {
            yVar = yVar5;
        }
        yVar.f66195d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.test.ad_config.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TestAdPsOfferActivity.Y(this.f42272a, view);
            }
        });
    }
}
