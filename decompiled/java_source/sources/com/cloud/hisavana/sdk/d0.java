package com.cloud.hisavana.sdk;

import android.util.Log;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.FileInputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d0 f22327a = new d0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final a f22328b = new a();

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/d0$a", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class a extends HashSet<String> {
        a() {
            add("jpg");
            add("jpeg");
            add("png");
            add("gif");
            add("bmp");
            add("webp");
            add("tiff");
            add("tif");
            add("svg");
            add("ico");
            add("heif");
            add("heic");
            add("mp4");
            add(RecorderConstants.FORMAT_M4A);
            add("fmp4");
            add("webm");
            add("mkv");
            add("ogg");
            add(RecorderConstants.FORMAT_WAV);
            add("flv");
            add("adts");
            add(RecorderConstants.FORMAT_AAC);
            add("html");
            add("htm");
            add("css");
            add("js");
            add("ttf");
            add("woff");
            add("woff2");
            add("otf");
            add("eot");
            add("xml");
            add("swf");
            add(MimeTypes.BASE_TYPE_TEXT);
            add("conf");
        }

        public /* bridge */ int a() {
            return super.size();
        }

        public /* bridge */ boolean a(String str) {
            return super.contains(str);
        }

        public /* bridge */ boolean b(String str) {
            return super.remove(str);
        }

        @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof String) {
                return a((String) obj);
            }
            return false;
        }

        @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final /* bridge */ boolean remove(Object obj) {
            if (obj instanceof String) {
                return b((String) obj);
            }
            return false;
        }

        @Override // java.util.HashSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final /* bridge */ int size() {
            return a();
        }
    }

    public static final class b extends DrawableResponseListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f22329b;

        b(String str) {
            this.f22329b = str;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            e4.b().d("DefaultMaterialManager", "request error，URL---》" + this.f22329b);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            if (adImage != null) {
                String str = this.f22329b;
                try {
                    e4.b().d("DefaultMaterialManager", "request success，filepath ----》" + adImage.getFilePath());
                    AthenaTracker.c0(str, 2, 2, 0L);
                } catch (Throwable th2) {
                    e4.b().w("DefaultMaterialManager", Log.getStackTraceString(th2));
                }
            }
        }
    }

    public static final class c extends DrawableResponseListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f22330b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ AtomicInteger f22331c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f22332d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ o4 f22333e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Function0 f22334f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22335g;

        c(String str, AtomicInteger atomicInteger, String str2, o4 o4Var, Function0 function0, AdsDTO adsDTO) {
            this.f22330b = str;
            this.f22331c = atomicInteger;
            this.f22332d = str2;
            this.f22333e = o4Var;
            this.f22334f = function0;
            this.f22335g = adsDTO;
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.ResponseBaseListener
        public void a(TaErrorCode taErrorCode) {
            e4.b().d("DefaultMaterialManager", "request error，URL---》" + this.f22330b);
            this.f22331c.getAndIncrement();
            d0.f22327a.f(this.f22332d, this.f22333e.c(), this.f22331c, this.f22334f);
        }

        @Override // com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener
        public void g(int i11, AdImage adImage) {
            if (adImage != null) {
                String str = this.f22330b;
                AdsDTO adsDTO = this.f22335g;
                String str2 = this.f22332d;
                o4 o4Var = this.f22333e;
                AtomicInteger atomicInteger = this.f22331c;
                Function0 function0 = this.f22334f;
                e4.b().d("DefaultMaterialManager", "request success，main url is " + str + ", filepath ----》" + adImage.getFilePath());
                e0 e0Var = e0.f22413a;
                String adCreativeId = adsDTO.getAdCreativeId();
                Intrinsics.g(adCreativeId, "getAdCreativeId(...)");
                String codeSeatId = adsDTO.getCodeSeatId();
                Intrinsics.g(codeSeatId, "getCodeSeatId(...)");
                String filePath = adImage.getFilePath();
                Intrinsics.g(filePath, "getFilePath(...)");
                e0Var.g(adCreativeId, codeSeatId, filePath);
                d0.f22327a.f(str2, o4Var.c(), atomicInteger, function0);
            }
        }
    }

    private d0() {
    }

    private final void d(AdsDTO adsDTO) {
        String strE = b0.f21683a.e(adsDTO);
        if (strE != null) {
            DownLoadRequest.j(strE, 3, adsDTO.isOfflineAd(), 1, false, 4, false, adsDTO, null);
        }
        DownLoadRequest.j(adsDTO.getAdChoiceImageUrl(), 3, adsDTO.isOfflineAd(), 3, false, 4, false, adsDTO, null);
    }

    private final boolean g(File file) {
        if (!file.exists() || file.isDirectory()) {
            return false;
        }
        a aVar = f22328b;
        String strW = FilesKt.w(file);
        Locale locale = Locale.getDefault();
        Intrinsics.g(locale, "getDefault(...)");
        String lowerCase = strW.toLowerCase(locale);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        return aVar.contains(lowerCase);
    }

    private final boolean h(File file) {
        FileInputStream fileInputStream;
        if (!file.exists()) {
            return true;
        }
        try {
            try {
                IDiskCache iDiskCacheG = DiskLruCacheUtil.g(4);
                ImageCacheURL imageCacheURL = new ImageCacheURL(file.getName());
                e4.b().d("DefaultMaterialManager", "saveDefaultAdMaterial, sourceFile is " + file.getName() + ", key is " + imageCacheURL);
                File fileC = iDiskCacheG.c(imageCacheURL);
                if (fileC != null && fileC.exists() && fileC.isFile()) {
                    iDiskCacheG.a(imageCacheURL);
                }
                fileInputStream = new FileInputStream(file);
                try {
                    String strE = iDiskCacheG.e(imageCacheURL, fileInputStream);
                    if (strE == null) {
                        strE = "";
                    }
                    if (strE.length() > 0) {
                        file.delete();
                    }
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        e4.b().w("DefaultMaterialManager", Log.getStackTraceString(th));
                        if (fileInputStream == null) {
                            return false;
                        }
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable unused) {
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable unused2) {
                return false;
            }
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
        }
        return false;
    }

    public final o4 a(List ads) {
        Intrinsics.h(ads, "ads");
        Iterator it = ads.iterator();
        o4 o4Var = null;
        o4 o4Var2 = null;
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (adsDTO != null) {
                o4 o4Var3 = new o4(adsDTO);
                if (o4Var2 == null) {
                    o4Var = o4Var3;
                } else {
                    o4Var2.b(o4Var3);
                }
                o4Var2 = o4Var3;
            }
        }
        return o4Var;
    }

    public final void b() {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(com.cloud.hisavana.sdk.common.util.m.b(com.cloud.sdk.commonutil.util.e.a()));
            String str = File.separator;
            sb2.append(str);
            sb2.append("default_ad_data");
            sb2.append(str);
            sb2.append(a7.c.f365b);
            File file = new File(sb2.toString());
            if (file.exists() && file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                int length = fileArrListFiles != null ? fileArrListFiles.length : 0;
                File[] fileArrListFiles2 = file.listFiles();
                if (fileArrListFiles2 != null) {
                    for (File file2 : fileArrListFiles2) {
                        if (file2.exists()) {
                            d0 d0Var = f22327a;
                            Intrinsics.e(file2);
                            if (d0Var.g(file2) && d0Var.h(file2)) {
                                length--;
                            }
                        }
                    }
                }
                j7.a.e().o("default_file_save_finished", length <= 2);
            }
        } catch (Throwable th2) {
            e4.b().w("DefaultMaterialManager", Log.getStackTraceString(th2));
        }
    }

    public final void c(int i11) {
        if (i11 > 0) {
            HttpRequest.f21328a.k(i11);
        }
    }

    public final void e(String url) {
        Intrinsics.h(url, "url");
        DownLoadRequest.j(url, 3, false, 4, false, 4, false, null, new b(url));
        AthenaTracker.c0(url, 2, 1, 0L);
    }

    public final void f(String codeSeatId, o4 o4Var, AtomicInteger count, Function0 callback) {
        Intrinsics.h(codeSeatId, "codeSeatId");
        Intrinsics.h(count, "count");
        Intrinsics.h(callback, "callback");
        if (o4Var == null) {
            callback.invoke();
            return;
        }
        AdsDTO adsDTOA = o4Var.a();
        if (o4Var.a() == null) {
            f(codeSeatId, o4Var.c(), count, callback);
            return;
        }
        b0 b0Var = b0.f21683a;
        Intrinsics.e(adsDTOA);
        String strJ = b0Var.j(adsDTOA);
        DownLoadRequest.j(strJ, 3, adsDTOA.isOfflineAd(), 2, true, 4, adsDTOA.getDefaultMaterialType() == 2, adsDTOA, new c(strJ, count, codeSeatId, o4Var, callback, adsDTOA));
        d(adsDTOA);
        String clickUrl = adsDTOA.getClickUrl();
        Intrinsics.g(clickUrl, "getClickUrl(...)");
        if (StringsKt.c0(clickUrl, AgentPageJsBridge.AGENT_PAGE_INFO, false, 2, null)) {
            String clickUrl2 = adsDTOA.getClickUrl();
            Intrinsics.g(clickUrl2, "getClickUrl(...)");
            e(clickUrl2);
        }
    }
}
