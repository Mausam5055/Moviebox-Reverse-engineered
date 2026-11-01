package com.transsion.transfer.wifi.qrcode;

import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.transfer.wifi.util.e;
import com.transsion.transfer.wifi.util.g;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;
import sm.f;

/* JADX INFO: loaded from: classes6.dex */
public final class QrCodeUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final QrCodeUtil f55907a = new QrCodeUtil();

    private QrCodeUtil() {
    }

    /* JADX WARN: Code duplicated, block: B:70:0x01a5 A[PHI: r6
  0x01a5: PHI (r6v21 lv.a) = 
  (r6v3 lv.a)
  (r6v4 lv.a)
  (r6v5 lv.a)
  (r6v6 lv.a)
  (r6v7 lv.a)
  (r6v8 lv.a)
  (r6v9 lv.a)
  (r6v10 lv.a)
  (r6v11 lv.a)
  (r6v12 lv.a)
  (r6v13 lv.a)
  (r6v14 lv.a)
  (r6v15 lv.a)
  (r6v16 lv.a)
  (r6v17 lv.a)
  (r6v22 lv.a)
 binds: [B:69:0x01a3, B:65:0x018e, B:61:0x0179, B:57:0x0163, B:53:0x014d, B:49:0x0136, B:45:0x011f, B:41:0x0108, B:37:0x00f1, B:33:0x00da, B:29:0x00c3, B:25:0x00ac, B:21:0x0095, B:17:0x007e, B:13:0x0067, B:7:0x0045] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Instruction removed from duplicated block: B:70:0x01a5, please report this as an issue */
    private final lv.a a(Map map) {
        lv.a aVar;
        lv.a aVar2 = aVar;
        lv.a aVar3 = new lv.a(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, 131071, null);
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            switch (str.hashCode()) {
                case -1627415939:
                    aVar = aVar2;
                    if (str.equals("mb_wifi_pwd")) {
                        aVar.G((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case -1086077885:
                    aVar = aVar2;
                    if (str.equals("mb_wifi_channel")) {
                        aVar.E((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case -1080938842:
                    aVar = aVar2;
                    if (str.equals("mb_uid")) {
                        aVar.z((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case -72536842:
                    aVar = aVar2;
                    if (str.equals("mb_version_release")) {
                        aVar.C((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case 103677969:
                    aVar = aVar2;
                    if (str.equals("mb_ip")) {
                        aVar.F((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case 103678184:
                    aVar = aVar2;
                    if (str.equals("mb_pn")) {
                        aVar.v((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case 103678359:
                    aVar = aVar2;
                    if (str.equals("mb_vc")) {
                        aVar.A((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case 103678370:
                    aVar = aVar2;
                    if (str.equals("mb_vn")) {
                        aVar.B((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case 426966230:
                    aVar = aVar2;
                    if (str.equals("mb_avatar_index")) {
                        aVar.r((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case 582580317:
                    aVar = aVar2;
                    if (str.equals("mb_brand")) {
                        aVar.s((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case 785242969:
                    aVar = aVar2;
                    if (str.equals("mb_version_sdk_int")) {
                        aVar.D((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case 925994048:
                    aVar = aVar2;
                    if (str.equals("mb_device")) {
                        aVar.u((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case 1066736709:
                    aVar = aVar2;
                    if (str.equals("mb_product")) {
                        aVar.w((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case 1089799227:
                    aVar = aVar2;
                    if (str.equals("mb_wifi_ssid")) {
                        aVar.H((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case 1420622267:
                    aVar = aVar2;
                    if (str.equals("mb_unique")) {
                        aVar.y((String) entry.getValue());
                    } else {
                        g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    }
                    break;
                case 2115161177:
                    if (str.equals("mb_channel")) {
                        aVar = aVar2;
                        aVar.t((String) entry.getValue());
                        break;
                    }
                default:
                    aVar = aVar2;
                    g.b(g.f55970a, f55907a.c() + " --> analysis() --> 没有匹配上 --> key = " + entry.getKey() + " --> value = " + entry.getValue(), false, 2, null);
                    break;
            }
            aVar2 = aVar;
        }
        lv.a aVar4 = aVar2;
        g.b(g.f55970a, c() + " --> analysis() --> wifiInfoModel = " + aVar4, false, 2, null);
        return aVar4;
    }

    private final String c() {
        String simpleName = QrCodeUtil.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public static /* synthetic */ Object g(QrCodeUtil qrCodeUtil, String str, int i11, int i12, Continuation continuation, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 400;
        }
        if ((i13 & 4) != 0) {
            i12 = 400;
        }
        return qrCodeUtil.f(str, i11, i12, continuation);
    }

    public final String b(lv.a aVar) {
        g gVar = g.f55970a;
        g.b(gVar, c() + " --> createTransferQrStr() --> wifiInfoModel = " + aVar, false, 2, null);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(d());
        sb2.append("mb_unique");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append("mb_unique");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_device");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.e() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_brand");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.c() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_product");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.g() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_version_release");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.k() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_version_sdk_int");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.l() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_vc");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.i() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_vn");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.j() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_pn");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.f() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_uid");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.h() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_avatar_index");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.b() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_channel");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.d() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_wifi_ssid");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.p() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_wifi_pwd");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.o() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_wifi_channel");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.m() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("mb_ip");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(aVar != null ? aVar.n() : null);
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        g.b(gVar, c() + " --> createTransferQrStr() --> 二维码创建完成 --> qrCode = " + string, false, 2, null);
        return string;
    }

    public final String d() {
        Object objM454constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanD = f.d(f.f75407c.a(), "transfer_share_link_url", false, 2, null);
            if (configBeanD == null || (value = configBeanD.getValue()) == null) {
                value = "https://h5.aoneroom.com/download?type=/transfer/wifi_connect&";
            }
            objM454constructorimpl = Result.m454constructorimpl(value);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        return (String) (Result.m457exceptionOrNullimpl(objM454constructorimpl) == null ? objM454constructorimpl : "https://h5.aoneroom.com/download?type=/transfer/wifi_connect&");
    }

    public final void e(String text, Function1 function1) {
        Intrinsics.h(text, "text");
        Map mapA = e.f55966a.a(text);
        if (mapA.isEmpty()) {
            if (function1 != null) {
            }
        } else if (!TextUtils.equals((CharSequence) mapA.get("mb_unique"), "mb_unique")) {
            if (function1 != null) {
            }
        } else {
            lv.a aVarA = a(mapA);
            if (function1 != null) {
            }
        }
    }

    public final Object f(String str, int i11, int i12, Continuation continuation) {
        return i.g(y0.b(), new QrCodeUtil$syncEncodeQRCode$2(str, i11, i12, null), continuation);
    }
}
