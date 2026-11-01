package com.transsion.usercenter.devicemanagement.viewmodel;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.usercenter.devicemanagement.model.UpgradeRightsDto;
import com.transsion.usercenter.devicemanagement.repository.DeviceManagementRepository;
import com.transsnet.loginapi.bean.UserInfo;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.devicemanagement.viewmodel.DeviceManagementViewModel$loadData$1$rightsAndDevices$1$rights$1", f = "DeviceManagementViewModel.kt", l = {RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH}, m = "invokeSuspend")
final class DeviceManagementViewModel$loadData$1$rightsAndDevices$1$rights$1 extends SuspendLambda implements Function2<n0, Continuation<? super UpgradeRightsDto>, Object> {
    final /* synthetic */ IPremiumApi $premiumApi;
    final /* synthetic */ UserInfo $userInfo;
    int label;
    final /* synthetic */ DeviceManagementViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DeviceManagementViewModel$loadData$1$rightsAndDevices$1$rights$1(DeviceManagementViewModel deviceManagementViewModel, UserInfo userInfo, IPremiumApi iPremiumApi, Continuation<? super DeviceManagementViewModel$loadData$1$rightsAndDevices$1$rights$1> continuation) {
        super(2, continuation);
        this.this$0 = deviceManagementViewModel;
        this.$userInfo = userInfo;
        this.$premiumApi = iPremiumApi;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DeviceManagementViewModel$loadData$1$rightsAndDevices$1$rights$1(this.this$0, this.$userInfo, this.$premiumApi, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super UpgradeRightsDto> continuation) {
        return ((DeviceManagementViewModel$loadData$1$rightsAndDevices$1$rights$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            DeviceManagementRepository deviceManagementRepository = this.this$0.f56683a;
            UserInfo userInfo = this.$userInfo;
            String userId = userInfo != null ? userInfo.getUserId() : null;
            IPremiumApi iPremiumApi = this.$premiumApi;
            boolean z10 = false;
            if (iPremiumApi != null && iPremiumApi.u()) {
                z10 = true;
            }
            this.label = 1;
            obj = deviceManagementRepository.e(userId, z10, this);
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
