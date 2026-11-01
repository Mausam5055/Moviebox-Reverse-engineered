package com.transsion.athena.hatnea;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.integration.net.UrlKt;
import com.meituan.android.walle.ChannelReader;
import com.transsion.api.gateway.utils.SafeStringUtils;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.gslb.GslbSdk;
import com.transsion.push.PushConstants;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class aethna extends anateh {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f42760c;

    public aethna(Handler handler, String str) {
        super(handler);
        this.f42760c = str;
    }

    @Override // com.transsion.athena.hatnea.anateh
    protected void a() throws Throwable {
        byte[] bytes;
        Context contextJ = AthenaAnalytics.J();
        boolean zB = com.transsion.athena.taaneh.anehat.b(contextJ);
        String strA = com.transsion.athena.config.data.model.anehat.a(this.f42760c.getBytes(StandardCharsets.UTF_8));
        JSONArray jSONArray = new JSONArray();
        try {
            JSONObject jSONObjectPut = new JSONObject().put(SafeStringUtils.SP_APPID, 9999).put("hostid", 9999).put(PushConstants.PROVIDER_FIELD_PKG, "").put("vn", "").put("vc", "").put("ins", "").put("sdkv", "3.1.1.4").put("isfl", zB).put("cnt", 1).put("events", new JSONArray().put(new JSONObject(this.f42760c)));
            try {
                PackageManager packageManager = contextJ.getPackageManager();
                String packageName = contextJ.getPackageName();
                JSONObject jSONObjectPut2 = jSONObjectPut.put(PushConstants.PROVIDER_FIELD_PKG, packageName == null ? "" : packageName);
                String installerPackageName = packageManager.getInstallerPackageName(packageName);
                if (installerPackageName == null) {
                    installerPackageName = "";
                }
                jSONObjectPut2.put("ins", installerPackageName);
                PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
                if (packageInfo != null) {
                    String str = packageInfo.versionName;
                    if (str == null) {
                        str = "";
                    }
                    JSONObject jSONObjectPut3 = jSONObjectPut.put("vn", str);
                    String strValueOf = String.valueOf(packageInfo.versionCode);
                    if (strValueOf == null) {
                        strValueOf = "";
                    }
                    jSONObjectPut3.put("vc", strValueOf);
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            jSONArray.put(jSONObjectPut);
        } catch (Exception e12) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e12));
        }
        String strA2 = com.transsion.athena.taaneh.athena.a(contextJ, 0);
        try {
            JSONObject jSONObject = new JSONObject();
            String strG = com.transsion.athena.config.data.model.ehanat.g();
            if (strG == null) {
                strG = "";
            }
            JSONObject jSONObjectPut4 = jSONObject.put(ChannelReader.CHANNEL_KEY, strG);
            String strB = com.transsion.athena.taaneh.anehat.b(contextJ, "opid");
            if (strB == null) {
                strB = "";
            }
            JSONObject jSONObjectPut5 = jSONObjectPut4.put("opid", strB);
            String strB2 = com.transsion.athena.taaneh.anehat.b(contextJ, "oneid");
            if (strB2 == null) {
                strB2 = "";
            }
            JSONObject jSONObjectPut6 = jSONObjectPut5.put("tsid", strB2);
            String strA3 = com.transsion.athena.taaneh.ehatna.a();
            if (strA3 == null) {
                strA3 = "";
            }
            JSONObject jSONObjectPut7 = jSONObjectPut6.put(PushConstants.PROVIDER_VAID, strA3);
            JSONObject jSONObject2 = new JSONObject();
            String strB3 = com.transsion.athena.taaneh.athena.b();
            if (strB3 == null) {
                strB3 = "";
            }
            JSONObject jSONObjectPut8 = jSONObject2.put("tz", strB3);
            String strA4 = com.transsion.athena.taaneh.anehat.a();
            if (strA4 == null) {
                strA4 = "";
            }
            JSONObject jSONObjectPut9 = jSONObjectPut8.put(UrlKt.KEY_MINI_GAID, strA4);
            String strB4 = com.transsion.athena.config.data.model.ehanat.b();
            if (strB4 == null) {
                strB4 = "";
            }
            JSONObject jSONObjectPut10 = jSONObjectPut9.put("tuid", strB4).put("actype", (int) com.transsion.athena.config.data.model.ehanat.c());
            String strA5 = com.transsion.athena.taaneh.hatnea.a();
            if (strA5 == null) {
                strA5 = "";
            }
            JSONObject jSONObjectPut11 = jSONObjectPut10.put("osver", strA5);
            String str2 = Build.VERSION.RELEASE;
            if (str2 == null) {
                str2 = "";
            }
            JSONObject jSONObjectPut12 = jSONObjectPut11.put("aver", str2);
            String str3 = Build.DISPLAY;
            if (str3 == null) {
                str3 = "";
            }
            JSONObject jSONObjectPut13 = jSONObjectPut12.put("build", str3);
            String language = Locale.getDefault().getLanguage();
            if (language == null) {
                language = "";
            }
            JSONObject jSONObjectPut14 = jSONObjectPut13.put("lang", language);
            String str4 = Build.BRAND;
            if (str4 == null) {
                str4 = "";
            }
            JSONObject jSONObjectPut15 = jSONObjectPut14.put("brand", str4);
            String str5 = Build.MODEL;
            if (str5 == null) {
                str5 = "";
            }
            JSONObject jSONObjectPut16 = jSONObjectPut15.put("model", str5).put("net", com.transsion.athena.taaneh.aatnhe.b(contextJ)).put("uts", System.currentTimeMillis()).put("try", 0);
            String strF = com.transsion.athena.taaneh.athena.f(contextJ);
            if (strF == null) {
                strF = "";
            }
            JSONObject jSONObjectPut17 = jSONObjectPut16.put("mcc", strF);
            String strG2 = com.transsion.athena.taaneh.athena.g(contextJ);
            if (strG2 == null) {
                strG2 = "";
            }
            JSONObject jSONObjectPut18 = jSONObjectPut17.put("mnc", strG2).put("ekey", jSONObjectPut7.toString()).put("appids", jSONArray);
            JSONObject jSONObjectH = com.transsion.athena.config.data.model.ehanat.h();
            if (jSONObjectH != null && jSONObjectH.length() > 0) {
                int length = jSONObjectH.toString().getBytes(StandardCharsets.UTF_8).length;
                if (length > 2000) {
                    String str6 = String.format(Locale.getDefault(), "custom param is too long,limit is 2000 bytes(now is %d bytes)", Integer.valueOf(length));
                    com.transsion.athena.taaneh.aethna.b(str6);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("errorMsg", str6);
                    jSONObjectPut7.put("cparam", jSONObject3.toString());
                } else {
                    jSONObjectPut7.put("cparam", jSONObjectH.toString());
                }
            }
            if (com.transsion.athena.config.data.model.ehanat.C) {
                jSONObjectPut18.put("iid", strA2 == null ? "" : strA2);
            }
            bytes = jSONObjectPut18.toString().getBytes(StandardCharsets.UTF_8);
        } catch (Exception e13) {
            com.transsion.athena.taaneh.aethna.b(Log.getStackTraceString(e13));
            bytes = null;
        }
        if (TextUtils.isEmpty(strA2)) {
            strA2 = com.transsion.athena.taaneh.anehat.a();
        }
        if (TextUtils.isEmpty(strA2)) {
            strA2 = com.transsion.athena.taaneh.athena.b(AthenaAnalytics.J());
        }
        ehanat<aatnhe> ehanatVarA = anehat.a(TextUtils.isEmpty(null) ? GslbSdk.getDomain(com.transsion.athena.config.data.model.ehanat.o(), true) : GslbSdk.getDomain(com.transsion.athena.config.data.model.ehanat.b((String) null), true), bytes, 1, Collections.singletonList(9999), strA, strA2 + "_" + com.transsion.athena.data.athena.b());
        if (ehanatVarA.f42776a == 0) {
            k4.a.a(contextJ).g("gdpr_close", "");
        } else {
            com.transsion.athena.taaneh.aethna.b("PostGdprEventTask requestByPost error : %s", ehanatVarA.f42777b.f42756d);
        }
        if (zB) {
            k4.a.a(contextJ).g("first_launch", "false");
        }
    }

    @Override // com.transsion.athena.hatnea.anateh
    protected String c() {
        return "GDPR";
    }
}
