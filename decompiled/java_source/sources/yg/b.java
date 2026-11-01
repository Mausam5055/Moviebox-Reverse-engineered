package yg;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.net.UrlKt;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.meituan.android.walle.WalleChannelReader;
import com.tencent.mmkv.MMKV;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import nh.m;

/* JADX INFO: loaded from: classes3.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f79009a = new a(0 == true ? 1 : 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f79010b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ConcurrentHashMap f79011c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f79012d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile Boolean f79013e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f79014f;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final String i(String str) {
            return StringsKt.n1(new Regex("[\\r\\n]").replace(new Regex("\\s+").replace(new Regex("[\\p{C}]").replace(str, ""), " "), "")).toString();
        }

        public final void a(Bundle bundle) {
            Intrinsics.h(bundle, "bundle");
            bundle.putString("session_id", h());
            bundle.putString("device_id", ih.b.f65241a.h());
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            bundle.putString("install_store", e(applicationA));
            bh.a.C0148a c0148a = bh.a.f16469a;
            String strA = c0148a.a();
            if (!TextUtils.isEmpty(strA)) {
                bundle.putString("install_ch", strA);
            }
            String strB = c0148a.b();
            if (!TextUtils.isEmpty(strB)) {
                bundle.putString("install_id", strB);
            }
            String strD = c0148a.d();
            if (!TextUtils.isEmpty(strD)) {
                bundle.putString("install_share_uid", strD);
            }
            bundle.putString("net_state", String.valueOf(m.f70474a.b()));
        }

        public final synchronized void b(String key, String value) {
            Intrinsics.h(key, "key");
            Intrinsics.h(value, "value");
            b.f79011c.put(key, value);
        }

        public final String c() {
            String strD;
            String string;
            pg.b bVarB = pg.a.f72446a.b();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            try {
                linkedHashMap.put("package_name", com.blankj.utilcode.util.c.e());
                String strB = bVarB != null ? bVarB.b() : null;
                String strO = "";
                if (!TextUtils.isEmpty(strB)) {
                    if (strB == null) {
                        strB = "";
                    }
                    linkedHashMap.put("version_name", strB);
                }
                int iF = com.blankj.utilcode.util.c.f();
                if (iF > 0) {
                    linkedHashMap.put("version_code", Integer.valueOf(iF));
                }
                linkedHashMap.put("os", "android");
                ih.b bVar = ih.b.f65241a;
                linkedHashMap.put("os_version", bVar.n());
                bh.a.C0148a c0148a = bh.a.f16469a;
                if (!TextUtils.isEmpty(c0148a.a())) {
                    linkedHashMap.put("install_ch", c0148a.a());
                }
                linkedHashMap.put("device_id", bVar.h());
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                linkedHashMap.put("install_store", String.valueOf(e(applicationA)));
                String strI = bVar.i();
                if (!TextUtils.isEmpty(strI)) {
                    linkedHashMap.put(UrlKt.KEY_MINI_GAID, strI);
                }
                MMKV mmkvC = c0148a.c();
                if (mmkvC == null || (strD = mmkvC.getString("phone_brand", "")) == null) {
                    strD = "";
                }
                if (TextUtils.isEmpty(strD)) {
                    strD = bVar.d();
                }
                if (!TextUtils.isEmpty(strD)) {
                    linkedHashMap.put("brand", strD);
                }
                linkedHashMap.put("model", bVar.l());
                String strG = g();
                if (strG == null) {
                    strG = Locale.getDefault().getLanguage();
                }
                linkedHashMap.put("system_language", strG);
                linkedHashMap.put("net", m.f70474a.d());
                linkedHashMap.put(TtmlNode.TAG_REGION, Locale.getDefault().getCountry());
                linkedHashMap.put("timezone", TimeZone.getDefault().getID());
                MMKV mmkvC2 = c0148a.c();
                if (mmkvC2 != null && (string = mmkvC2.getString("sp_code", "")) != null) {
                    strO = string;
                }
                if (TextUtils.isEmpty(strO)) {
                    strO = bVar.o();
                }
                linkedHashMap.put("sp_code", strO);
                if (!b.f79011c.isEmpty()) {
                    linkedHashMap.putAll(b.f79011c);
                }
                String jSONString = com.alibaba.fastjson.a.toJSONString(linkedHashMap);
                Intrinsics.g(jSONString, "toJSONString(...)");
                return i(jSONString);
            } catch (Exception unused) {
                String jSONString2 = com.alibaba.fastjson.a.toJSONString(linkedHashMap, SerializerFeature.BrowserCompatible);
                Intrinsics.g(jSONString2, "toJSONString(...)");
                return jSONString2;
            }
        }

        public final Boolean d() {
            return b.f79013e;
        }

        public final String e(Context context) {
            Intrinsics.h(context, "context");
            MMKV mmkvC = bh.a.f16469a.c();
            String string = mmkvC != null ? mmkvC.getString("install_store", "") : null;
            if (TextUtils.isEmpty(string)) {
                if (TextUtils.isEmpty(b.f79014f)) {
                    String channel = WalleChannelReader.getChannel(context);
                    if (TextUtils.isEmpty(channel)) {
                        channel = "gp";
                    }
                    b.f79014f = channel;
                }
                string = b.f79014f;
            }
            b.f79014f = string;
            return b.f79014f;
        }

        public final synchronized Map f() {
            return MapsKt.u(b.f79011c);
        }

        public final String g() {
            return b.f79012d;
        }

        public final String h() {
            return b.f79010b;
        }

        public final void j(Boolean bool) {
            b.f79013e = bool;
        }

        public final void k(String channel) {
            Intrinsics.h(channel, "channel");
            MMKV mmkvC = bh.a.f16469a.c();
            if (mmkvC != null) {
                mmkvC.putString("install_store", channel);
            }
        }

        public final void l(String str) {
            b.f79012d = str;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        f79010b = string;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        f79011c = concurrentHashMap;
        f79013e = Boolean.TRUE;
        MMKV mmkvC = bh.a.f16469a.c();
        String string2 = mmkvC != null ? mmkvC.getString("x-md-global-color", "") : null;
        if (TextUtils.isEmpty(string2)) {
            return;
        }
        concurrentHashMap.put("x-md-global-color", String.valueOf(string2));
    }
}
