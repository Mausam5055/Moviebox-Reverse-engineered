package com.google.firebase.crashlytics.ndk;

import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
abstract class h {
    private static String a(String str) {
        return str == null ? "" : str;
    }

    static String b(String str, String str2, long j11) {
        HashMap map = new HashMap();
        map.put("session_id", str);
        map.put("generator", str2);
        map.put("started_at_seconds", Long.valueOf(j11));
        return new JSONObject(map).toString();
    }

    static String c(String str, String str2, String str3, String str4, int i11, String str5, String str6) {
        HashMap map = new HashMap();
        map.put("app_identifier", str);
        map.put("version_code", str2);
        map.put("version_name", str3);
        map.put("install_uuid", str4);
        map.put("delivery_mechanism", Integer.valueOf(i11));
        map.put("development_platform", a(str5));
        map.put("development_platform_version", a(str6));
        return new JSONObject(map).toString();
    }

    static String d(int i11, String str, int i12, long j11, long j12, boolean z10, int i13, String str2, String str3) {
        HashMap map = new HashMap();
        map.put("arch", Integer.valueOf(i11));
        map.put("build_model", str);
        map.put("available_processors", Integer.valueOf(i12));
        map.put("total_ram", Long.valueOf(j11));
        map.put("disk_space", Long.valueOf(j12));
        map.put("is_emulator", Boolean.valueOf(z10));
        map.put("state", Integer.valueOf(i13));
        map.put("build_manufacturer", str2);
        map.put("build_product", str3);
        return new JSONObject(map).toString();
    }

    static String e(String str, String str2, boolean z10) {
        HashMap map = new HashMap();
        map.put("version", str);
        map.put("build_version", str2);
        map.put("is_rooted", Boolean.valueOf(z10));
        return new JSONObject(map).toString();
    }
}
