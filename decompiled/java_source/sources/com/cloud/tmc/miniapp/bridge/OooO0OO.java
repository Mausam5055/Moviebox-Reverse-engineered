package com.cloud.tmc.miniapp.bridge;

import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.constants.TmcConstants;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0OO extends Lambda implements Function0<Unit> {
    public final /* synthetic */ App OooO00o;
    public final /* synthetic */ BridgeCallback OooO0O0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OooO0OO(App app, BridgeCallback bridgeCallback) {
        super(0);
        this.OooO00o = app;
        this.OooO0O0 = bridgeCallback;
    }

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        this.OooO00o.putBooleanValue(TmcConstants.MINIAPP_HAS_UPDATE_REQUESTING, false);
        OooO00o.OooO00o("errMsg", "AppInfo request failed, please try again later: MAU10004", this.OooO0O0);
        return Unit.f67061a;
    }
}
