package com.cloud.hisavana.sdk;

import android.os.Bundle;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class y4 extends l4 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List f23122e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private q3 f23123f;

    class a implements v4.f {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.v4.f
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            y4.this.g(taErrorCode);
            SSPTrackingHelper.f21953a.U(2, y4.this.f23123f, taErrorCode, bundle);
        }

        @Override // com.cloud.hisavana.sdk.v4.f
        public void b(List list, Bundle bundle) {
            y4.this.j(list);
            SSPTrackingHelper.f21953a.U(2, y4.this.f23123f, TaErrorCode.ERROR_SUCCESS, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(TaErrorCode taErrorCode) {
        this.f22626b = 3;
        l4.a aVar = this.f22625a;
        if (aVar != null) {
            aVar.a(taErrorCode, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(List list) {
        this.f22626b = 3;
        if (list == null || list.isEmpty()) {
            g(TaErrorCode.ERROR_AD_MATERIAL_DOWNLOAD_IS_NULL);
            return;
        }
        l4.a aVar = this.f22625a;
        if (aVar != null) {
            aVar.b(list, null);
        }
    }

    @Override // com.cloud.hisavana.sdk.c4
    public void a(q3 q3Var) {
        this.f22626b = 2;
        this.f23123f = q3Var;
        e4.b().d("ssp", "start execute getAdCreativies.");
        v4 v4Var = new v4();
        v4Var.c(new a());
        SSPTrackingHelper.f21953a.U(1, this.f23123f, TaErrorCode.ERROR_SUCCESS, new Bundle());
        v4Var.e(this.f23122e, q3Var.e(), 1, this.f22628d);
    }

    public void k(List list) {
        this.f23122e = list;
    }
}
