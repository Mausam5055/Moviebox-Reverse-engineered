package com.transsion.upgradesdk.manager;

import android.app.Application;
import bw.i;
import bw.l;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.transsion.upgradesdk.bean.UpgradeData;
import com.transsion.upgradesdk.bean.UpgradeInfo;
import com.transsion.upgradesdk.bean.UpgradeStatus;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import xv.a;

/* JADX INFO: loaded from: classes6.dex */
public final class h extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ yv.f f56596a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(yv.f fVar) {
        super(1);
        this.f56596a = fVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        UpgradeStatus upgradeStatus = (UpgradeStatus) obj;
        bw.g.b("UpgradeSdkManager", "请求服务端接口  请求成功 - : " + upgradeStatus);
        if (upgradeStatus == null || this.f56596a.f79070b == null) {
            UpgradeInfoCallback upgradeInfoCallback = this.f56596a.f79074f;
            if (upgradeInfoCallback != null) {
                upgradeInfoCallback.onRequestFail("INTERNET_ERROR");
            }
        } else {
            boolean z10 = false;
            if (upgradeStatus.getCode() == 0) {
                yv.f fVar = this.f56596a;
                Integer data = upgradeStatus.getData();
                fVar.f79071c = data != null && data.intValue() == 1;
                yv.f fVar2 = this.f56596a;
                if (fVar2.f79071c) {
                    UpgradeData upgradeData = fVar2.f79070b;
                    Intrinsics.e(upgradeData);
                    if (upgradeData.isForceUpdate()) {
                        bw.g.b("UpgradeSdkManager", "请求服务端接口 请求成功- 标记当前强更弹窗");
                        this.f56596a.f79073e = true;
                        bw.h hVar = i.f16941b;
                        Application application = a.f78447a;
                        if (application == null) {
                            Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                            application = null;
                        }
                        i iVarA = hVar.a(application);
                        Intrinsics.h("KV_UPGRADE_IS_FORCE", "key");
                        MMKV mmkv = iVarA.f16943a;
                        if (mmkv != null) {
                            mmkv.x("KV_UPGRADE_IS_FORCE", true);
                        }
                    }
                }
                bw.h hVar2 = i.f16941b;
                Application application2 = a.f78447a;
                if (application2 == null) {
                    Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                    application2 = null;
                }
                i iVarA2 = hVar2.a(application2);
                boolean z11 = this.f56596a.f79071c;
                Intrinsics.h("KV_UPGRADE_LAST_POP", "key");
                MMKV mmkv2 = iVarA2.f16943a;
                if (mmkv2 != null) {
                    mmkv2.x("KV_UPGRADE_LAST_POP", z11);
                }
                this.f56596a.f79079k = System.currentTimeMillis();
                Application application3 = a.f78447a;
                if (application3 == null) {
                    Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                    application3 = null;
                }
                i iVarA3 = hVar2.a(application3);
                long j11 = this.f56596a.f79079k;
                Intrinsics.h("KV_UPGRADE_LAST_REQUEST_SERVER", "key");
                MMKV mmkv3 = iVarA3.f16943a;
                if (mmkv3 != null) {
                    mmkv3.t("KV_UPGRADE_LAST_REQUEST_SERVER", j11);
                }
                yv.f fVar3 = this.f56596a;
                if (fVar3.f79071c) {
                    UpgradeData upgradeData2 = fVar3.f79070b;
                    Intrinsics.e(upgradeData2);
                    if (wv.a.a(upgradeData2)) {
                        z10 = true;
                    }
                }
                Integer data2 = upgradeStatus.getData();
                String string = data2 != null ? data2.toString() : null;
                UpgradeData upgradeData3 = this.f56596a.f79070b;
                Intrinsics.e(upgradeData3);
                l.c(2, 2, string, "2", null, Boolean.valueOf(upgradeData3.isForceUpdate()), Boolean.valueOf(z10), 16);
                bw.g.b("UpgradeSdkManager", "请求服务端接口 请求成功- 是否有新版本： " + this.f56596a.f79071c + "  是否弹窗： " + z10);
                yv.f fVar4 = this.f56596a;
                UpgradeInfoCallback upgradeInfoCallback2 = fVar4.f79074f;
                if (upgradeInfoCallback2 != null) {
                    boolean z12 = fVar4.f79071c;
                    boolean z13 = fVar4.f79073e;
                    UpgradeData upgradeData4 = fVar4.f79070b;
                    upgradeInfoCallback2.onRequestSuccess(new UpgradeInfo(z12, z10, z13, upgradeData4 != null ? upgradeData4.getPkgVersionName() : null));
                }
            } else {
                UpgradeInfoCallback upgradeInfoCallback3 = this.f56596a.f79074f;
                if (upgradeInfoCallback3 != null) {
                    upgradeInfoCallback3.onRequestSuccess(new UpgradeInfo(false, false, false, null));
                }
            }
        }
        return Unit.f67061a;
    }
}
