package com.transsion.commercialization.pslink;

import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f43830a = new f();

    private f() {
    }

    public final void a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_dialog_click_member_guide");
        com.transsion.baselib.helper.a.f43262a.b("download_intercept", linkedHashMap);
    }

    public final void b() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_dialog_click_rewarded");
        com.transsion.baselib.helper.a.f43262a.b("download_intercept", linkedHashMap);
    }

    public final void c() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_dialog_click_try_another");
        com.transsion.baselib.helper.a.f43262a.b("download_intercept", linkedHashMap);
    }

    public final void d() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_intercept_dialog_change_click");
        com.transsion.baselib.helper.a.f43262a.b("download_intercept", linkedHashMap);
    }

    public final void e() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_intercept_dialog_member_click");
        com.transsion.baselib.helper.a.f43262a.b("download_intercept", linkedHashMap);
    }

    public final void f() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_intercept_dialog_show");
        com.transsion.baselib.helper.a.f43262a.a("download_intercept", linkedHashMap);
    }

    public final void g() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "download_dialog_show");
        com.transsion.baselib.helper.a.f43262a.a("download_intercept", linkedHashMap);
    }

    public final void h(String str, int i11) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("packageName", String.valueOf(str));
        linkedHashMap.put(NotificationCompat.CATEGORY_STATUS, String.valueOf(i11));
        com.transsion.baselib.helper.a.f43262a.d(linkedHashMap);
    }
}
