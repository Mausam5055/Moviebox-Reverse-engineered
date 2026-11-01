package com.transsion.api.gateway;

import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.api.gateway.bean.GatewayResponse;
import com.transsion.api.gateway.bean.TimeBean;
import com.transsion.api.gateway.sercurity.a;
import com.transsion.api.gateway.sercurity.c;
import com.transsion.api.gateway.sercurity.d;
import com.transsion.api.gateway.utils.ContextUtils;
import com.transsion.api.gateway.utils.EncoderUtil;
import com.transsion.api.gateway.utils.GatewayUtils;
import com.transsion.api.gateway.utils.ObjectLogUtils;
import com.transsion.api.gateway.utils.SafeStringUtils;
import com.transsion.json.b;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: classes.dex */
public class GatewaySignManager {
    /* JADX WARN: Code duplicated, block: B:26:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:30:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:31:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:34:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:35:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:43:0x010e  */
    /* JADX WARN: Code duplicated, block: B:45:0x011c  */
    /* JADX WARN: Instruction removed from duplicated block: B:45:0x011c, please report this as an issue */
    public static String doSign(String str, String str2, String str3, String str4, String str5) {
        String strMd5;
        long length;
        String str6;
        String str7;
        Object objValueOf;
        StringBuilder sb2;
        URI uri;
        String strA;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jCurrentTimeMillis2 = System.currentTimeMillis() + SafeStringUtils.getInstance(ContextUtils.getContext()).getLong("time_offset");
        c cVar = new c(new a(GateWaySdk.getSecret()));
        StringBuilder sb3 = new StringBuilder();
        String string = "";
        if (TextUtils.isEmpty(str5)) {
            GatewayUtils.L.d("request body is null");
            strMd5 = "";
            length = 0;
        } else {
            GatewayUtils.L.d("request body is not null");
            try {
                length = str5.length();
                try {
                    long jCurrentTimeMillis3 = System.currentTimeMillis();
                    strMd5 = str5.length() > 102400 ? EncoderUtil.md5(str5.substring(0, 102400)) : EncoderUtil.md5(str5);
                    try {
                        GatewayUtils.L.d("md5 duration" + (System.currentTimeMillis() - jCurrentTimeMillis3));
                    } catch (Exception e11) {
                        e = e11;
                        GatewayUtils.L.e("generateContent exception" + e.toString());
                    }
                } catch (Exception e12) {
                    e = e12;
                    strMd5 = "";
                    GatewayUtils.L.e("generateContent exception" + e.toString());
                    sb3.append(str.toUpperCase());
                    sb3.append("\n");
                    if (str2 == null) {
                        str6 = "";
                    } else {
                        str6 = str2;
                    }
                    sb3.append(str6);
                    sb3.append("\n");
                    if (str3 == null) {
                        str7 = "";
                    } else {
                        str7 = str3;
                    }
                    sb3.append(str7);
                    sb3.append("\n");
                    if (length == 0) {
                        objValueOf = "";
                    } else {
                        objValueOf = Long.valueOf(length);
                    }
                    sb3.append(objValueOf);
                    sb3.append("\n");
                    sb3.append(jCurrentTimeMillis2);
                    sb3.append("\n");
                    if (TextUtils.isEmpty(strMd5)) {
                        strMd5 = "";
                    }
                    sb3.append(strMd5);
                    sb3.append("\n");
                    sb2 = new StringBuilder();
                    uri = new URI(str4);
                    sb2.append(uri.getPath());
                    if (!TextUtils.isEmpty(uri.getQuery())) {
                        strA = cVar.a(uri.getQuery());
                        if (!TextUtils.isEmpty(strA)) {
                            GatewayUtils.L.d("formatedUrl" + strA);
                            sb2.append(UrlUtils.QUESTION_MARK);
                            sb2.append(strA);
                        }
                    }
                    string = sb2.toString();
                    sb3.append(string);
                    GatewayUtils.L.d(sb3.toString());
                    String strA2 = cVar.f42529a.a(d.HmacMD5, sb3.toString());
                    GatewayUtils.L.d("x-tr-signature: " + jCurrentTimeMillis2 + "|2|" + strA2);
                    ObjectLogUtils objectLogUtils = GatewayUtils.L;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("doSign latency: ");
                    sb4.append(System.currentTimeMillis() - jCurrentTimeMillis);
                    objectLogUtils.d(sb4.toString());
                    return jCurrentTimeMillis2 + "|2|" + strA2;
                }
            } catch (Exception e13) {
                e = e13;
                length = 0;
            }
        }
        sb3.append(str.toUpperCase());
        sb3.append("\n");
        if (str2 == null) {
            str6 = "";
        } else {
            str6 = str2;
        }
        sb3.append(str6);
        sb3.append("\n");
        if (str3 == null) {
            str7 = "";
        } else {
            str7 = str3;
        }
        sb3.append(str7);
        sb3.append("\n");
        if (length == 0) {
            objValueOf = "";
        } else {
            objValueOf = Long.valueOf(length);
        }
        sb3.append(objValueOf);
        sb3.append("\n");
        sb3.append(jCurrentTimeMillis2);
        sb3.append("\n");
        if (TextUtils.isEmpty(strMd5)) {
            strMd5 = "";
        }
        sb3.append(strMd5);
        sb3.append("\n");
        sb2 = new StringBuilder();
        try {
            uri = new URI(str4);
            sb2.append(uri.getPath());
            if (!TextUtils.isEmpty(uri.getQuery())) {
                strA = cVar.a(uri.getQuery());
                if (!TextUtils.isEmpty(strA)) {
                    GatewayUtils.L.d("formatedUrl" + strA);
                    sb2.append(UrlUtils.QUESTION_MARK);
                    sb2.append(strA);
                }
            }
            string = sb2.toString();
        } catch (URISyntaxException e14) {
            e14.printStackTrace();
        }
        sb3.append(string);
        GatewayUtils.L.d(sb3.toString());
        String strA3 = cVar.f42529a.a(d.HmacMD5, sb3.toString());
        GatewayUtils.L.d("x-tr-signature: " + jCurrentTimeMillis2 + "|2|" + strA3);
        ObjectLogUtils objectLogUtils2 = GatewayUtils.L;
        StringBuilder sb5 = new StringBuilder();
        sb5.append("doSign latency: ");
        sb5.append(System.currentTimeMillis() - jCurrentTimeMillis);
        objectLogUtils2.d(sb5.toString());
        return jCurrentTimeMillis2 + "|2|" + strA3;
    }

    public static boolean needRetryForTimeIssue(int i11, String str) {
        if (i11 != 500 && TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            GatewayUtils.L.d("response" + str);
            GatewayResponse gatewayResponse = (GatewayResponse) b.a(str, GatewayResponse.class);
            if ("GW.4410".equals(gatewayResponse.errorCode)) {
                GatewayUtils.L.d("verify sign failed, retrying update time");
                TimeBean timeBean = (TimeBean) b.a(com.transsion.api.gateway.dns.a.a(gatewayResponse.errorMsg), TimeBean.class);
                if (timeBean.time > 0) {
                    SafeStringUtils.getInstance(ContextUtils.getContext()).saveLong("time_offset", timeBean.time - System.currentTimeMillis());
                    return true;
                }
            }
        } catch (Exception e11) {
            GatewayUtils.L.e(e11);
        }
        return false;
    }
}
