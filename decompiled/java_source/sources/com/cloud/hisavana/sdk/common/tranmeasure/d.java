package com.cloud.hisavana.sdk.common.tranmeasure;

import android.view.View;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.d5;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.r2;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f22110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected b f22111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference f22112c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected d5 f22114e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.cloud.hisavana.sdk.common.tranmeasure.c f22117h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f22113d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f22115f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AtomicBoolean f22116g = new AtomicBoolean(false);

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.c().f(d.this);
        }
    }

    public interface b {
        void a(Object obj);
    }

    public static class c implements Preconditions.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference f22119a;

        public c(d dVar) {
            this.f22119a = new WeakReference(dVar);
        }

        @Override // com.cloud.sdk.commonutil.util.Preconditions.a
        public void onRun() {
            d dVar;
            WeakReference weakReference = this.f22119a;
            if (weakReference == null || (dVar = (d) weakReference.get()) == null) {
                return;
            }
            b bVar = dVar.f22111b;
            Object objG = dVar.g();
            if (bVar == null || objG == null) {
                return;
            }
            e4.b().d("ssp", "----------------> 曝光回调");
            bVar.a(objG);
        }
    }

    public d(Object obj) {
        d5 d5Var = new d5();
        this.f22114e = d5Var;
        d5Var.f22376c = 1000;
        d5Var.f22374a = 50.0f;
        d5Var.f22375b = 0;
        this.f22110a = obj;
        this.f22117h = new com.cloud.hisavana.sdk.common.tranmeasure.c(this);
    }

    public void a() {
        WeakReference weakReference = this.f22112c;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f22111b = null;
        HSScopeHelper.f23167a.e(new a());
    }

    protected void b(View view, b bVar) {
        e4.b().d("ssp_measure", "MeasureSession registerView,isImpression = " + this.f22113d);
        if (this.f22113d) {
            return;
        }
        this.f22112c = new WeakReference(view);
        this.f22111b = bVar;
        e.c().d(this);
        com.cloud.hisavana.sdk.common.tranmeasure.c cVar = this.f22117h;
        if (cVar == null || cVar.d() <= 0 || this.f22113d) {
            return;
        }
        if (this.f22111b != null) {
            AdsDTO adsDTOE = e();
            if (adsDTOE != null && view != null) {
                adsDTOE.setImageWidth(Integer.valueOf(view.getMeasuredWidth()));
                adsDTOE.setImageHeight(Integer.valueOf(view.getMeasuredHeight()));
            }
            Preconditions.d(new c(this));
            this.f22113d = true;
        }
        AdsDTO adsDTOE2 = e();
        if (adsDTOE2 != null) {
            adsDTOE2.setShowReportTimeType(1);
            r2.a(adsDTOE2);
        }
    }

    public void c(boolean z10) {
        this.f22113d = z10;
    }

    protected boolean d(Object obj) {
        return this.f22110a == obj;
    }

    protected AdsDTO e() {
        Object obj = this.f22110a;
        if (obj instanceof AdsDTO) {
            return (AdsDTO) obj;
        }
        if (obj instanceof TaNativeInfo) {
            return ((TaNativeInfo) obj).getAdItem();
        }
        return null;
    }

    protected View f() {
        WeakReference weakReference = this.f22112c;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    protected Object g() {
        return this.f22110a;
    }

    public boolean h() {
        return this.f22113d;
    }

    public boolean i() {
        return this.f22116g.get();
    }

    protected void j() {
        com.cloud.hisavana.sdk.common.tranmeasure.c cVar = this.f22117h;
        if (cVar != null) {
            cVar.c();
        }
    }
}
