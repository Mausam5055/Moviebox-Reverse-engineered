package com.google.zxing.oned.rss.expanded.decoders;

import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.zxing.NotFoundException;
import com.transsion.mpush.core.config.MsgShowStatus;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
abstract class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f32939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f32940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map f32941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map f32942d;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final boolean f32943a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f32944b;

        private a(boolean z10, int i11) {
            this.f32943a = z10;
            this.f32944b = i11;
        }

        static a a(int i11) {
            return new a(false, i11);
        }

        static a b(int i11) {
            return new a(true, i11);
        }
    }

    static {
        HashMap map = new HashMap();
        f32939a = map;
        map.put("00", a.a(18));
        map.put("01", a.a(14));
        map.put("02", a.a(14));
        map.put("10", a.b(20));
        map.put(PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY, a.a(6));
        map.put("12", a.a(6));
        map.put(PrepareException.ERROR_WARMUP_DOWNLOAD_EXCEPTION, a.a(6));
        map.put(PrepareException.ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION, a.a(6));
        map.put("17", a.a(6));
        map.put("20", a.a(2));
        map.put(ChainPoint.ROUTE_PAGE, a.b(20));
        map.put("22", a.b(29));
        map.put("30", a.b(8));
        map.put("37", a.b(8));
        for (int i11 = 90; i11 <= 99; i11++) {
            f32939a.put(String.valueOf(i11), a.b(30));
        }
        HashMap map2 = new HashMap();
        f32940b = map2;
        map2.put("240", a.b(30));
        map2.put("241", a.b(30));
        map2.put("242", a.b(6));
        map2.put("250", a.b(30));
        map2.put("251", a.b(30));
        map2.put("253", a.b(17));
        map2.put("254", a.b(20));
        map2.put("400", a.b(30));
        map2.put(MsgShowStatus.STATUS_NOTIFY_CLOSE, a.b(30));
        map2.put(MsgShowStatus.STATUS_APP_ERROR, a.a(17));
        map2.put("403", a.b(30));
        map2.put("410", a.a(13));
        map2.put("411", a.a(13));
        map2.put("412", a.a(13));
        map2.put("413", a.a(13));
        map2.put("414", a.a(13));
        map2.put("420", a.b(20));
        map2.put("421", a.b(15));
        map2.put("422", a.a(3));
        map2.put("423", a.b(15));
        map2.put("424", a.a(3));
        map2.put("425", a.a(3));
        map2.put("426", a.a(3));
        f32941c = new HashMap();
        for (int i12 = Sdk$SDKError.Reason.AD_HTML_FAILED_TO_LOAD_VALUE; i12 <= 316; i12++) {
            f32941c.put(String.valueOf(i12), a.a(6));
        }
        for (int i13 = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE; i13 <= 336; i13++) {
            f32941c.put(String.valueOf(i13), a.a(6));
        }
        for (int i14 = 340; i14 <= 357; i14++) {
            f32941c.put(String.valueOf(i14), a.a(6));
        }
        for (int i15 = 360; i15 <= 369; i15++) {
            f32941c.put(String.valueOf(i15), a.a(6));
        }
        Map map3 = f32941c;
        map3.put("390", a.b(15));
        map3.put("391", a.b(18));
        map3.put("392", a.b(15));
        map3.put("393", a.b(18));
        map3.put("703", a.b(30));
        HashMap map4 = new HashMap();
        f32942d = map4;
        map4.put("7001", a.a(13));
        map4.put("7002", a.b(30));
        map4.put("7003", a.a(10));
        map4.put("8001", a.a(14));
        map4.put("8002", a.b(20));
        map4.put("8003", a.b(30));
        map4.put("8004", a.b(30));
        map4.put("8005", a.a(6));
        map4.put("8006", a.a(18));
        map4.put("8007", a.b(30));
        map4.put("8008", a.b(12));
        map4.put("8018", a.a(18));
        map4.put("8020", a.b(25));
        map4.put("8100", a.a(6));
        map4.put("8101", a.a(10));
        map4.put("8102", a.a(2));
        map4.put("8110", a.b(70));
        map4.put("8200", a.b(70));
    }

    static String a(String str) throws NotFoundException {
        if (str.isEmpty()) {
            return null;
        }
        if (str.length() < 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        a aVar = (a) f32939a.get(str.substring(0, 2));
        if (aVar != null) {
            return aVar.f32943a ? c(2, aVar.f32944b, str) : b(2, aVar.f32944b, str);
        }
        if (str.length() < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        String strSubstring = str.substring(0, 3);
        a aVar2 = (a) f32940b.get(strSubstring);
        if (aVar2 != null) {
            return aVar2.f32943a ? c(3, aVar2.f32944b, str) : b(3, aVar2.f32944b, str);
        }
        if (str.length() < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        a aVar3 = (a) f32941c.get(strSubstring);
        if (aVar3 != null) {
            return aVar3.f32943a ? c(4, aVar3.f32944b, str) : b(4, aVar3.f32944b, str);
        }
        a aVar4 = (a) f32942d.get(str.substring(0, 4));
        if (aVar4 != null) {
            return aVar4.f32943a ? c(4, aVar4.f32944b, str) : b(4, aVar4.f32944b, str);
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static String b(int i11, int i12, String str) throws NotFoundException {
        if (str.length() < i11) {
            throw NotFoundException.getNotFoundInstance();
        }
        String strSubstring = str.substring(0, i11);
        int i13 = i12 + i11;
        if (str.length() < i13) {
            throw NotFoundException.getNotFoundInstance();
        }
        String strSubstring2 = str.substring(i11, i13);
        String str2 = '(' + strSubstring + ')' + strSubstring2;
        String strA = a(str.substring(i13));
        if (strA == null) {
            return str2;
        }
        return str2 + strA;
    }

    private static String c(int i11, int i12, String str) throws NotFoundException {
        String strSubstring = str.substring(0, i11);
        int iMin = Math.min(str.length(), i12 + i11);
        String strSubstring2 = str.substring(i11, iMin);
        String str2 = '(' + strSubstring + ')' + strSubstring2;
        String strA = a(str.substring(iMin));
        if (strA == null) {
            return str2;
        }
        return str2 + strA;
    }
}
