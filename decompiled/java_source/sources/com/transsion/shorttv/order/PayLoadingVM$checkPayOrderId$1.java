package com.transsion.shorttv.order;

import androidx.p009lifecycle.b0;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.order.bean.GetPaynicornOrderStatusRespEntity;
import com.transsion.shorttv.order.bean.HttpErrorBodyBean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;
import retrofit2.HttpException;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.order.PayLoadingVM$checkPayOrderId$1", f = "PayLoadingVM.kt", l = {71}, m = "invokeSuspend")
final class PayLoadingVM$checkPayOrderId$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isDebug;
    final /* synthetic */ String $projectName;
    final /* synthetic */ String $tradingOrderId;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    boolean Z$0;
    int label;
    final /* synthetic */ PayLoadingVM this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PayLoadingVM$checkPayOrderId$1(String str, String str2, boolean z10, PayLoadingVM payLoadingVM, Continuation<? super PayLoadingVM$checkPayOrderId$1> continuation) {
        super(2, continuation);
        this.$tradingOrderId = str;
        this.$projectName = str2;
        this.$isDebug = z10;
        this.this$0 = payLoadingVM;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PayLoadingVM$checkPayOrderId$1 payLoadingVM$checkPayOrderId$1 = new PayLoadingVM$checkPayOrderId$1(this.$tradingOrderId, this.$projectName, this.$isDebug, this.this$0, continuation);
        payLoadingVM$checkPayOrderId$1.L$0 = obj;
        return payLoadingVM$checkPayOrderId$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PayLoadingVM$checkPayOrderId$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00b7 A[Catch: all -> 0x0023, TryCatch #0 {all -> 0x0023, blocks: (B:6:0x001b, B:18:0x0057, B:20:0x0061, B:22:0x0067, B:80:0x0113, B:48:0x00b0, B:50:0x00b7, B:52:0x00c3, B:57:0x00cd, B:59:0x00d5, B:64:0x00df, B:44:0x00a5, B:39:0x008e, B:41:0x0095, B:34:0x0082, B:65:0x00ec, B:67:0x00f4, B:72:0x00fe, B:74:0x0106, B:79:0x0110, B:30:0x0079, B:26:0x0070, B:14:0x003d), top: B:96:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:63:0x00de  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ec A[Catch: all -> 0x0023, TryCatch #0 {all -> 0x0023, blocks: (B:6:0x001b, B:18:0x0057, B:20:0x0061, B:22:0x0067, B:80:0x0113, B:48:0x00b0, B:50:0x00b7, B:52:0x00c3, B:57:0x00cd, B:59:0x00d5, B:64:0x00df, B:44:0x00a5, B:39:0x008e, B:41:0x0095, B:34:0x0082, B:65:0x00ec, B:67:0x00f4, B:72:0x00fe, B:74:0x0106, B:79:0x0110, B:30:0x0079, B:26:0x0070, B:14:0x003d), top: B:96:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00f4 A[Catch: all -> 0x0023, TryCatch #0 {all -> 0x0023, blocks: (B:6:0x001b, B:18:0x0057, B:20:0x0061, B:22:0x0067, B:80:0x0113, B:48:0x00b0, B:50:0x00b7, B:52:0x00c3, B:57:0x00cd, B:59:0x00d5, B:64:0x00df, B:44:0x00a5, B:39:0x008e, B:41:0x0095, B:34:0x0082, B:65:0x00ec, B:67:0x00f4, B:72:0x00fe, B:74:0x0106, B:79:0x0110, B:30:0x0079, B:26:0x0070, B:14:0x003d), top: B:96:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:74:0x0106 A[Catch: all -> 0x0023, TryCatch #0 {all -> 0x0023, blocks: (B:6:0x001b, B:18:0x0057, B:20:0x0061, B:22:0x0067, B:80:0x0113, B:48:0x00b0, B:50:0x00b7, B:52:0x00c3, B:57:0x00cd, B:59:0x00d5, B:64:0x00df, B:44:0x00a5, B:39:0x008e, B:41:0x0095, B:34:0x0082, B:65:0x00ec, B:67:0x00f4, B:72:0x00fe, B:74:0x0106, B:79:0x0110, B:30:0x0079, B:26:0x0070, B:14:0x003d), top: B:96:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x010f  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        HttpErrorBodyBean httpErrorBodyBean;
        PayLoadingVM payLoadingVM;
        boolean z10;
        String str;
        String str2;
        GetPaynicornOrderStatusRespEntity getPaynicornOrderStatusRespEntity;
        String str3;
        GetPaynicornOrderStatusRespEntity getPaynicornOrderStatusRespEntity2;
        String str4;
        String description;
        String orderStatus;
        GetPaynicornOrderStatusRespEntity getPaynicornOrderStatusRespEntity3;
        String str5;
        GetPaynicornOrderStatusRespEntity getPaynicornOrderStatusRespEntity4;
        String str6;
        String description2;
        String orderStatus2;
        String orderStatus3;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                String str7 = this.$tradingOrderId;
                String str8 = this.$projectName;
                boolean z11 = this.$isDebug;
                payLoadingVM = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                g gVar = g.f53050a;
                this.L$0 = str7;
                this.L$1 = str8;
                this.L$2 = payLoadingVM;
                this.Z$0 = z11;
                this.label = 1;
                Object objC = gVar.c(str7, str8, z11, this);
                if (objC == objF) {
                    return objF;
                }
                z10 = z11;
                str = str8;
                str2 = str7;
                obj = objC;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                boolean z12 = this.Z$0;
                payLoadingVM = (PayLoadingVM) this.L$2;
                String str9 = (String) this.L$1;
                String str10 = (String) this.L$0;
                ResultKt.b(obj);
                z10 = z12;
                str = str9;
                str2 = str10;
            }
            PayLoadingVM payLoadingVM2 = payLoadingVM;
            BaseDto baseDto = (BaseDto) obj;
            GetPaynicornOrderStatusRespEntity getPaynicornOrderStatusRespEntity5 = (GetPaynicornOrderStatusRespEntity) baseDto.getData();
            Integer numV = (getPaynicornOrderStatusRespEntity5 == null || (orderStatus3 = getPaynicornOrderStatusRespEntity5.getOrderStatus()) == null) ? null : StringsKt.v(orderStatus3);
            if (numV != null && numV.intValue() == 0) {
                getPaynicornOrderStatusRespEntity = (GetPaynicornOrderStatusRespEntity) baseDto.getData();
                if (getPaynicornOrderStatusRespEntity != null || (orderStatus = getPaynicornOrderStatusRespEntity.getOrderStatus()) == null) {
                    str3 = "";
                } else {
                    str3 = orderStatus;
                }
                getPaynicornOrderStatusRespEntity2 = (GetPaynicornOrderStatusRespEntity) baseDto.getData();
                if (getPaynicornOrderStatusRespEntity2 != null || (description = getPaynicornOrderStatusRespEntity2.getDescription()) == null) {
                    str4 = "";
                } else {
                    str4 = description;
                }
                payLoadingVM2.o(str3, str4, str2, str, z10);
            } else if (numV != null && numV.intValue() == 1) {
                getPaynicornOrderStatusRespEntity = (GetPaynicornOrderStatusRespEntity) baseDto.getData();
                if (getPaynicornOrderStatusRespEntity != null) {
                    str3 = "";
                } else {
                    str3 = "";
                }
                getPaynicornOrderStatusRespEntity2 = (GetPaynicornOrderStatusRespEntity) baseDto.getData();
                if (getPaynicornOrderStatusRespEntity2 != null) {
                    str4 = "";
                } else {
                    str4 = "";
                }
                payLoadingVM2.o(str3, str4, str2, str, z10);
            } else if (numV != null && numV.intValue() == 4) {
                getPaynicornOrderStatusRespEntity = (GetPaynicornOrderStatusRespEntity) baseDto.getData();
                if (getPaynicornOrderStatusRespEntity != null) {
                    str3 = "";
                } else {
                    str3 = "";
                }
                getPaynicornOrderStatusRespEntity2 = (GetPaynicornOrderStatusRespEntity) baseDto.getData();
                if (getPaynicornOrderStatusRespEntity2 != null) {
                    str4 = "";
                } else {
                    str4 = "";
                }
                payLoadingVM2.o(str3, str4, str2, str, z10);
            } else if (numV != null && numV.intValue() == 2) {
                payLoadingVM2.f53040e.n(baseDto.getData());
            } else if (numV != null && numV.intValue() == 3) {
                b0 b0Var = payLoadingVM2.f53041f;
                getPaynicornOrderStatusRespEntity3 = (GetPaynicornOrderStatusRespEntity) baseDto.getData();
                if (getPaynicornOrderStatusRespEntity3 != null || (orderStatus2 = getPaynicornOrderStatusRespEntity3.getOrderStatus()) == null) {
                    str5 = "";
                } else {
                    str5 = orderStatus2;
                }
                getPaynicornOrderStatusRespEntity4 = (GetPaynicornOrderStatusRespEntity) baseDto.getData();
                if (getPaynicornOrderStatusRespEntity4 != null || (description2 = getPaynicornOrderStatusRespEntity4.getDescription()) == null) {
                    str6 = "";
                } else {
                    str6 = description2;
                }
                b0Var.n(new HttpErrorBodyBean(str6, str5, null, 4, null));
            } else if (numV != null && numV.intValue() == 5) {
                b0 b0Var2 = payLoadingVM2.f53041f;
                getPaynicornOrderStatusRespEntity3 = (GetPaynicornOrderStatusRespEntity) baseDto.getData();
                if (getPaynicornOrderStatusRespEntity3 != null) {
                    str5 = "";
                } else {
                    str5 = "";
                }
                getPaynicornOrderStatusRespEntity4 = (GetPaynicornOrderStatusRespEntity) baseDto.getData();
                if (getPaynicornOrderStatusRespEntity4 != null) {
                    str6 = "";
                } else {
                    str6 = "";
                }
                b0Var2.n(new HttpErrorBodyBean(str6, str5, null, 4, null));
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        PayLoadingVM payLoadingVM3 = this.this$0;
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            if (thM457exceptionOrNullimpl instanceof HttpException) {
                httpErrorBodyBean = HttpErrorBodyBean.INSTANCE.a((HttpException) thM457exceptionOrNullimpl);
            } else {
                String message = thM457exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "";
                }
                httpErrorBodyBean = new HttpErrorBodyBean(message, TmcConstants.COLD_OPEN_TYPE, "");
            }
            payLoadingVM3.f53041f.n(httpErrorBodyBean);
        }
        return Unit.f67061a;
    }
}
