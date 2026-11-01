package com.transsion.subtitle.helper;

import android.util.Base64;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.blankj.utilcode.util.o;
import com.cloud.config.utils.ConstantsKt;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.subtitle.bean.OpenSubtitleData;
import com.transsion.subtitle.bean.OpenSubtitleDownloadInfo;
import com.transsion.subtitle.bean.OpenSubtitleResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeoutException;
import javax.net.ssl.SSLHandshakeException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f54898a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f54899b = {37, 79, 19, 106, 49, 88};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f54900c = LazyKt.b(new Function0() { // from class: com.transsion.subtitle.helper.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d.k();
        }
    });

    private d() {
    }

    private final List b(String str) {
        byte[] bArrDecode = Base64.decode(StringsKt.n1(str).toString(), 11);
        Intrinsics.e(bArrDecode);
        if (bArrDecode.length == 0) {
            return null;
        }
        int length = bArrDecode.length;
        byte[] bArr = new byte[length];
        for (int i11 = 0; i11 < length; i11++) {
            byte[] bArr2 = f54899b;
            bArr[i11] = (byte) (bArr2[i11 % bArr2.length] ^ bArrDecode[i11]);
        }
        Charset UTF_8 = StandardCharsets.UTF_8;
        Intrinsics.g(UTF_8, "UTF_8");
        List listS0 = StringsKt.S0(new String(bArr, UTF_8), new String[]{"#@!@#"}, false, 3, 2, null);
        if (listS0.size() == 3) {
            return listS0;
        }
        return null;
    }

    private final String c(String str) {
        int iHashCode = str.hashCode();
        if (iHashCode == 3588) {
            return !str.equals("pt") ? str : "pt-pt";
        }
        if (iHashCode != 3886) {
            return (iHashCode == 100341365 && str.equals("in_id")) ? "id" : str;
        }
        return !str.equals("zh") ? str : "zh-cn";
    }

    private final b e() {
        return (b) f54900c.getValue();
    }

    private final String f(InputStream inputStream) {
        try {
            try {
                try {
                    InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "UTF-8");
                    char[] cArr = new char[512];
                    StringBuffer stringBuffer = new StringBuffer();
                    Ref.IntRef intRef = new Ref.IntRef();
                    while (true) {
                        int i11 = inputStreamReader.read(cArr);
                        intRef.element = i11;
                        if (i11 == -1) {
                            break;
                        }
                        stringBuffer.append(cArr, 0, i11);
                    }
                    String string = stringBuffer.toString();
                    try {
                        inputStream.close();
                    } catch (Exception unused) {
                    }
                    return string;
                } catch (Throwable th2) {
                    try {
                        inputStream.close();
                    } catch (Exception unused2) {
                    }
                    throw th2;
                }
            } catch (IOException e11) {
                e11.printStackTrace();
                try {
                    inputStream.close();
                    return null;
                } catch (Exception unused3) {
                    return null;
                }
            }
        } catch (UnsupportedEncodingException e12) {
            e12.printStackTrace();
            inputStream.close();
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    /* JADX WARN: Code duplicated, block: B:55:0x00dc  */
    private final b i() {
        Object objM454constructorimpl;
        String string;
        String string2;
        String str;
        String str2;
        String string3;
        String str3;
        String str4;
        List listB;
        String value;
        String str5 = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = sm.f.f75407c.a().c("sa_st_rq_v2", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                listB = null;
            } else {
                if (StringsKt.q0(value)) {
                    value = null;
                }
                if (value != null) {
                    listB = b(value);
                } else {
                    listB = null;
                }
            }
            objM454constructorimpl = Result.m454constructorimpl(listB);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.x(com.transsion.baselib.report.a.f43340a.a(), "load subtitle request config failed: " + thM457exceptionOrNullimpl.getMessage(), true);
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        List list = (List) objM454constructorimpl;
        if (list == null || (str4 = (String) CollectionsKt.l0(list, 0)) == null || (string = StringsKt.n1(str4).toString()) == null || string.length() <= 0) {
            string = null;
        }
        if (list == null || (str3 = (String) CollectionsKt.l0(list, 1)) == null || (string2 = StringsKt.n1(str3).toString()) == null || string2.length() <= 0) {
            string2 = null;
        }
        if (list != null && (str2 = (String) CollectionsKt.l0(list, 2)) != null && (string3 = StringsKt.n1(str2).toString()) != null && string3.length() > 0) {
            str5 = string3;
        }
        if (string != null) {
            str = StringsKt.r1(string, '/') + "/";
            if (str == null) {
                str = "https://api.opensubtitles.com/api/v1/";
            }
        } else {
            str = "https://api.opensubtitles.com/api/v1/";
        }
        b bVar = new b(str, string2 == null ? "ZRN9QpqcTxje5UH3bV1RuugwitxkqB53" : string2, str5 == null ? "player2024" : str5);
        lg.a.f68839a.c(com.transsion.baselib.report.a.f43340a.a(), "opsubtitle request config source: payload=" + (list == null ? "default" : "remote") + ", host=" + (string == null ? "default" : "remote") + ", apiKey=" + (string2 == null ? "default" : "remote") + ", ua=" + (str5 == null ? "default" : "remote"), true);
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b k() {
        return f54898a.i();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:51:0x00a2 A[RETURN, SYNTHETIC] */
    public final String d(String lan) {
        Intrinsics.h(lan, "lan");
        switch (lan) {
            case "ar":
                return "عربي";
            case "bn":
                return "বাংলা";
            case "en":
                return "English";
            case "fr":
                return "Français";
            case "hi":
                return "हिन्दी";
            case "id":
                return "Indonesia";
            case "ru":
                return "Русский";
            case "sw":
                return "Swahili";
            case "ur":
                return "اردو";
            case "fil":
                return "Filipino";
            case "pt-pt":
                return "Português";
            case "zh-cn":
                return "中文(简体)";
            default:
                return "";
        }
    }

    public final Object g(String str, Continuation continuation) {
        int i11;
        String strF;
        b bVarE = e();
        String str2 = bVarE.b() + "download";
        try {
            lg.a.C0828a c0828a = lg.a.f68839a;
            com.transsion.baselib.report.a aVar = com.transsion.baselib.report.a.f43340a;
            c0828a.x(aVar.a(), "Subtitle new api download info start:" + str + " ", true);
            URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(str2).openConnection());
            Intrinsics.f(uRLConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
            httpURLConnection.setConnectTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
            httpURLConnection.setReadTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("User-Agent", bVarE.c());
            httpURLConnection.setRequestProperty("Api-Key", bVarE.a());
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            httpURLConnection.setRequestProperty("Accept", "application/json");
            httpURLConnection.getDoOutput();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, StandardCharsets.UTF_8);
                outputStreamWriter.write("{\"file_id\":" + str + "}");
                outputStreamWriter.flush();
                Unit unit = Unit.f67061a;
                CloseableKt.a(outputStream, null);
                InputStream inputStream = httpURLConnection.getInputStream();
                Intrinsics.g(inputStream, "getInputStream(...)");
                if (httpURLConnection.getResponseCode() == 200) {
                    c0828a.c(aVar.a(), "Subtitle new api, download info success ", true);
                    strF = f(inputStream);
                } else {
                    c0828a.x(aVar.a(), "Subtitle new api download info fail ", true);
                    strF = null;
                }
                return (OpenSubtitleDownloadInfo) o.d(strF, OpenSubtitleDownloadInfo.class);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(outputStream, th2);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            com.google.firebase.perf.metrics.h hVarE = pc.e.c().e(str2, "GET");
            Intrinsics.g(hVarE, "newHttpMetric(...)");
            if (th4 instanceof SSLHandshakeException) {
                i11 = 87;
            } else if (th4 instanceof ProtocolException) {
                i11 = 86;
            } else if (th4 instanceof IOException) {
                i11 = 88;
            } else {
                i11 = th4 instanceof TimeoutException ? 85 : 89;
            }
            hVarE.a(i11);
            th4.printStackTrace();
            lg.a.f68839a.c(com.transsion.baselib.report.a.f43340a.a(), "Subtitle new api download info fail: " + th4 + " ", true);
            return null;
        }
    }

    public final Object h(String str, String str2, Integer num, Integer num2, Continuation continuation) {
        String str3;
        int i11;
        String strF;
        List<OpenSubtitleData> data;
        String lowerCase = new Regex("[\\\\/:#*?\"<>|&,]").replace(str, "").toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        String strC = c(str2);
        b bVarE = e();
        if (num == null && num2 == null) {
            str3 = bVarE.b() + "subtitles?query=" + lowerCase + "&languages=" + strC;
        } else {
            str3 = bVarE.b() + "subtitles?query=" + lowerCase + "&languages=" + strC + "&season_number=" + num + "&episode_number=" + num2;
        }
        try {
            lg.a.C0828a c0828a = lg.a.f68839a;
            com.transsion.baselib.report.a aVar = com.transsion.baselib.report.a.f43340a;
            c0828a.c(aVar.a(), "new api getSubtitleInfo url:" + str3, true);
            URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(str3).openConnection());
            Intrinsics.f(uRLConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
            httpURLConnection.setConnectTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
            httpURLConnection.setReadTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("User-Agent", bVarE.c());
            httpURLConnection.setRequestProperty("Api-Key", bVarE.a());
            httpURLConnection.connect();
            InputStream inputStream = httpURLConnection.getInputStream();
            Intrinsics.g(inputStream, "getInputStream(...)");
            if (httpURLConnection.getResponseCode() == 200) {
                c0828a.c(aVar.a(), "Subtitle new api success ", true);
                strF = f(inputStream);
            } else {
                c0828a.x(aVar.a(), "Subtitle new api fail ", true);
                strF = null;
            }
            OpenSubtitleResponse openSubtitleResponse = (OpenSubtitleResponse) o.d(strF, OpenSubtitleResponse.class);
            if (openSubtitleResponse != null && (data = openSubtitleResponse.getData()) != null && !data.isEmpty()) {
                return CollectionsKt.U0(openSubtitleResponse.getData());
            }
            j(3, ConstantsKt.ERROR_1000_MESSAGE);
            return null;
        } catch (Throwable th2) {
            String message = th2.getMessage();
            j(3, message != null ? message : "");
            th2.printStackTrace();
            com.google.firebase.perf.metrics.h hVarE = pc.e.c().e(str3, "GET");
            Intrinsics.g(hVarE, "newHttpMetric(...)");
            if (th2 instanceof SSLHandshakeException) {
                i11 = 87;
            } else if (th2 instanceof ProtocolException) {
                i11 = 86;
            } else if (th2 instanceof IOException) {
                i11 = 88;
            } else {
                i11 = th2 instanceof TimeoutException ? 85 : 89;
            }
            hVarE.a(i11);
            lg.a.f68839a.i(com.transsion.baselib.report.a.f43340a.a(), "new api getSubtitleInfo FAIL :" + th2, true);
            return null;
        }
    }

    public final void j(int i11, String msg) {
        Intrinsics.h(msg, "msg");
        HashMap map = new HashMap();
        map.put("from", String.valueOf(i11));
        map.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, msg);
        hj.i.f64505a.s("subtitle_search", "app_perf", map);
    }
}
