package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.transsion.push.PushConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f22433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u3 f22434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f22435c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f22436d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f22437e = -1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f22438f = -1.0f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f22439g = -1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map f22440h = new HashMap();

    private class b implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AdsDTO f22441a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TaNativeInfo f22442b;

        b(AdsDTO adsDTO, TaNativeInfo taNativeInfo) {
            this.f22441a = adsDTO;
            this.f22442b = taNativeInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == null || this.f22441a == null) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (view instanceof AdCloseView) {
                if (jCurrentTimeMillis - t2.p().r() >= 2000) {
                    f.this.f22433a = jCurrentTimeMillis;
                    if (this.f22441a.getSource() != 4) {
                        if (t2.p().o(view.getContext(), f.this.f22434b, this.f22441a, (AdCloseView) view)) {
                            t2.p().n(f.this.f22434b, this.f22442b);
                            return;
                        }
                        return;
                    } else {
                        if (f.this.f22434b == null || f.this.f22434b.Z() == null) {
                            return;
                        }
                        f.this.f22434b.Z().o(this.f22442b, this.f22441a);
                        return;
                    }
                }
                return;
            }
            if (this.f22441a.getPslinkInfo() != null) {
                if (view.getTag() == null || !TextUtils.equals("ad_download", view.getTag().toString())) {
                    this.f22441a.getPslinkInfo().setClickType(1);
                    this.f22441a.setTrackUserClickArea(1);
                    e4.b().d("ssp", "pslink half setClickType, click_img");
                } else {
                    this.f22441a.getPslinkInfo().setClickType(2);
                    this.f22441a.setTrackUserClickArea(2);
                    e4.b().d("ssp", "pslink half setClickType, click_install");
                }
            }
            if (jCurrentTimeMillis - f.this.f22433a > 1000) {
                try {
                    N0.b(view.getContext(), this.f22441a, new DownUpPointBean(f.this.f22436d, f.this.f22437e, f.this.f22438f, f.this.f22439g, view.getMeasuredHeight(), view.getMeasuredWidth()), f.this.f22434b == null ? false : f.this.f22434b.p().v());
                    AthenaTracker.W(this.f22441a);
                    if (f.this.f22434b != null && f.this.f22434b.Z() != null) {
                        f.this.f22434b.Z().y(this.f22442b);
                    }
                    f.this.f22433a = jCurrentTimeMillis;
                } catch (Throwable th2) {
                    e4.b().e(Log.getStackTraceString(th2));
                }
            }
        }
    }

    private class c implements View.OnTouchListener {
        private c() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                f.this.f22436d = motionEvent.getX();
                f.this.f22437e = motionEvent.getY();
                return false;
            }
            if (action != 1) {
                return false;
            }
            f.this.f22438f = motionEvent.getX();
            f.this.f22439g = motionEvent.getY();
            return false;
        }
    }

    f(u3 u3Var) {
        this.f22434b = u3Var;
    }

    private boolean g(View view) {
        if (view == null || view.getTag() == null) {
            return false;
        }
        return view.getTag().equals("adxAdChoice") || view.getTag().equals("image_webview");
    }

    private void n() {
        Iterator it = this.f22440h.entrySet().iterator();
        while (it.hasNext()) {
            List<View> list = (List) ((Map.Entry) it.next()).getValue();
            if (list != null) {
                for (View view : list) {
                    if (view != null) {
                        view.setOnClickListener(null);
                        view.setOnTouchListener(null);
                    }
                }
            }
        }
        this.f22440h.clear();
    }

    public void d() {
        n();
        e4.b().d("ssp", PushConstants.PROVIDER_FIELD_DESTROY);
    }

    void e(View view, List list, TaNativeInfo taNativeInfo, AdsDTO adsDTO) {
        if (list != null) {
            Iterator it = list.iterator();
            this.f22440h.put(taNativeInfo, list);
            c cVar = new c();
            b bVar = new b(adsDTO, taNativeInfo);
            if (view != null) {
                view.setOnTouchListener(cVar);
                view.setOnClickListener(bVar);
            }
            while (it.hasNext()) {
                View view2 = (View) it.next();
                if (view2 != null && !g(view2) && !(view2 instanceof AdChoicesView)) {
                    view2.setOnClickListener(bVar);
                }
            }
        }
    }

    void f(TaNativeInfo taNativeInfo) {
        u3 u3Var = this.f22434b;
        if (u3Var == null || u3Var.Z() == null) {
            return;
        }
        this.f22434b.W(taNativeInfo);
        AdsDTO adItem = taNativeInfo == null ? null : taNativeInfo.getAdItem();
        if (adItem == null || adItem.getImpBeanRequest() == null) {
            return;
        }
        P.g().k(adItem.getImpBeanRequest().pmid);
        if (adItem.getSource() == 4) {
            Z.f21541a.q(adItem.getAdCreativeId(), adItem.getCodeSeatId());
        } else if (adItem.isOfflineAd()) {
            adItem.setShowNum(Integer.valueOf(adItem.getShowNum().intValue() + 1));
            c0.F().q(adItem);
        }
    }

    List j() {
        return this.f22435c;
    }

    void k(TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null) {
            return;
        }
        List<View> list = (List) this.f22440h.get(taNativeInfo);
        if (com.cloud.hisavana.sdk.common.util.i.a(list)) {
            for (View view : list) {
                if (view != null) {
                    view.setOnClickListener(null);
                    view.setOnTouchListener(null);
                }
            }
            this.f22440h.remove(taNativeInfo);
        }
    }
}
