package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final q3 f22398b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f22399c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.cloud.hisavana.sdk.api.listener.f f22400d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f22404h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f22405i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f22406j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List f22408l;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f22401e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f22402f = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f22403g = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f22407k = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final l4.a f22409m = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    Runnable f22410n = new b();

    class a implements l4.a {
        a() {
        }

        @Override // com.cloud.hisavana.sdk.l4.a
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            try {
                e.this.o(bundle);
                int iH = e.this.h(null);
                if (iH != 1) {
                    e eVar = e.this;
                    eVar.F(iH < 0 ? Math.abs(iH) : eVar.f22398b.a());
                }
            } catch (Throwable unused) {
            }
        }

        @Override // com.cloud.hisavana.sdk.l4.a
        public void a(List list) {
            e.this.f22408l = list;
            e4.b().d("ssp", "onWebRecommendInfoSuccess");
        }

        @Override // com.cloud.hisavana.sdk.l4.a
        public void b(List list, Bundle bundle) {
            try {
                e.this.o(bundle);
                int iH = e.this.h(list);
                if (iH != 1) {
                    e eVar = e.this;
                    eVar.F(iH < 0 ? Math.abs(iH) : eVar.f22398b.a());
                }
            } catch (Throwable unused) {
            }
        }

        @Override // com.cloud.hisavana.sdk.l4.a
        public void c(TaErrorCode taErrorCode, Bundle bundle) {
            try {
                if (e.this.f22399c != null && e.this.f22399c.size() > 1) {
                    e.this.f22407k = true;
                }
                e.this.o(bundle);
                int iH = e.this.h(null);
                if (iH != 1) {
                    e eVar = e.this;
                    eVar.F(iH < 0 ? Math.abs(iH) : eVar.f22398b.a());
                }
            } catch (Throwable unused) {
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.K();
        }
    }

    private e(q3 q3Var, com.cloud.hisavana.sdk.api.listener.f fVar) {
        this.f22398b = q3Var;
        this.f22397a = q3Var.i();
        this.f22400d = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        int i11;
        int i12;
        t("start to load ad");
        ConfigCodeSeatDTO configCodeSeatDTOC = P.g().c(this.f22397a);
        int i13 = !NetStateManager.checkNetworkState(true) ? 1 : 0;
        if (configCodeSeatDTOC == null) {
            if (P.g().l()) {
                t("本地有云控数据，但当前代码位配置不存在, return");
                q3 q3Var = this.f22398b;
                if (q3Var != null && !q3Var.r()) {
                    AthenaTracker.T(this.f22398b, TaErrorCode.CODE_AD_UNIT_CONFIG_IS_EMPTY);
                }
                q(TaErrorCode.ERROR_AD_NEW_UNIT_CONFIG_IS_EMPTY, null);
                return;
            }
            t("本地没有云控数据，构建默认云控");
            ConfigCodeSeatDTO configCodeSeatDTO = new ConfigCodeSeatDTO();
            configCodeSeatDTO.setCodeSeatId(this.f22397a);
            configCodeSeatDTO.setCodeSeatType(Integer.valueOf(this.f22398b.e()));
            configCodeSeatDTO.setOfflineAdEnable(false);
            if (this.f22398b.h() >= 0) {
                configCodeSeatDTO.setFillTimeoutDuration(Integer.valueOf(this.f22398b.h()));
            }
            configCodeSeatDTOC = com.cloud.hisavana.sdk.common.util.h.f22159a.a(configCodeSeatDTO);
            k1.o().n(3);
        }
        this.f22398b.b(i13);
        this.f22398b.c(configCodeSeatDTOC);
        this.f22401e = configCodeSeatDTOC.getCrosslevelComparison().booleanValue();
        q3 q3Var2 = this.f22398b;
        if (q3Var2 != null && !q3Var2.r()) {
            AthenaTracker.T(this.f22398b, 0);
        }
        if (a7.c.p()) {
            try {
                Locale locale = Locale.US;
                Integer numValueOf = Integer.valueOf(this.f22398b.a());
                String str = this.f22398b.f().getFillTimeoutDuration() + "ms";
                Boolean boolValueOf = Boolean.valueOf(this.f22398b.f().isOfflineAdEnable());
                Boolean boolValueOf2 = Boolean.valueOf(Z.f21541a.A());
                Integer adShowCountLimit = this.f22398b.f().getAdShowCountLimit();
                Integer numValueOf2 = Integer.valueOf(this.f22398b.f().getCurrentShowTimes());
                Integer numValueOf3 = Integer.valueOf(this.f22398b.f().getCarouselTime());
                Integer carouselCount = this.f22398b.f().getCarouselCount();
                Boolean crosslevelComparison = this.f22398b.f().getCrosslevelComparison();
                Object[] objArr = new Object[9];
                objArr[0] = numValueOf;
                objArr[1] = str;
                i11 = 2;
                try {
                    objArr[2] = boolValueOf;
                    objArr[3] = boolValueOf2;
                    objArr[4] = adShowCountLimit;
                    objArr[5] = numValueOf2;
                    objArr[6] = numValueOf3;
                    objArr[7] = carouselCount;
                    objArr[8] = crosslevelComparison;
                    String str2 = String.format(locale, "config info:\nfetchAdCount=%d\nfillTimeoutDuration=%s\nofflineAdEnable=%b\nadInternalRequestEnable=%b\nadShowCountLimit=%d，currentShowTimes=%d\ncarouselTime=%d，carouselCount=%d\ncrosslevelComparison=%b", objArr);
                    com.cloud.sdk.commonutil.util.q.b(str2, 1);
                    t(str2);
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                i11 = 2;
            }
        } else {
            i11 = 2;
        }
        if (configCodeSeatDTOC.getAdShowCountLimit().intValue() > -1 && configCodeSeatDTOC.getCurrentShowTimes() >= configCodeSeatDTOC.getAdShowCountLimit().intValue()) {
            t("当前代码位展示次数达到上限 ----- 已展示次数=" + configCodeSeatDTOC.getCurrentShowTimes() + "  展示上限=" + configCodeSeatDTOC.getAdShowCountLimit());
            q(TaErrorCode.ERROR_AD_NEW_IMPRESSION_LIMIT, null);
            return;
        }
        if (!w(configCodeSeatDTOC)) {
            q(TaErrorCode.ERROR_AD_SHOW_NOT_IN_INTERVAL, null);
            return;
        }
        t("current cloud is default cloud ---> " + configCodeSeatDTOC.isDefaultConfig());
        List listM = m(i13);
        this.f22399c = listM;
        if (listM == null || listM.isEmpty()) {
            q(TaErrorCode.ERROR_AD_CHAIN_IS_NULL, null);
            return;
        }
        boolean zBooleanValue = configCodeSeatDTOC.getCrosslevelComparison().booleanValue();
        configCodeSeatDTOC.getFillTimeoutDuration().intValue();
        if (zBooleanValue) {
            for (l4 l4Var : this.f22399c) {
                if (l4Var.b() == 1) {
                    l4Var.c(this.f22398b.a());
                    l4Var.a(this.f22398b);
                }
            }
            i12 = i11;
        } else {
            F(this.f22398b.a());
            i12 = 1;
        }
        com.cloud.hisavana.sdk.common.util.g0.e(SSPTrackingHelper.f21953a.p(this.f22398b.n()), "s_req_type", i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(int i11) {
        for (l4 l4Var : this.f22399c) {
            if (l4Var.b() == 1) {
                l4Var.c(i11);
                l4Var.a(this.f22398b);
                return;
            }
        }
    }

    private void H(List list) {
        List list2 = this.f22399c;
        if (list2 != null) {
            list2.clear();
            l4 l4VarL = l(y4.class);
            ((y4) l4VarL).k(list);
            this.f22399c.add(l4VarL);
            F(this.f22398b.a());
        }
    }

    private void I() {
        HSScopeHelper.f23167a.f(this.f22410n, this.f22398b.m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(List list) {
        H(list);
        I();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        this.f22403g = true;
        try {
            h(null);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int f(AdsDTO adsDTO, AdsDTO adsDTO2) {
        return Double.compare(adsDTO2.getFirstPrice().doubleValue(), adsDTO.getFirstPrice().doubleValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int h(List list) {
        if (this.f22404h) {
            return 1;
        }
        if (this.f22400d == null) {
            return 2;
        }
        if (list != null && !list.isEmpty()) {
            this.f22402f.addAll(list);
            try {
                ArrayList arrayList = new ArrayList(this.f22402f);
                Collections.sort(arrayList, new Comparator() { // from class: com.cloud.hisavana.sdk.k3
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return e.f((AdsDTO) obj, (AdsDTO) obj2);
                    }
                });
                this.f22402f.clear();
                this.f22402f.addAll(arrayList);
            } catch (Throwable unused) {
            }
        }
        boolean zY = y(this.f22407k);
        if (this.f22401e && !this.f22403g && !zY) {
            return 2;
        }
        int iA = this.f22398b.a();
        List listZ = z(iA);
        if (!zY && !this.f22403g) {
            if (listZ.isEmpty()) {
                return 2;
            }
            if (listZ.size() < iA) {
                return listZ.size() - iA;
            }
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            com.cloud.hisavana.sdk.common.util.g0.c(sSPTrackingHelper.p(this.f22398b.n()), "s_req_timeout", false);
            sSPTrackingHelper.x(this.f22402f, this.f22398b);
            q(null, listZ);
            return 1;
        }
        SSPTrackingHelper sSPTrackingHelper2 = SSPTrackingHelper.f21953a;
        com.cloud.hisavana.sdk.common.util.g0.c(sSPTrackingHelper2.p(this.f22398b.n()), "s_req_timeout", this.f22403g);
        if (!listZ.isEmpty()) {
            sSPTrackingHelper2.x(this.f22402f, this.f22398b);
            q(null, listZ);
            return 1;
        }
        if (!this.f22403g && this.f22407k && !y(false)) {
            return 2;
        }
        List list2 = this.f22408l;
        if (list2 == null || list2.isEmpty()) {
            q(TaErrorCode.ERROR_TAKE_AD_RESULT_FAILED, null);
            return 1;
        }
        e4.b().d("AdFetch", "adsList is empty,webPageRecommendInfo is not empty return success");
        q(null, listZ);
        return 1;
    }

    private AdxImpBean i(q3 q3Var) {
        AdxImpBean adxImpBean = new AdxImpBean();
        try {
            adxImpBean.adt = q3Var.e();
            adxImpBean.pmid = q3Var.i();
            adxImpBean.mAdCount = q3Var.a();
            adxImpBean.requestId = q3Var.j();
            adxImpBean.requestType = q3Var.k();
            adxImpBean.triggerId = q3Var.n();
            if (q3Var.l() != null) {
                adxImpBean.gameName = q3Var.l().b();
                adxImpBean.gameScene = q3Var.l().c();
                adxImpBean.extInfo = q3Var.l().a();
            }
            adxImpBean.supportEw = q3Var.y();
            adxImpBean.requestTs = Long.valueOf(System.currentTimeMillis());
            adxImpBean.isAutoPlayVideoAd = q3Var.q();
            adxImpBean.offlineAdEnable = q3Var.f().isOfflineAdEnable();
            adxImpBean.cacheAdCount = q3Var.a();
            adxImpBean.mTriggerNetState = q3Var.o();
            adxImpBean.webPageReqInfo = q3Var.p();
        } catch (Throwable unused) {
        }
        return adxImpBean;
    }

    public static e j(q3 q3Var, com.cloud.hisavana.sdk.api.listener.f fVar) {
        return new e(q3Var, fVar);
    }

    private l4 l(Class cls) {
        l4 y4Var;
        if (cls == d1.class) {
            y4Var = new d1();
            y4Var.e(this.f22398b.f().getFillTimeoutDuration().intValue());
        } else if (cls == g0.class) {
            y4Var = new g0();
        } else if (cls == p2.class) {
            y4Var = new p2();
        } else {
            y4Var = cls == y4.class ? new y4() : null;
        }
        if (y4Var != null) {
            y4Var.d(this.f22409m);
        }
        return y4Var;
    }

    private List m(int i11) {
        ArrayList arrayList = new ArrayList();
        boolean zIsOfflineAdEnable = this.f22398b.f().isOfflineAdEnable();
        ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.f21953a.p(this.f22398b.n());
        if (this.f22398b.x()) {
            com.cloud.hisavana.sdk.common.util.g0.e(concurrentHashMapP, "temp_online_without_req", TaErrorCode.CODE_AD_ONLY_REQ_DEFAULT);
            arrayList.add(l(p2.class));
        } else if (i11 == 1) {
            com.cloud.hisavana.sdk.common.util.g0.e(concurrentHashMapP, "temp_online_without_req", TaErrorCode.CODE_AD_NO_NETWORK);
            if (zIsOfflineAdEnable) {
                arrayList.add(l(g0.class));
            }
            if (Z.f21541a.A()) {
                arrayList.add(l(p2.class));
            }
        } else {
            arrayList.add(l(d1.class));
            if (zIsOfflineAdEnable) {
                arrayList.add(l(g0.class));
            }
            if (Z.f21541a.A()) {
                arrayList.add(l(p2.class));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        try {
            if (bundle.containsKey("offline_ad_status")) {
                this.f22405i = (String) bundle.get("offline_ad_status");
            } else if (bundle.containsKey("default_ad_status")) {
                this.f22406j = (String) bundle.get("default_ad_status");
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(TaErrorCode taErrorCode, Bundle bundle) {
        this.f22400d.b(taErrorCode, bundle);
    }

    private void q(final TaErrorCode taErrorCode, final List list) {
        if (this.f22404h) {
            return;
        }
        this.f22404h = true;
        if (!this.f22403g) {
            HSScopeHelper.f23167a.d(this.f22410n);
        }
        if (this.f22400d == null) {
            int errorCode = taErrorCode != null ? taErrorCode.getErrorCode() : 0;
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            q3 q3Var = this.f22398b;
            sSPTrackingHelper.A(errorCode, q3Var, null, this.f22405i, this.f22406j, q3Var.f().getLocalOfflineAdCacheCount(), System.currentTimeMillis() - this.f22398b.g(), 2);
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f22398b.g();
        final Bundle bundle = new Bundle();
        com.cloud.hisavana.sdk.common.util.g0.f(bundle, "time_consuming", jCurrentTimeMillis);
        com.cloud.hisavana.sdk.common.util.g0.d(bundle, "cache_offline_ad_count", this.f22398b.f().getLocalOfflineAdCacheCount());
        com.cloud.hisavana.sdk.common.util.g0.g(bundle, "offline_ad_status", this.f22405i);
        com.cloud.hisavana.sdk.common.util.g0.g(bundle, "default_ad_status", this.f22406j);
        if (taErrorCode == null) {
            u(list, jCurrentTimeMillis);
            HSScopeHelper.f23167a.h(new Runnable() { // from class: com.cloud.hisavana.sdk.o3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f22808a.v(list, bundle);
                }
            });
            return;
        }
        if (a7.c.p()) {
            com.cloud.sdk.commonutil.util.q.b("fill_fail，error code is " + taErrorCode.getErrorCode() + ", ad_trigger_status，" + this.f22398b.o(), 3);
            t("fill failed, filltime=" + jCurrentTimeMillis + "error=" + taErrorCode);
        }
        HSScopeHelper.f23167a.h(new Runnable() { // from class: com.cloud.hisavana.sdk.n3
            @Override // java.lang.Runnable
            public final void run() {
                this.f22748a.p(taErrorCode, bundle);
            }
        });
    }

    private void t(String str) {
        if (a7.c.p() && !TextUtils.isEmpty(str)) {
            e4.b().d("AdFetch", str + ", codeSeatId=" + this.f22397a);
        }
    }

    private void u(List list, long j11) {
        if (a7.c.p() && list != null && list.size() > 0) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("fill success:");
                sb2.append("\n");
                sb2.append("fill time: ");
                sb2.append(j11);
                sb2.append("ms");
                sb2.append("\n");
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    AdsDTO adsDTO = (AdsDTO) it.next();
                    if (adsDTO != null) {
                        sb2.append("ad_trigger_status: ");
                        sb2.append(this.f22398b.o());
                        sb2.append("，is_offline_ad: ");
                        sb2.append(adsDTO.isOfflineAd());
                        sb2.append("，adCreativeId: ");
                        sb2.append(adsDTO.getAdCreativeId());
                        sb2.append(", source:");
                        sb2.append(adsDTO.getSource());
                        sb2.append("\n");
                    }
                }
                com.cloud.sdk.commonutil.util.q.b(sb2.toString(), 3);
                t(sb2.toString());
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(List list, Bundle bundle) {
        List list2 = this.f22408l;
        if (list2 == null || list2.isEmpty()) {
            this.f22400d.d(list, bundle);
        } else {
            this.f22400d.c(list, this.f22408l, bundle, i(this.f22398b));
        }
    }

    private boolean w(ConfigCodeSeatDTO configCodeSeatDTO) {
        int iIntValue = configCodeSeatDTO.getShowInterval().intValue();
        long lastShowAdTime = configCodeSeatDTO.getLastShowAdTime();
        long jCurrentTimeMillis = System.currentTimeMillis();
        e4.b().d("AdFetch", "calculateDownloadCount, current " + jCurrentTimeMillis + ",lastShowAdTime " + lastShowAdTime + ",showInterval " + iIntValue);
        return iIntValue <= 0 || Math.abs(lastShowAdTime - jCurrentTimeMillis) >= ((long) iIntValue) * 1000;
    }

    private boolean y(boolean z10) {
        List list = this.f22399c;
        if (list == null || list.isEmpty()) {
            return true;
        }
        for (l4 l4Var : this.f22399c) {
            if (!z10 || !(l4Var instanceof d1)) {
                if (l4Var.b() != 3) {
                    return false;
                }
            }
        }
        return true;
    }

    private List z(int i11) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList = new ArrayList();
        if (i11 <= 0) {
            return arrayList;
        }
        try {
            for (AdsDTO adsDTO : this.f22402f) {
                if (adsDTO != null) {
                    if (!hashSet.contains(adsDTO.getAdCreativeId())) {
                        String psPackageName = TextUtils.isEmpty(adsDTO.getPackageName()) ? adsDTO.getPsPackageName() : adsDTO.getPackageName();
                        if (TextUtils.isEmpty(psPackageName) || !hashSet2.contains(psPackageName)) {
                            if (!TextUtils.isEmpty(psPackageName)) {
                                hashSet2.add(psPackageName);
                            }
                            hashSet.add(adsDTO.getAdCreativeId());
                            adsDTO.setShowSourceSize(this.f22398b.f().getShowSourceSize().booleanValue());
                            adsDTO.setPreloadStatus(0);
                            arrayList.add(adsDTO);
                        }
                    }
                }
                if (arrayList.size() >= i11) {
                    break;
                }
            }
        } catch (Throwable th2) {
            e4.b().w("AdFetch", "buildDeduplicatedAdResult error: " + th2.getMessage());
        }
        return arrayList;
    }

    public void D(final List list) {
        HSScopeHelper.f23167a.e(new Runnable() { // from class: com.cloud.hisavana.sdk.l3
            @Override // java.lang.Runnable
            public final void run() {
                this.f22623a.J(list);
            }
        });
    }

    public void E() {
        try {
            if (!this.f22403g) {
                HSScopeHelper.f23167a.d(this.f22410n);
            }
            this.f22400d = null;
        } catch (Throwable unused) {
        }
    }

    public void n() {
        this.f22408l = null;
        HSScopeHelper.f23167a.e(new Runnable() { // from class: com.cloud.hisavana.sdk.m3
            @Override // java.lang.Runnable
            public final void run() {
                this.f22647a.C();
            }
        });
        I();
    }
}
