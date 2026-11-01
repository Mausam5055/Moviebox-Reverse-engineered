package com.cloud.hisavana.sdk;

import android.os.Bundle;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class s3 extends G {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private p4 f22938i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private volatile AdsDTO f22939j;

    public s3(q3 q3Var) {
        super(q3Var);
        this.f22939j = null;
    }

    private void L() {
        this.f22938i = new p4(this);
    }

    void F(TaErrorCode taErrorCode) {
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.t(taErrorCode, this);
        }
    }

    void G(AdsDTO adsDTO) {
        if (adsDTO != null) {
            this.f22939j = adsDTO;
        }
    }

    public void H(AdsDTO adsDTO) {
        this.f22939j = adsDTO;
        L();
        this.f22938i.e(adsDTO);
    }

    void I() {
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.m();
            this.f21504e.k(this.f22939j);
        }
    }

    void J() {
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.p(this.f22939j);
        }
    }

    void K() {
        f();
        k(true);
        AdCallback adCallback = this.f21504e;
        if (adCallback != null) {
            adCallback.s();
        }
    }

    public void M() {
        Preconditions.a();
        L();
        if (this.f22939j == null) {
            F(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            e4.b().d("ssp", "adBean = null");
        } else if (r() == 0 && !z()) {
            this.f22938i.e(this.f22939j);
        } else {
            F(TaErrorCode.ERROR_SHOW_INNER_INVALID);
            e4.b().d("ssp", "ad not condition to use");
        }
    }

    @Override // com.cloud.hisavana.sdk.G, com.cloud.hisavana.sdk.api.listener.f
    public void d(List list, Bundle bundle) {
        this.f22939j = (list == null || list.isEmpty()) ? null : (AdsDTO) list.get(0);
        super.d(list, bundle);
    }

    @Override // com.cloud.hisavana.sdk.G
    public void m() {
        super.m();
        p4 p4Var = this.f22938i;
        if (p4Var != null) {
            p4Var.d();
        }
    }
}
