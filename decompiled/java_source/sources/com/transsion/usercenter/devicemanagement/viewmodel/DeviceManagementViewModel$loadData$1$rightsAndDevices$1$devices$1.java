package com.transsion.usercenter.devicemanagement.viewmodel;

import com.transsion.usercenter.devicemanagement.model.LinkedDeviceDto;
import com.transsion.usercenter.devicemanagement.repository.DeviceManagementRepository;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "", "Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/util/List;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.devicemanagement.viewmodel.DeviceManagementViewModel$loadData$1$rightsAndDevices$1$devices$1", f = "DeviceManagementViewModel.kt", l = {68}, m = "invokeSuspend")
final class DeviceManagementViewModel$loadData$1$rightsAndDevices$1$devices$1 extends SuspendLambda implements Function2<n0, Continuation<? super List<? extends LinkedDeviceDto>>, Object> {
    int label;
    final /* synthetic */ DeviceManagementViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DeviceManagementViewModel$loadData$1$rightsAndDevices$1$devices$1(DeviceManagementViewModel deviceManagementViewModel, Continuation<? super DeviceManagementViewModel$loadData$1$rightsAndDevices$1$devices$1> continuation) {
        super(2, continuation);
        this.this$0 = deviceManagementViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DeviceManagementViewModel$loadData$1$rightsAndDevices$1$devices$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super List<LinkedDeviceDto>> continuation) {
        return ((DeviceManagementViewModel$loadData$1$rightsAndDevices$1$devices$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            DeviceManagementRepository deviceManagementRepository = this.this$0.f56683a;
            this.label = 1;
            obj = deviceManagementRepository.d(this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return obj;
    }
}
