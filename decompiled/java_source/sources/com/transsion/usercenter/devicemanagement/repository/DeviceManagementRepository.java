package com.transsion.usercenter.devicemanagement.repository;

import android.os.Build;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.usercenter.devicemanagement.model.LinkedDeviceDto;
import com.transsion.usercenter.devicemanagement.model.UpgradeRightsDto;
import ih.b;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import nh.m;
import okhttp3.RequestBody;
import zg.c;

/* JADX INFO: loaded from: classes6.dex */
public final class DeviceManagementRepository {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a f56680b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f56681a = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.devicemanagement.repository.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DeviceManagementRepository.b();
        }
    });

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final hw.a b() {
        return (hw.a) c.f79414e.a().h(hw.a.class);
    }

    private final hw.a c() {
        return (hw.a) this.f56681a.getValue();
    }

    private final List f() {
        String string;
        String MODEL = Build.MODEL;
        Intrinsics.g(MODEL, "MODEL");
        String BRAND = Build.BRAND;
        Intrinsics.g(BRAND, "BRAND");
        if (StringsKt.a0(MODEL, BRAND, true)) {
            Intrinsics.g(MODEL, "MODEL");
            string = StringsKt.n1(MODEL).toString();
        } else {
            string = StringsKt.n1(BRAND + " " + MODEL).toString();
        }
        return CollectionsKt.e(new LinkedDeviceDto(string, null, null, b.f65241a.h(), 6, null));
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object d(Continuation continuation) throws Throwable {
        DeviceManagementRepository$getLinkedDevicesOrLocal$1 deviceManagementRepository$getLinkedDevicesOrLocal$1;
        if (continuation instanceof DeviceManagementRepository$getLinkedDevicesOrLocal$1) {
            deviceManagementRepository$getLinkedDevicesOrLocal$1 = (DeviceManagementRepository$getLinkedDevicesOrLocal$1) continuation;
            int i11 = deviceManagementRepository$getLinkedDevicesOrLocal$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                deviceManagementRepository$getLinkedDevicesOrLocal$1.label = i11 - Integer.MIN_VALUE;
            } else {
                deviceManagementRepository$getLinkedDevicesOrLocal$1 = new DeviceManagementRepository$getLinkedDevicesOrLocal$1(this, continuation);
            }
        } else {
            deviceManagementRepository$getLinkedDevicesOrLocal$1 = new DeviceManagementRepository$getLinkedDevicesOrLocal$1(this, continuation);
        }
        DeviceManagementRepository$getLinkedDevicesOrLocal$1 deviceManagementRepository$getLinkedDevicesOrLocal$2 = deviceManagementRepository$getLinkedDevicesOrLocal$1;
        Object objA = deviceManagementRepository$getLinkedDevicesOrLocal$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = deviceManagementRepository$getLinkedDevicesOrLocal$2.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objA);
                if (!m.f70474a.e()) {
                    return CollectionsKt.l();
                }
                RequestBody requestBodyA = bh.b.f16471a.a("{}");
                if (requestBodyA == null) {
                    return f();
                }
                hw.a aVarC = c();
                deviceManagementRepository$getLinkedDevicesOrLocal$2.label = 1;
                objA = hw.a.C0779a.a(aVarC, null, requestBodyA, deviceManagementRepository$getLinkedDevicesOrLocal$2, 1, null);
                if (objA == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objA);
            }
            List list = (List) ((BaseDto) objA).getData();
            if (list != null) {
                if (list.isEmpty()) {
                    list = null;
                }
                if (list != null) {
                    return list;
                }
            }
            return f();
        } catch (Exception e11) {
            lg.a.C0828a.l(lg.a.f68839a, "DeviceManagementRepository", "getLinkedDevices failed: " + e11.getMessage(), false, 4, null);
            return f();
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object e(String str, boolean z10, Continuation continuation) throws Throwable {
        DeviceManagementRepository$getUpgradeRightsWithCache$1 deviceManagementRepository$getUpgradeRightsWithCache$1;
        if (continuation instanceof DeviceManagementRepository$getUpgradeRightsWithCache$1) {
            deviceManagementRepository$getUpgradeRightsWithCache$1 = (DeviceManagementRepository$getUpgradeRightsWithCache$1) continuation;
            int i11 = deviceManagementRepository$getUpgradeRightsWithCache$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                deviceManagementRepository$getUpgradeRightsWithCache$1.label = i11 - Integer.MIN_VALUE;
            } else {
                deviceManagementRepository$getUpgradeRightsWithCache$1 = new DeviceManagementRepository$getUpgradeRightsWithCache$1(this, continuation);
            }
        } else {
            deviceManagementRepository$getUpgradeRightsWithCache$1 = new DeviceManagementRepository$getUpgradeRightsWithCache$1(this, continuation);
        }
        DeviceManagementRepository$getUpgradeRightsWithCache$1 deviceManagementRepository$getUpgradeRightsWithCache$2 = deviceManagementRepository$getUpgradeRightsWithCache$1;
        Object objB = deviceManagementRepository$getUpgradeRightsWithCache$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = deviceManagementRepository$getUpgradeRightsWithCache$2.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objB);
                hw.a aVarC = c();
                String str2 = z10 ? "pro" : "basic";
                deviceManagementRepository$getUpgradeRightsWithCache$2.L$0 = str;
                deviceManagementRepository$getUpgradeRightsWithCache$2.label = 1;
                objB = hw.a.C0779a.b(aVarC, null, str2, deviceManagementRepository$getUpgradeRightsWithCache$2, 1, null);
                if (objB == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = (String) deviceManagementRepository$getUpgradeRightsWithCache$2.L$0;
                ResultKt.b(objB);
            }
            BaseDto baseDto = (BaseDto) objB;
            if (baseDto.getData() == null) {
                lg.a.C0828a.l(lg.a.f68839a, "DeviceManagementRepository", "getUpgradeRights business failed", false, 4, null);
                return iw.b.f65660a.c(str);
            }
            UpgradeRightsDto upgradeRightsDto = (UpgradeRightsDto) baseDto.getData();
            if (upgradeRightsDto == null) {
                return null;
            }
            iw.b.f65660a.f(str, upgradeRightsDto);
            return upgradeRightsDto;
        } catch (Exception e11) {
            lg.a.C0828a.l(lg.a.f68839a, "DeviceManagementRepository", "getUpgradeRights failed: " + e11.getMessage(), false, 4, null);
            return iw.b.f65660a.c(str);
        }
    }
}
