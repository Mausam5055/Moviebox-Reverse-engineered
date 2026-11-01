package com.transsion.usercenter.devicemanagement.viewmodel;

import com.transsion.memberapi.IPremiumApi;
import com.transsion.usercenter.devicemanagement.model.LinkedDeviceDto;
import com.transsion.usercenter.devicemanagement.model.UpgradeRightsDto;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.r0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/n0;", "Lkotlin/Pair;", "Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;", "", "Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lkotlin/Pair;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.devicemanagement.viewmodel.DeviceManagementViewModel$loadData$1$rightsAndDevices$1", f = "DeviceManagementViewModel.kt", l = {70, 70}, m = "invokeSuspend")
final class DeviceManagementViewModel$loadData$1$rightsAndDevices$1 extends SuspendLambda implements Function2<n0, Continuation<? super Pair<? extends UpgradeRightsDto, ? extends List<? extends LinkedDeviceDto>>>, Object> {
    final /* synthetic */ IPremiumApi $premiumApi;
    final /* synthetic */ UserInfo $userInfo;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DeviceManagementViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DeviceManagementViewModel$loadData$1$rightsAndDevices$1(DeviceManagementViewModel deviceManagementViewModel, UserInfo userInfo, IPremiumApi iPremiumApi, Continuation<? super DeviceManagementViewModel$loadData$1$rightsAndDevices$1> continuation) {
        super(2, continuation);
        this.this$0 = deviceManagementViewModel;
        this.$userInfo = userInfo;
        this.$premiumApi = iPremiumApi;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DeviceManagementViewModel$loadData$1$rightsAndDevices$1 deviceManagementViewModel$loadData$1$rightsAndDevices$1 = new DeviceManagementViewModel$loadData$1$rightsAndDevices$1(this.this$0, this.$userInfo, this.$premiumApi, continuation);
        deviceManagementViewModel$loadData$1$rightsAndDevices$1.L$0 = obj;
        return deviceManagementViewModel$loadData$1$rightsAndDevices$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Pair<UpgradeRightsDto, ? extends List<LinkedDeviceDto>>> continuation) {
        return ((DeviceManagementViewModel$loadData$1$rightsAndDevices$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        r0 r0Var;
        Object obj2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                r0Var = (r0) this.L$0;
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj2 = this.L$0;
                ResultKt.b(obj);
            }
            return TuplesKt.a(obj2, obj);
        }
        ResultKt.b(obj);
        n0 n0Var = (n0) this.L$0;
        r0 r0VarB = k.b(n0Var, null, null, new DeviceManagementViewModel$loadData$1$rightsAndDevices$1$rights$1(this.this$0, this.$userInfo, this.$premiumApi, null), 3, null);
        r0 r0VarB2 = k.b(n0Var, null, null, new DeviceManagementViewModel$loadData$1$rightsAndDevices$1$devices$1(this.this$0, null), 3, null);
        this.L$0 = r0VarB2;
        this.label = 1;
        Object objI = r0VarB.i(this);
        if (objI == objF) {
            return objF;
        }
        r0Var = r0VarB2;
        obj = objI;
        this.L$0 = obj;
        this.label = 2;
        Object objI2 = r0Var.i(this);
        if (objI2 == objF) {
            return objF;
        }
        obj2 = obj;
        obj = objI2;
        return TuplesKt.a(obj2, obj);
    }
}
