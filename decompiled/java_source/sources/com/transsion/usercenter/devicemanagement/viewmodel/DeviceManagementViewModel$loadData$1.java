package com.transsion.usercenter.devicemanagement.viewmodel;

import androidx.p009lifecycle.b0;
import com.therouter.TheRouter;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberInfo;
import com.transsion.usercenter.devicemanagement.model.LinkedDeviceDto;
import com.transsion.usercenter.devicemanagement.model.UpgradeRightDto;
import com.transsion.usercenter.devicemanagement.model.UpgradeRightsDto;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jw.b;
import jw.c;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.devicemanagement.viewmodel.DeviceManagementViewModel$loadData$1", f = "DeviceManagementViewModel.kt", l = {63}, m = "invokeSuspend")
@SourceDebugExtension
final class DeviceManagementViewModel$loadData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DeviceManagementViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DeviceManagementViewModel$loadData$1(DeviceManagementViewModel deviceManagementViewModel, Continuation<? super DeviceManagementViewModel$loadData$1> continuation) {
        super(2, continuation);
        this.this$0 = deviceManagementViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DeviceManagementViewModel$loadData$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DeviceManagementViewModel$loadData$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0097  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:46:0x00bb  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objE;
        UserInfo userInfo;
        IPremiumApi iPremiumApi;
        String shortId;
        MemberDetail memberDetailB;
        MemberInfo memberInfo;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        String expiryDate = null;
        if (i11 == 0) {
            ResultKt.b(obj);
            this.this$0.f56684b.q(c.b.f66318a);
            ILoginApi iLoginApi = (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
            IPremiumApi iPremiumApi2 = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
            UserInfo userInfoI = iLoginApi != null ? iLoginApi.i() : null;
            DeviceManagementViewModel$loadData$1$rightsAndDevices$1 deviceManagementViewModel$loadData$1$rightsAndDevices$1 = new DeviceManagementViewModel$loadData$1$rightsAndDevices$1(this.this$0, userInfoI, iPremiumApi2, null);
            this.L$0 = iPremiumApi2;
            this.L$1 = userInfoI;
            this.label = 1;
            objE = o0.e(deviceManagementViewModel$loadData$1$rightsAndDevices$1, this);
            if (objE == objF) {
                return objF;
            }
            userInfo = userInfoI;
            iPremiumApi = iPremiumApi2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            userInfo = (UserInfo) this.L$1;
            iPremiumApi = (IPremiumApi) this.L$0;
            ResultKt.b(obj);
            objE = obj;
        }
        Pair pair = (Pair) objE;
        UpgradeRightsDto upgradeRightsDto = (UpgradeRightsDto) pair.getFirst();
        if (upgradeRightsDto == null) {
            this.this$0.f56684b.q(c.a.f66317a);
            return Unit.f67061a;
        }
        b0 b0Var = this.this$0.f56684b;
        if (userInfo == null || (shortId = userInfo.getNickname()) == null) {
            if (userInfo != null || (shortId = userInfo.getUsername()) == null || StringsKt.q0(shortId)) {
                shortId = null;
            }
            if (shortId == null) {
                if (userInfo != null || (shortId = userInfo.getShortId()) == null || StringsKt.q0(shortId)) {
                    shortId = null;
                }
                if (shortId == null) {
                    shortId = "";
                }
            }
        } else {
            if (StringsKt.q0(shortId)) {
                shortId = null;
            }
            if (shortId == null) {
                if (userInfo != null) {
                    shortId = null;
                } else {
                    shortId = null;
                }
                if (shortId == null) {
                    if (userInfo != null) {
                        shortId = null;
                    } else {
                        shortId = null;
                    }
                    if (shortId == null) {
                        shortId = "";
                    }
                }
            }
        }
        String str = shortId;
        String avatar = userInfo != null ? userInfo.getAvatar() : null;
        DeviceManagementViewModel deviceManagementViewModel = this.this$0;
        if (iPremiumApi != null && (memberDetailB = iPremiumApi.b()) != null && (memberInfo = memberDetailB.getMemberInfo()) != null) {
            expiryDate = memberInfo.getExpiryDate();
        }
        String strI = deviceManagementViewModel.i(expiryDate);
        boolean z10 = iPremiumApi != null && iPremiumApi.u();
        int iM = this.this$0.m(upgradeRightsDto.getBasicLinkedDevice());
        int iM2 = this.this$0.m(upgradeRightsDto.getProLinkedDevice());
        List<UpgradeRightDto> rights = upgradeRightsDto.getRights();
        if (rights == null) {
            rights = CollectionsKt.l();
        }
        List<UpgradeRightDto> list = rights;
        DeviceManagementViewModel deviceManagementViewModel2 = this.this$0;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(deviceManagementViewModel2.o((UpgradeRightDto) it.next()));
        }
        String description = upgradeRightsDto.getDescription();
        Iterable iterable = (Iterable) pair.getSecond();
        DeviceManagementViewModel deviceManagementViewModel3 = this.this$0;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(iterable, 10));
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            arrayList2.add(deviceManagementViewModel3.n((LinkedDeviceDto) it2.next()));
        }
        b0Var.q(new c.C0804c(new b(str, avatar, strI, z10, iM, iM2, arrayList, description, arrayList2)));
        return Unit.f67061a;
    }
}
