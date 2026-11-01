package com.cloud.hisavana.sdk;

import android.content.Context;
import android.content.MutableContextWrapper;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import com.cloud.hisavana.sdk.common.bean.PreloadH5Entry;
import com.cloud.hisavana.sdk.common.widget.webview.ActionWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class k4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k4 f22600a = new k4();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f22601b = "05MCJTA6GF3qZyZcN5Kwag==";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f22602c = "WebViewPreloader";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List f22603d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final LinkedHashMap f22604e = new LinkedHashMap(1, 0.75f, true);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f22605f;

    private k4() {
    }

    private final PreloadH5Entry d(Context context, AdsDTO adsDTO) {
        ActionWebView actionWebView = new ActionWebView(new MutableContextWrapper(context.getApplicationContext()));
        e4.b().d(f22602c, "createNewPreloadEntry, webView is " + actionWebView);
        return new PreloadH5Entry(actionWebView, adsDTO, null, 0, null, 0L, null, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, null);
    }

    private final void g(WebView webView, Context context) {
        Context context2 = webView.getContext();
        MutableContextWrapper mutableContextWrapper = context2 instanceof MutableContextWrapper ? (MutableContextWrapper) context2 : null;
        if (mutableContextWrapper == null) {
            return;
        }
        mutableContextWrapper.setBaseContext(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(PreloadH5Entry preloadH5Entry, Context context) {
        Intrinsics.h(preloadH5Entry, "$preloadH5Entry");
        Intrinsics.h(context, "$context");
        try {
            f22603d.remove(preloadH5Entry);
            ViewParent parent = preloadH5Entry.getWebView().getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(preloadH5Entry.getWebView());
            }
            Context context2 = preloadH5Entry.getWebView().getContext();
            MutableContextWrapper mutableContextWrapper = context2 instanceof MutableContextWrapper ? (MutableContextWrapper) context2 : null;
            if (mutableContextWrapper != null) {
                mutableContextWrapper.setBaseContext(context.getApplicationContext());
            }
            preloadH5Entry.release();
        } catch (Throwable th2) {
            e4.b().w(f22602c, "release error: " + th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(AdsDTO adsDTO, Context context) {
        Intrinsics.h(adsDTO, "$adsDTO");
        Intrinsics.h(context, "$context");
        try {
            com.cloud.hisavana.sdk.common.util.b bVar = com.cloud.hisavana.sdk.common.util.b.f22148a;
            if (!bVar.g(adsDTO)) {
                e4.b().w(f22602c, "preload: offline ad or default ad not available");
                return;
            }
            if (!NetStateManager.checkNetworkState(false)) {
                e4.b().w(f22602c, "preload: network not available");
                return;
            }
            if (!bVar.h(adsDTO.getRealLandUrl())) {
                e4.b().w(f22602c, "preload: invalid url " + adsDTO.getRealLandUrl());
                return;
            }
            LinkedHashMap linkedHashMap = f22604e;
            if (linkedHashMap.containsKey(adsDTO.getUuid())) {
                e4.b().d(f22602c, "preload: uuid " + adsDTO.getUuid() + " is preloading");
                return;
            }
            int size = f22603d.size() + linkedHashMap.size();
            long jCurrentTimeMillis = System.currentTimeMillis();
            e4.b().d(f22602c, "preload: start to load uuid " + adsDTO.getUuid() + ", currentTotal " + size + ", url is " + adsDTO.getRealLandUrl());
            if (size < 1) {
                PreloadH5Entry preloadH5EntryD = f22600a.d(context, adsDTO);
                String uuid = adsDTO.getUuid();
                Intrinsics.g(uuid, "getUuid(...)");
                linkedHashMap.put(uuid, preloadH5EntryD);
                preloadH5EntryD.load();
                return;
            }
            if (linkedHashMap.isEmpty()) {
                return;
            }
            if (jCurrentTimeMillis - f22605f < 2000) {
                if (adsDTO.getPreloadStatus() < 2) {
                    adsDTO.setPreloadStatus(2);
                    return;
                }
                return;
            }
            Iterator it = linkedHashMap.entrySet().iterator();
            if (it.hasNext()) {
                PreloadH5Entry preloadH5Entry = (PreloadH5Entry) ((Map.Entry) it.next()).getValue();
                it.remove();
                AdsDTO adsDTO2 = preloadH5Entry.getAdsDTO();
                if (adsDTO2 != null) {
                    adsDTO2.setPreloadStatus(7);
                }
                preloadH5Entry.release();
                PreloadH5Entry preloadH5EntryD2 = f22600a.d(context, adsDTO);
                String uuid2 = adsDTO.getUuid();
                Intrinsics.g(uuid2, "getUuid(...)");
                linkedHashMap.put(uuid2, preloadH5EntryD2);
                preloadH5EntryD2.load();
                f22605f = jCurrentTimeMillis;
            }
        } catch (Throwable th2) {
            e4.b().w(f22602c, "preload error: " + th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(String str) {
        PreloadH5Entry preloadH5Entry;
        if (str == null || (preloadH5Entry = (PreloadH5Entry) f22604e.remove(str)) == null) {
            return;
        }
        preloadH5Entry.release();
    }

    public final PreloadH5Entry e(Context context, AdsDTO adsDTO, PreloadH5Entry.PreloadCallback callback) {
        boolean z10;
        PreloadH5Entry preloadH5EntryD;
        Intrinsics.h(context, "context");
        Intrinsics.h(adsDTO, "adsDTO");
        Intrinsics.h(callback, "callback");
        try {
            String realLandUrl = adsDTO.getRealLandUrl();
            LinkedHashMap linkedHashMap = f22604e;
            PreloadH5Entry preloadH5Entry = (PreloadH5Entry) linkedHashMap.remove(adsDTO.getUuid());
            if (preloadH5Entry == null) {
                z10 = true;
                if (f22603d.size() + linkedHashMap.size() >= 1 && !linkedHashMap.isEmpty()) {
                    Iterator it = linkedHashMap.entrySet().iterator();
                    PreloadH5Entry preloadH5Entry2 = (PreloadH5Entry) ((Map.Entry) it.next()).getValue();
                    it.remove();
                    preloadH5Entry2.release();
                    preloadH5EntryD = d(context, adsDTO);
                } else {
                    preloadH5EntryD = d(context, adsDTO);
                }
                preloadH5Entry = preloadH5EntryD;
            } else {
                adsDTO.setPreloadStatus(6);
                z10 = false;
            }
            f22603d.add(preloadH5Entry);
            g(preloadH5Entry.getWebView(), context);
            preloadH5Entry.setCallback(callback);
            if (!com.cloud.hisavana.sdk.common.util.b.f22148a.h(realLandUrl)) {
                adsDTO.setPreloadStatus(8);
                preloadH5Entry.setOverrideUrl(realLandUrl);
            } else if (z10) {
                preloadH5Entry.load();
            }
            return preloadH5Entry;
        } catch (Throwable th2) {
            e4.b().w(f22602c, "getPreloadH5Entry error: " + th2.getMessage());
            return null;
        }
    }

    public final void f(final Context context, final PreloadH5Entry preloadH5Entry) {
        Intrinsics.h(context, "context");
        Intrinsics.h(preloadH5Entry, "preloadH5Entry");
        HSScopeHelper.f23167a.h(new Runnable() { // from class: com.cloud.hisavana.sdk.h4
            @Override // java.lang.Runnable
            public final void run() {
                k4.h(preloadH5Entry, context);
            }
        });
    }

    public final void j(final String str) {
        HSScopeHelper.f23167a.h(new Runnable() { // from class: com.cloud.hisavana.sdk.i4
            @Override // java.lang.Runnable
            public final void run() {
                k4.m(str);
            }
        });
    }

    public final boolean k(AdsDTO adsDTO) {
        Intrinsics.h(adsDTO, "adsDTO");
        try {
            Integer dspType = adsDTO.getDspType();
            if (dspType != null && dspType.intValue() == 1 && !adsDTO.isOfflineAd() && adsDTO.getSource() != 4 && adsDTO.getPreloadEnable().booleanValue()) {
                com.cloud.hisavana.sdk.common.util.b bVar = com.cloud.hisavana.sdk.common.util.b.f22148a;
                if (!bVar.h(adsDTO.getClickUrl())) {
                    e4.b().w(f22602c, "clickurl is invalid: " + adsDTO.getClickUrl());
                    return false;
                }
                if (!bVar.f(adsDTO)) {
                    e4.b().w(f22602c, "ad is not landing page conversion, ad id is " + adsDTO.getAdCreativeId());
                    return false;
                }
                com.cloud.hisavana.sdk.common.util.r rVar = com.cloud.hisavana.sdk.common.util.r.f22193a;
                String strL = rVar.l(adsDTO.getClickUrl(), DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);
                if (strL != null && strL.length() != 0) {
                    String strH = rVar.h(strL, f22601b);
                    e4.b().d(f22602c, "current ad realLandUrl is " + strH);
                    adsDTO.setRealLandUrl(strH);
                    return true;
                }
            }
            return false;
        } catch (Throwable th2) {
            e4.b().w(f22602c, "checkAdPreloadEnableAndGetRealLandurl error: " + th2.getMessage());
            return false;
        }
    }

    public final void l(final Context context, final AdsDTO adsDTO) {
        Intrinsics.h(context, "context");
        Intrinsics.h(adsDTO, "adsDTO");
        HSScopeHelper.f23167a.h(new Runnable() { // from class: com.cloud.hisavana.sdk.j4
            @Override // java.lang.Runnable
            public final void run() {
                k4.i(adsDTO, context);
            }
        });
    }
}
