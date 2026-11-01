package com.cloud.tmc.miniapp.prestrategy.strategy;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.proxy.PreHtmStrategyProxy;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.network.IResponseCallback;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.EncryptUtils;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cookie;

/* JADX INFO: loaded from: classes3.dex */
public final class PreHtmlStrategy implements PreHtmStrategyProxy {
    public static final OooO00o Companion = new OooO00o();
    public static final String KEY_FILE_PRE_HTML = "miniStrategyPreHtml";
    public static final String KEY_PRE_HTML_LIST = "miniStrategyPreHtmlList";
    public final String OooO00o = "PreHtmlStrategy";
    public List<String> OooO0O0;
    public AtomicInteger OooO0OO;

    public static final class OooO00o {
    }

    public static final class OooO0O0 implements IResponseCallback {
        public final String OooO00o;
        public final /* synthetic */ PreHtmlStrategy OooO0O0;
        public final /* synthetic */ Function1<Boolean, Unit> OooO0OO;
        public final /* synthetic */ Context OooO0Oo;

        /* JADX WARN: Multi-variable type inference failed */
        public OooO0O0(String str, int i11, PreHtmlStrategy preHtmlStrategy, Function1<? super Boolean, Unit> function1, Context context) {
            this.OooO0O0 = preHtmlStrategy;
            this.OooO0OO = function1;
            this.OooO0Oo = context;
            this.OooO00o = str;
        }

        @Override // com.cloud.tmc.kernel.proxy.network.IResponseCallback
        public void onFailure(String str, String str2, String str3) {
            TmcLogger.d(this.OooO0O0.OooO00o, "requestZeroSharpNewsHtml-> " + str2);
            try {
                Function1<Boolean, Unit> function1 = this.OooO0OO;
                if (function1 != null) {
                    function1.invoke(Boolean.FALSE);
                }
                this.OooO0O0.OooO0O0.remove(this.OooO00o);
                PreHtmlStrategy.access$removePreRequestNum(this.OooO0O0);
                PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                PointAnalyseType pointAnalyseType = PointAnalyseType.PRE_REQUEST_HTML_RET;
                Bundle bundle = new Bundle();
                bundle.putInt("ret", 0);
                bundle.putInt("triggerType", 1);
                Unit unit = Unit.f67061a;
                performanceAnalyseProxy.record("", pointAnalyseType, "", bundle);
            } catch (Throwable th2) {
                TmcLogger.e(this.OooO0O0.OooO00o, "requestZeroSharpNewsHtml", th2);
            }
        }

        @Override // com.cloud.tmc.kernel.proxy.network.IResponseCallback
        public void onSuccess(int i11, String str, Map<String, String> map, List<Cookie> list, String str2) {
            try {
                PreHtmlStrategy.access$removePreRequestNum(this.OooO0O0);
                TmcLogger.d(this.OooO0O0.OooO00o, "requestHtml-> success " + this.OooO00o);
                if (i11 == 200) {
                    PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                    PointAnalyseType pointAnalyseType = PointAnalyseType.PRE_REQUEST_HTML_RET;
                    Bundle bundle = new Bundle();
                    bundle.putInt("ret", 2);
                    bundle.putInt("triggerType", 1);
                    Unit unit = Unit.f67061a;
                    performanceAnalyseProxy.record("", pointAnalyseType, "", bundle);
                    List list2 = this.OooO0O0.OooO0O0;
                    PreHtmlStrategy preHtmlStrategy = this.OooO0O0;
                    Context context = this.OooO0Oo;
                    synchronized (list2) {
                        try {
                            if (preHtmlStrategy.OooO0O0.contains(this.OooO00o)) {
                                KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
                                String str3 = this.OooO00o;
                                if (str == null) {
                                    str = "";
                                }
                                kVStorageProxy.putString(context, PreHtmlStrategy.KEY_FILE_PRE_HTML, str3, str);
                                int configInt = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigInt(LauncherMiniAppConfigHelper.KEY_MAX_PRE_REQUEST, 10);
                                TmcLogger.d(preHtmlStrategy.OooO00o, "requestHtml.size->" + preHtmlStrategy.OooO0O0.size());
                                while (preHtmlStrategy.OooO0O0.size() > configInt) {
                                    TmcLogger.d("requestHtml.size->" + preHtmlStrategy.OooO0O0.size());
                                    String str4 = (String) preHtmlStrategy.OooO0O0.get(0);
                                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, PreHtmlStrategy.KEY_FILE_PRE_HTML, str4);
                                    TmcLogger.d(preHtmlStrategy.OooO00o, "remove preCache " + str4);
                                    preHtmlStrategy.OooO0O0.remove(0);
                                }
                                KVStorageProxy kVStorageProxy2 = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
                                String json = TmcGsonUtilsKt.toJson(preHtmlStrategy.OooO0O0);
                                if (json == null) {
                                    json = "";
                                }
                                kVStorageProxy2.putString(context, PreHtmlStrategy.KEY_FILE_PRE_HTML, PreHtmlStrategy.KEY_PRE_HTML_LIST, json);
                                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, PreHtmlStrategy.KEY_FILE_PRE_HTML, this.OooO00o + "_time", System.currentTimeMillis());
                            } else {
                                TmcLogger.d(preHtmlStrategy.OooO00o, "requestHtml-> pre request not in preRequestList -> " + this.OooO00o);
                            }
                            Unit unit2 = Unit.f67061a;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } else {
                    PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                    PointAnalyseType pointAnalyseType2 = PointAnalyseType.PRE_REQUEST_HTML_RET;
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("ret", 1);
                    bundle2.putInt("triggerType", 1);
                    Unit unit3 = Unit.f67061a;
                    performanceAnalyseProxy2.record("", pointAnalyseType2, "", bundle2);
                }
                Function1<Boolean, Unit> function1 = this.OooO0OO;
                if (function1 != null) {
                    function1.invoke(Boolean.TRUE);
                }
            } catch (Throwable th3) {
                Function1<Boolean, Unit> function2 = this.OooO0OO;
                if (function2 != null) {
                    function2.invoke(Boolean.FALSE);
                }
                TmcLogger.e(this.OooO0O0.OooO00o, "requestHtml-> Throwable", th3);
            }
        }
    }

