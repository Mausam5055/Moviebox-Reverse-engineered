package com.cloud.hisavana.sdk;

import android.content.res.AssetManager;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.disklrucache.listener.LruCleanCallBack;
import com.cloud.hisavana.net.impl.StringCallback;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.data.bean.inapp.CachedAdInfos;
import com.cloud.hisavana.sdk.data.bean.inapp.DefaultAdDTO;
import com.cloud.hisavana.sdk.data.bean.inapp.DefaultDataDTO;
import com.cloud.hisavana.sdk.data.bean.inapp.PsAppInfo;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.DefaultResponse;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CommonConfigDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.Headers;

/* JADX INFO: loaded from: classes3.dex */
public final class Z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Z f21541a = new Z();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f21542b = 86400000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicBoolean f21543c = new AtomicBoolean(true);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicInteger f21544d = new AtomicInteger(-1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f21545e = "https://transsion-eagllwin-material-static-test.oss-ap-southeast-1.aliyuncs.com/adInternal/json/" + a7.c.f365b + '_' + i7.c.l() + ".txt";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f21546f = "https://material-static-oss.eagllwin.com/adInternal/json/" + a7.c.f365b + '_' + i7.c.l() + ".txt";

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()V"}, k = 3, mv = {1, 9, 0})
    static final class a extends Lambda implements Function0<Unit> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AtomicInteger f21547a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f21548b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List<String> f21549c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f21550d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(AtomicInteger atomicInteger, String str, List<String> list, int i11) {
            super(0);
            this.f21547a = atomicInteger;
            this.f21548b = str;
            this.f21549c = list;
            this.f21550d = i11;
        }

        public final void a() {
            if (this.f21547a.get() == 0) {
                e0.f22413a.e(this.f21548b);
            }
            Z.f21541a.r(this.f21549c, this.f21550d + 1);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.f67061a;
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/Z$b", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class b extends TypeToken<List<? extends AdsDTO>> {
        b() {
        }
    }

    public static final class c extends StringCallback {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f21551c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ RequestParams f21552d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f21553e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, RequestParams requestParams, String str2) {
            super(true);
            this.f21551c = str;
            this.f21552d = requestParams;
            this.f21553e = str2;
        }

        @Override // com.cloud.hisavana.net.impl.StringCallback, com.cloud.hisavana.net.impl.HttpCallbackImpl
        public void l(Headers headers) {
            super.l(headers);
        }

        @Override // com.cloud.hisavana.net.impl.StringCallback
        public void x(int i11, String str, Throwable th2) {
            String message;
            if (a7.c.p()) {
                String str2 = "----- full url = " + this.f21551c + " \n----- postBodyString = " + this.f21552d.getPostBody() + '}';
                e4 e4VarB = e4.b();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(" \n ----- status code =  ");
                sb2.append(i11);
                sb2.append("\n ----- error message =  + ");
                if (th2 == null || (message = th2.getMessage()) == null) {
                    message = "";
                }
                sb2.append(message);
                sb2.append(" ----- response = ");
                sb2.append(str);
                e4VarB.w("DefaultAdManager", sb2.toString());
            }
            AthenaTracker.M(this.f21553e, i11);
            Z.f21541a.t();
        }

        @Override // com.cloud.hisavana.net.impl.StringCallback
        public void y(int i11, String str) {
            if (a7.c.p()) {
                String str2 = "----- full url = " + this.f21551c + " \n----- postBodyString = " + this.f21552d.getPostBody() + '}';
                e4.b().w("DefaultAdManager", str2 + " \n ----- status code =  " + i11 + "\n ----- response = " + str);
            }
            Z z10 = Z.f21541a;
            int iH = z10.h(i11, str);
            z10.t();
            AthenaTracker.M(this.f21553e, iH);
        }
    }

    private Z() {
    }

    private final DefaultDataDTO B() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.cloud.hisavana.sdk.common.util.m.b(com.cloud.sdk.commonutil.util.e.a()));
        String str = File.separator;
        sb2.append(str);
        sb2.append("default_ad_data");
        sb2.append(str);
        sb2.append(a7.c.f365b);
        sb2.append(str);
        sb2.append("default_ad_data.txt");
        String string = sb2.toString();
        e4.b().d("DefaultAdManager", "default_ad_data path is " + string);
        File file = new File(string);
        if (!file.exists()) {
            e4.b().w("DefaultAdManager", "default ad data path is not exist");
            return null;
        }
        try {
            file.setReadable(true);
            file.setWritable(true);
            DefaultDataDTO defaultDataDTO = (DefaultDataDTO) GsonUtil.a(FilesKt.i(file, null, 1, null), DefaultDataDTO.class);
            if (defaultDataDTO == null) {
                return null;
            }
            long jH = j7.a.e().h("default_local_version");
            e4.b().d("DefaultAdManager", "localVersion is " + jH + " , zip version is " + defaultDataDTO.getVersion());
            Long version = defaultDataDTO.getVersion();
            Intrinsics.g(version, "getVersion(...)");
            if (jH < version.longValue()) {
                return defaultDataDTO;
            }
        } catch (Throwable th2) {
            e4.b().d("DefaultAdManager", "parse default ad data failed, error is " + th2.getMessage());
        }
        return null;
    }

    private final void C() {
        String strA = com.cloud.hisavana.sdk.common.util.m0.a();
        AthenaTracker.L(strA);
        int iG = g();
        if (iG != 0) {
            AthenaTracker.M(strA, iG);
            t();
        } else {
            String strG = g7.a.g();
            RequestParams requestParams = new RequestParams();
            requestParams.i("Accept-Timezone", "UTC");
            HttpRequest.f21328a.h(strG, requestParams, new c(strG, requestParams, strA));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E() {
        CommonConfigDTO commonConfigData = CustomConfigManager.getCommonConfigData();
        if (!(commonConfigData != null ? Intrinsics.c(commonConfigData.getIsRequestDefaultAdOnNetChange(), Boolean.FALSE) : false) && f21544d.get() == 0 && f21543c.get()) {
            f21544d.set(1);
            f21541a.C();
        }
    }

    private final boolean F() {
        try {
            AssetManager assets = com.cloud.sdk.commonutil.util.e.a().getAssets();
            if (assets == null) {
                return false;
            }
            InputStream inputStreamOpen = assets.open(a7.c.f365b + ".zip");
            if (inputStreamOpen == null) {
                return false;
            }
            try {
                boolean zA = com.cloud.hisavana.sdk.common.util.s0.a(inputStreamOpen, com.cloud.hisavana.sdk.common.util.m.b(com.cloud.sdk.commonutil.util.e.a()) + File.separator + "default_ad_data");
                e4.b().d("DefaultAdManager", "unzip result is ----> " + zA);
                CloseableKt.a(inputStreamOpen, null);
                return zA;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(inputStreamOpen, th2);
                    throw th3;
                }
            }
        } catch (Exception unused) {
            e4.b().e("DefaultAdManager", "Please check whether the default advertising zip package is configured correctly");
            return false;
        }
    }

    private final int g() {
        if (!NetStateManager.checkNetworkState(true)) {
            return 2004;
        }
        long jI = j7.a.e().i("default_last_request_time", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jI2 = j7.a.e().i("default_interval", f21542b);
        e4.b().d("DefaultAdManager", "lastRequestTime is " + jI + ", currentTIme is " + jCurrentTimeMillis + ", default interval is " + jI2);
        return jCurrentTimeMillis - jI <= jI2 ? 2005 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int h(int i11, String str) {
        DefaultDataDTO data;
        if (i11 != 200) {
            return i11;
        }
        if (str == null || str.length() == 0) {
            return 2002;
        }
        try {
            DefaultResponse defaultResponse = (DefaultResponse) GsonUtil.a(str, DefaultResponse.class);
            if (defaultResponse == null || (data = defaultResponse.getData()) == null) {
                return 2002;
            }
            long jH = j7.a.e().h("default_local_version");
            e4.b().d("DefaultAdManager", "local version is " + jH + ", online version is " + data.getVersion());
            Long version = defaultResponse.getData().getVersion();
            Intrinsics.g(version, "getVersion(...)");
            if (jH < version.longValue()) {
                Z z10 = f21541a;
                DefaultDataDTO data2 = defaultResponse.getData();
                Intrinsics.g(data2, "getData(...)");
                z10.o(data2, false);
            }
            j7.a.e().q("default_last_request_time", System.currentTimeMillis());
            return 0;
        } catch (Exception unused) {
            return 2001;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(t0 listener, CachedAdInfos cachedAdInfos) {
        Intrinsics.h(listener, "$listener");
        Intrinsics.h(cachedAdInfos, "$cachedAdInfos");
        listener.a(cachedAdInfos.getAdsDTOList(), cachedAdInfos.getAdStatusStr());
    }

    private final void o(DefaultDataDTO defaultDataDTO, boolean z10) {
        List<DefaultAdDTO> nativeAds = defaultDataDTO.getNativeAds();
        if (nativeAds == null) {
            nativeAds = CollectionsKt.l();
        }
        List<DefaultAdDTO> bannerAds = defaultDataDTO.getBannerAds();
        if (bannerAds == null) {
            bannerAds = CollectionsKt.l();
        }
        List<DefaultAdDTO> interstitialAds = defaultDataDTO.getInterstitialAds();
        if (interstitialAds == null) {
            interstitialAds = CollectionsKt.l();
        }
        List<DefaultAdDTO> splashAds = defaultDataDTO.getSplashAds();
        if (splashAds == null) {
            splashAds = CollectionsKt.l();
        }
        List<DefaultAdDTO> iconAds = defaultDataDTO.getIconAds();
        if (iconAds == null) {
            iconAds = CollectionsKt.l();
        }
        List<DefaultAdDTO> rewardedAds = defaultDataDTO.getRewardedAds();
        if (rewardedAds == null) {
            rewardedAds = CollectionsKt.l();
        }
        List<PsAppInfo> psAppInfoList = defaultDataDTO.getPsAppInfoList();
        if (psAppInfoList == null) {
            psAppInfoList = CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(nativeAds);
        arrayList.addAll(bannerAds);
        arrayList.addAll(interstitialAds);
        arrayList.addAll(splashAds);
        arrayList.addAll(iconAds);
        arrayList.addAll(rewardedAds);
        e0 e0Var = e0.f22413a;
        Long version = defaultDataDTO.getVersion();
        Intrinsics.g(version, "getVersion(...)");
        e0Var.i(arrayList, psAppInfoList, z10, version.longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(String str) {
        e0 e0Var = e0.f22413a;
        Intrinsics.e(str);
        e0Var.n(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r(List list, int i11) {
        List list2;
        if (list.isEmpty() || i11 >= list.size()) {
            e4.b().d("DefaultAdManager", "download default material completed");
            f21544d.set(0);
            return;
        }
        String str = (String) list.get(i11);
        String strL = e0.f22413a.l(str);
        if (strL.length() == 0) {
            f21541a.r(list, i11 + 1);
            return;
        }
        try {
            list2 = (List) GsonUtil.b(strL.toString(), new b().getType());
        } catch (Exception unused) {
            e4.b().d("DefaultAdManager", "parse ad data json failed");
            list2 = null;
        }
        if (list2 == null || list2.isEmpty()) {
            f21541a.r(list, i11 + 1);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            AdsDTO adsDTO = (AdsDTO) obj;
            if (!(adsDTO != null ? adsDTO.isFromLocal() : false)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            f21541a.r(list, i11 + 1);
            return;
        }
        d0 d0Var = d0.f22327a;
        o4 o4VarA = d0Var.a(arrayList);
        AtomicInteger atomicInteger = new AtomicInteger(0);
        d0Var.f(str, o4VarA, atomicInteger, new a(atomicInteger, str, list, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t() {
        r(e0.f22413a.m(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(int i11, String codeSeatId, int i12, boolean z10, int i13, ConcurrentHashMap concurrentHashMap, final t0 listener) {
        Intrinsics.h(codeSeatId, "$codeSeatId");
        Intrinsics.h(listener, "$listener");
        final CachedAdInfos cachedAdInfosA = e0.f22413a.a(i11, codeSeatId, i12, z10, i13, concurrentHashMap);
        HSScopeHelper.f23167a.e(new Runnable() { // from class: com.cloud.hisavana.sdk.m2
            @Override // java.lang.Runnable
            public final void run() {
                Z.l(listener, cachedAdInfosA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(long j11) {
        boolean zC = j7.a.e().c("default_file_save_finished");
        int iG = j7.a.e().g(String.valueOf(j11), 0);
        long jH = j7.a.e().h("default_local_version");
        e4.b().d("DefaultAdManager", "defaultVersion is " + j11 + ",  local version is " + jH + " , times is " + iG);
        if (j11 <= 0 || jH >= j11 || iG >= 3) {
            if (!zC) {
                d0.f22327a.b();
            }
            f21541a.C();
            return;
        }
        Z z10 = f21541a;
        if (z10.F()) {
            DefaultDataDTO defaultDataDTOB = z10.B();
            if (defaultDataDTOB != null) {
                z10.o(defaultDataDTOB, true);
            }
            d0.f22327a.b();
        }
        z10.C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(String adCreativeId, String codeSeatId) {
        Intrinsics.h(adCreativeId, "$adCreativeId");
        Intrinsics.h(codeSeatId, "$codeSeatId");
        e0.f22413a.o(adCreativeId, codeSeatId);
    }

    private final void z() {
        HttpRequest.f21328a.b(new LruCleanCallBack() { // from class: com.cloud.hisavana.sdk.k2
            @Override // com.cloud.hisavana.net.disklrucache.listener.LruCleanCallBack
            public final void onCallBack(String str) {
                Z.p(str);
            }
        });
    }

    public final boolean A() {
        return f21543c.get();
    }

    public final void D() {
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.i2
            @Override // java.lang.Runnable
            public final void run() {
                Z.E();
            }
        });
    }

    public final void j(final int i11, final String codeSeatId, final int i12, final boolean z10, final int i13, final ConcurrentHashMap concurrentHashMap, final t0 listener) {
        Intrinsics.h(codeSeatId, "codeSeatId");
        Intrinsics.h(listener, "listener");
        HSScopeHelper.f23167a.e(new Runnable() { // from class: com.cloud.hisavana.sdk.l2
            @Override // java.lang.Runnable
            public final void run() {
                Z.u(i11, codeSeatId, i12, z10, i13, concurrentHashMap, listener);
            }
        });
    }

    public final void k(final long j11) {
        boolean zD = j7.a.e().d("default_is_open", true);
        f21543c.set(zD);
        e4.b().d("DefaultAdManager", "default ad is open ---> " + zD);
        if (!zD) {
            f21544d.set(0);
        } else {
            z();
            HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.j2
                @Override // java.lang.Runnable
                public final void run() {
                    Z.v(j11);
                }
            });
        }
    }

    public final void q(final String adCreativeId, final String codeSeatId) {
        Intrinsics.h(adCreativeId, "adCreativeId");
        Intrinsics.h(codeSeatId, "codeSeatId");
        HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.h2
            @Override // java.lang.Runnable
            public final void run() {
                Z.w(adCreativeId, codeSeatId);
            }
        });
    }

    public final void s(boolean z10) {
        f21543c.set(z10);
    }

    public final String x() {
        return f21546f;
    }

    public final String y() {
        return f21545e;
    }
}
