package com.cloud.hisavana.sdk.common.tranmeasure;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.d5;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.r2;
import com.cloud.sdk.commonutil.R$id;
import com.cloud.sdk.commonutil.util.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f22102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f22103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f22104c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f22105d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f22106e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f22107f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f22108g;

    class a implements Preconditions.a {
        a() {
        }

        @Override // com.cloud.sdk.commonutil.util.Preconditions.a
        public void onRun() {
            if (c.this.f22102a == null || c.this.f22102a.f22111b == null || c.this.f22102a.g() == null) {
                return;
            }
            c.this.f22102a.f22111b.a(c.this.f22102a.g());
        }
    }

    protected c(d dVar) {
        this.f22102a = dVar;
        this.f22103b = h.b(dVar.f22114e);
    }

    private boolean b() {
        d5 d5Var;
        d dVar = this.f22102a;
        return (dVar == null || (d5Var = dVar.f22114e) == null || this.f22105d < ((long) d5Var.f22376c)) ? false : true;
    }

    protected void c() {
        int iD;
        d dVar = this.f22102a;
        if (dVar == null) {
            return;
        }
        View viewF = dVar.f();
        if (this.f22103b == null || this.f22102a.f22114e == null || viewF == null) {
            return;
        }
        if (viewF.getTag(R$id.native_view_source) != null && !TextUtils.equals(Constants.f22041a, viewF.getTag(R$id.native_view_source).toString())) {
            if (viewF.getTag(R$id.native_view_source) != null) {
                e4.b().d("ssp_measure", "session.AdView.Tag" + viewF.getTag(R$id.native_view_source).toString());
                return;
            }
            return;
        }
        if (this.f22102a.i()) {
            return;
        }
        try {
            iD = d();
        } catch (Throwable th2) {
            e4.b().w("ssp_measure", Log.getStackTraceString(th2));
            iD = 0;
        }
        if (iD > 0 && !this.f22102a.h()) {
            d dVar2 = this.f22102a;
            if (dVar2.f22111b != null) {
                dVar2.c(true);
                Preconditions.d(new a());
                AdsDTO adsDTOE = this.f22102a.e();
                if (adsDTOE != null) {
                    int measuredWidth = viewF.getMeasuredWidth();
                    adsDTOE.setViewHeight(viewF.getMeasuredHeight());
                    adsDTOE.setViewWidth(measuredWidth);
                    adsDTOE.setShowReportTimeType(1);
                    r2.a(adsDTOE);
                }
            }
        }
        if (iD > this.f22107f) {
            this.f22107f = iD;
            this.f22108g = this.f22103b.f22137b;
        }
        if (iD <= 0) {
            this.f22104c = 0L;
            return;
        }
        if (!this.f22106e) {
            e4.b().d("ssp_measure", "检查View在Window的可见性 返回百分比 --> exposureRatio = " + iD + " totalImpressionTime=" + this.f22105d);
        }
        if (this.f22104c > 0) {
            this.f22105d += SystemClock.uptimeMillis() - this.f22104c;
        }
        this.f22104c = SystemClock.uptimeMillis();
        if (b()) {
            float f11 = iD;
            d dVar3 = this.f22102a;
            if (f11 < dVar3.f22114e.f22374a || this.f22106e) {
                return;
            }
            this.f22106e = true;
            AdsDTO adsDTOE2 = dVar3.e();
            if (adsDTOE2 != null) {
                adsDTOE2.setShowReportTimeType(2);
                adsDTOE2.setActualShowRate(Integer.valueOf(this.f22107f));
                adsDTOE2.setShowArea(this.f22108g);
                adsDTOE2.setActualShowTime(Long.valueOf(this.f22105d));
                if (a7.d.a(adsDTOE2)) {
                    r2.b(adsDTOE2);
                } else {
                    r2.a(adsDTOE2);
                }
            } else {
                e4.b().d("ssp_measure", "session.getmKey() instanceof AdsDTO --> false");
            }
            e.c().f(this.f22102a);
        }
    }

    protected int d() {
        d5 d5Var;
        h hVar;
        d dVar = this.f22102a;
        if (dVar == null || (d5Var = dVar.f22114e) == null || (hVar = this.f22103b) == null) {
            return 0;
        }
        return hVar.a(d5Var, dVar.f());
    }
}
