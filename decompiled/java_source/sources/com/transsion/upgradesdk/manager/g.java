package com.transsion.upgradesdk.manager;

import android.app.Application;
import bw.i;
import bw.l;
import com.google.gson.Gson;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import xv.a;

/* JADX INFO: loaded from: classes6.dex */
public final class g extends Lambda implements Function1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ yv.f f56594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f56595b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(yv.f fVar, int i11) {
        super(1);
        this.f56594a = fVar;
        this.f56595b = i11;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        List obj2 = (List) obj;
        bw.g.b("UpgradeSdkManager", "requestCdnConfig 请求CDN配置完成:  " + obj2);
        if (obj2 == null) {
            yv.f fVar = this.f56594a;
            if (fVar.f79081m != null) {
                bw.g.b("UpgradeSdkManager", "requestCdnConfig 加载过期缓存");
                yv.f fVar2 = this.f56594a;
                fVar2.c(fVar2.f79081m);
            } else {
                UpgradeInfoCallback upgradeInfoCallback = fVar.f79074f;
                if (upgradeInfoCallback != null) {
                    upgradeInfoCallback.onRequestFail("CDN_ERROR");
                }
            }
        } else {
            l.c(2, 2, null, "1", null, null, null, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
            bw.h hVar = i.f16941b;
            Application application = a.f78447a;
            Application application2 = null;
            if (application == null) {
                Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                application = null;
            }
            i iVarA = hVar.a(application);
            long jCurrentTimeMillis = System.currentTimeMillis();
            Intrinsics.h("KV_UPGRADE_CDN_DATA_LAST_REQUEST_TIME", "key");
            MMKV mmkv = iVarA.f16943a;
            if (mmkv != null) {
                mmkv.t("KV_UPGRADE_CDN_DATA_LAST_REQUEST_TIME", jCurrentTimeMillis);
            }
            yv.f fVar3 = this.f56594a;
            fVar3.f79080l = true;
            if (this.f56595b == 1) {
                fVar3.c(obj2);
            } else {
                Application application3 = a.f78447a;
                if (application3 != null) {
                    application2 = application3;
                } else {
                    Intrinsics.z(MimeTypes.BASE_TYPE_APPLICATION);
                }
                i iVarA2 = hVar.a(application2);
                Gson gson = bw.f.f16938a;
                Intrinsics.h(obj2, "obj");
                String json = bw.f.f16938a.toJson(obj2);
                Intrinsics.g(json, "toJson(...)");
                iVarA2.b("KV_UPGRADE_LOCAL_CDN_DATA", json);
            }
        }
        return Unit.f67061a;
    }
}