    public PreHtmlStrategy() {
        List<String> listSynchronizedList = Collections.synchronizedList(new ArrayList());
        Intrinsics.g(listSynchronizedList, "synchronizedList(ArrayList())");
        this.OooO0O0 = listSynchronizedList;
        this.OooO0OO = new AtomicInteger(0);
    }

    public static final void access$removePreRequestNum(PreHtmlStrategy preHtmlStrategy) {
        preHtmlStrategy.getClass();
        try {
            if (preHtmlStrategy.OooO0OO.get() > 0) {
                preHtmlStrategy.OooO0OO.decrementAndGet();
            }
        } catch (Throwable th2) {
            TmcLogger.e(preHtmlStrategy.OooO00o, "removePreRequestNum", th2);
        }
    }

    public final int OooO00o() {
        return ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigInt(LauncherMiniAppConfigHelper.KEY_MINI_PRE_HTML_REQUEST_NUM, 3);
    }

    @Override // com.cloud.tmc.integration.proxy.PreHtmStrategyProxy
    public boolean checkPreHtmlCache(Context context, String urlMd5, boolean z10) {
        long j11;
        long configTargetInt;
        Intrinsics.h(urlMd5, "urlMd5");
        if (context == null) {
            return true;
        }
        try {
            j11 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, KEY_FILE_PRE_HTML, urlMd5 + "_time");
        } catch (Throwable th2) {
            TmcLogger.e(this.OooO00o, th2);
            j11 = 0;
        }
        if (j11 == 0) {
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - j11;
        try {
            configTargetInt = ((long) (MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_PRE_HTML_EXPIRED_TIME, 24) * 3600)) * 1000;
        } catch (Throwable unused) {
            configTargetInt = 86400000;
        }
        if (jCurrentTimeMillis < configTargetInt) {
            return true;
        }
        TmcLogger.d(this.OooO00o, "html cache is expired");
        if (z10) {
            this.OooO0O0.remove(urlMd5);
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, KEY_FILE_PRE_HTML, urlMd5);
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, KEY_FILE_PRE_HTML, urlMd5 + "_time", -1L);
        }
        return false;
    }

    @Override // com.cloud.tmc.integration.proxy.PreHtmStrategyProxy
    public String getPreHtmlCache(Context context, String md5, int i11, boolean z10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(md5, "md5");
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        PointAnalyseType pointAnalyseType = PointAnalyseType.GET_PRE_HTML;
        Bundle bundle = new Bundle();
        bundle.putInt("getPreHtmlChannel", i11);
        Unit unit = Unit.f67061a;
        performanceAnalyseProxy.record("", pointAnalyseType, "", bundle);
        String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, KEY_FILE_PRE_HTML, md5);
        if (string == null) {
            string = "";
        }
        if (TextUtils.isEmpty(string)) {
            PerformanceAnalyseProxy performanceAnalyseProxy2 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            PointAnalyseType pointAnalyseType2 = PointAnalyseType.GET_PRE_HTML_HIT;
            Bundle bundle2 = new Bundle();
            bundle2.putInt("getPreHtmlChannel", i11);
            bundle2.putInt("hitRet", 0);
            performanceAnalyseProxy2.record("", pointAnalyseType2, "", bundle2);
            return "";
        }
        if (!z10 || checkPreHtmlCache(context, md5, false)) {
            PerformanceAnalyseProxy performanceAnalyseProxy3 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            PointAnalyseType pointAnalyseType3 = PointAnalyseType.GET_PRE_HTML_HIT;
            Bundle bundle3 = new Bundle();
            bundle3.putInt("getPreHtmlChannel", i11);
            bundle3.putInt("hitRet", 2);
            bundle3.putInt("triggerType", 1);
            performanceAnalyseProxy3.record("", pointAnalyseType3, "", bundle3);
            return string;
        }
        PerformanceAnalyseProxy performanceAnalyseProxy4 = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        PointAnalyseType pointAnalyseType4 = PointAnalyseType.GET_PRE_HTML_HIT;
        Bundle bundle4 = new Bundle();
        bundle4.putInt("getPreHtmlChannel", i11);
        bundle4.putInt("hitRet", 1);
        bundle4.putInt("triggerType", 1);
        performanceAnalyseProxy4.record("", pointAnalyseType4, "", bundle4);
        return "";
    }

    @Override // com.cloud.tmc.integration.proxy.PreHtmStrategyProxy
    public void requestHtml(Context context, String contentUrl, Function1<? super Boolean, Unit> function1) {
        Intrinsics.h(context, "context");
        Intrinsics.h(contentUrl, "contentUrl");
        synchronized (this.OooO0O0) {
            try {
                try {
                    if (this.OooO0OO.get() >= OooO00o()) {
                        TmcLogger.e(this.OooO00o, "requestNum >=" + OooO00o() + " return");
                        Bundle bundle = new Bundle();
                        bundle.putString("failReason", "requestNum >=" + OooO00o() + " return");
                        trackPreStrategyFailPoint(bundle);
                        if (function1 != null) {
                            function1.invoke(Boolean.FALSE);
                        }
                        return;
                    }
                    if (contentUrl.length() == 0) {
                        TmcLogger.e(this.OooO00o, "contentUrl is empty");
                        if (function1 != null) {
                            function1.invoke(Boolean.FALSE);
                        }
                        return;
                    }
                    if (this.OooO0O0.size() == 0) {
                        String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, KEY_FILE_PRE_HTML, KEY_PRE_HTML_LIST);
                        if (string == null) {
                            string = "";
                        }
                        Intrinsics.g(string, "TmcProxy.get(KVStoragePr…                  ) ?: \"\"");
                        if (string.length() > 0) {
                            ArrayList list = (ArrayList) GsonUtils.fromJson(string, new TypeToken<ArrayList<String>>() { // from class: com.cloud.tmc.miniapp.prestrategy.strategy.PreHtmlStrategy$requestHtml$1$list$1
                            }.getType());
                            List<String> list2 = this.OooO0O0;
                            Intrinsics.g(list, "list");
                            list2.addAll(list);
                            TmcLogger.d(this.OooO00o, "preRequestList is init");
                        }
                    }
                    String md5 = EncryptUtils.encryptMD5ToString(contentUrl);
                    if (this.OooO0O0.contains(md5)) {
                        Intrinsics.g(md5, "md5");
                        if (PreHtmStrategyProxy.DefaultImpls.checkPreHtmlCache$default(this, context, md5, false, 4, null)) {
                            TmcLogger.d(this.OooO00o, "content url is exist");
                            if (function1 != null) {
                                function1.invoke(Boolean.FALSE);
                            }
                            return;
                        }
                    }
                    try {
                        this.OooO0OO.incrementAndGet();
                    } catch (Throwable th2) {
                        TmcLogger.e(this.OooO00o, "addPreRequestNum", th2);
                    }
                    List<String> list3 = this.OooO0O0;
                    Intrinsics.g(md5, "md5");
                    list3.add(md5);
                    ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, KEY_FILE_PRE_HTML, md5 + "_time", 0L);
                    TmcLogger.d(this.OooO00o, "md5->" + md5);
                    PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                    PointAnalyseType pointAnalyseType = PointAnalyseType.PRE_REQUEST_HTML;
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("triggerType", 1);
                    Unit unit = Unit.f67061a;
                    performanceAnalyseProxy.record("", pointAnalyseType, "", bundle2);
                    ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).get(contentUrl, null, null, Boolean.FALSE, new OooO0O0(md5, 1, this, function1, context));
                    Unit unit2 = Unit.f67061a;
                } catch (Throwable th3) {
                    if (function1 != null) {
                        function1.invoke(Boolean.FALSE);
                    }
                    TmcLogger.e(this.OooO00o, "requestZeroSharpNewsHtml", th3);
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    @Override // com.cloud.tmc.integration.proxy.PreHtmStrategyProxy
    public void trackPreStrategyFailPoint(Bundle bundle) {
        if (MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_PRE_STRATEGY_TRACK_POINT, false)) {
            PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
            PointAnalyseType pointAnalyseType = PointAnalyseType.PRE_STRATEGY_FAIL;
            if (bundle == null) {
                bundle = new Bundle();
            }
            performanceAnalyseProxy.record("", pointAnalyseType, "", bundle);
        }
    }
}
