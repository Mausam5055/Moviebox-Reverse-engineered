package com.cloud.hisavana.sdk;

import android.os.Bundle;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class x3 extends G {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f23084i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile AdsDTO f23085j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private e2 f23086k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x3(q3 adFetchInfo) {
        super(adFetchInfo);
        Intrinsics.h(adFetchInfo, "adFetchInfo");
        this.f23084i = "Rewarded";
    }

    private final void K() {
        this.f23086k = new e2(this);
    }

    public final void F(TaErrorCode taErrorCode) {
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.t(taErrorCode, this);
        }
    }

    public final void G() {
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.m();
        }
        AdCallback adCallback2 = this.f21504e;
        if (adCallback2 != null) {
            adCallback2.k(this.f23085j);
        }
    }

    public final void H() {
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.p(this.f23085j);
        }
    }

    public final void I() {
        f();
        k(true);
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.s();
        }
    }

    public final void J() {
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.A();
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0035  */
    public final void L() {
        Unit unit;
        Preconditions.a();
        K();
        if (this.f23085j == null) {
            unit = null;
        } else if (r() != 0 || z()) {
            F(TaErrorCode.ERROR_SHOW_INNER_INVALID);
            e4.b().d(this.f23084i, "ad not condition to use");
            unit = Unit.f67061a;
        } else {
            e2 e2Var = this.f23086k;
            if (e2Var != null) {
                e2Var.c(this.f23085j);
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
        }
        if (unit == null) {
            e4.b().d(this.f23084i, "adBean = null");
        }
    }

    @Override // com.cloud.hisavana.sdk.G, com.cloud.hisavana.sdk.api.listener.f
    public void d(List list, Bundle athenaTrackBundle) {
        Intrinsics.h(athenaTrackBundle, "athenaTrackBundle");
        this.f23085j = list != null ? (AdsDTO) CollectionsKt.k0(list) : null;
        super.d(list, athenaTrackBundle);
    }

    @Override // com.cloud.hisavana.sdk.G
    public void m() {
        super.m();
        e2 e2Var = this.f23086k;
        if (e2Var != null) {
            e2Var.b();
        }
    }
}
