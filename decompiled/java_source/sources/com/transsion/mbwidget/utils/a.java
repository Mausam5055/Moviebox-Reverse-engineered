package com.transsion.mbwidget.utils;

import android.content.Intent;
import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.mbwidget.data.WidgetDataManager;
import com.transsion.moviedetailapi.bean.Subject;
import hj.i;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f46283a = new a();

    private a() {
    }

    public static /* synthetic */ void e(a aVar, String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        aVar.d(str, str2);
    }

    public static /* synthetic */ void j(a aVar, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        if ((i11 & 4) != 0) {
            str3 = null;
        }
        aVar.i(str, str2, str3);
    }

    public static /* synthetic */ void l(a aVar, String str, boolean z10, String str2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str2 = null;
        }
        aVar.k(str, z10, str2);
    }

    public final void a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "exposure");
        i.f64505a.D("add_widget_dialog", linkedHashMap);
    }

    public final void b() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_ACTION, "click");
        i.f64505a.p("add_widget_dialog", linkedHashMap);
    }

    public final void c(Intent intent) {
        Intrinsics.h(intent, "intent");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String stringExtra = intent.getStringExtra("key_subject_id_widget");
        String stringExtra2 = intent.getStringExtra("key_module_name");
        linkedHashMap.put("widget_name", "history_desk_widget");
        if (stringExtra2 == null) {
            stringExtra2 = "";
        }
        linkedHashMap.put("module_name", stringExtra2);
        if (stringExtra == null) {
            stringExtra = "";
        }
        linkedHashMap.put("subject_id", stringExtra);
        linkedHashMap.put(EventConstants.KEY_ACTION, "click");
        i.f64505a.s("history_desk_widget", "desk_widget", linkedHashMap);
    }

    public final void d(String moduleName, String str) {
        Intrinsics.h(moduleName, "moduleName");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("widget_name", "history_desk_widget");
        linkedHashMap.put("module_name", moduleName);
        if (str == null) {
            str = "";
        }
        linkedHashMap.put("subject_id", str);
        linkedHashMap.put(EventConstants.KEY_ACTION, "exposure");
        i.f64505a.s("history_desk_widget", "desk_widget", linkedHashMap);
    }

    public final void f(Intent intent) {
        Intrinsics.h(intent, "intent");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("widget_name", "sport_desk_widget");
        String stringExtra = intent.getStringExtra("key_module_name");
        if (stringExtra == null) {
            stringExtra = "";
        }
        linkedHashMap.put("module_name", stringExtra);
        String stringExtra2 = intent.getStringExtra("key_match_id_widget");
        if (stringExtra2 == null) {
            stringExtra2 = "";
        }
        linkedHashMap.put("id", stringExtra2);
        String stringExtra3 = intent.getStringExtra("key_deeplink_widget");
        linkedHashMap.put("deeplink", stringExtra3 != null ? stringExtra3 : "");
        linkedHashMap.put(EventConstants.KEY_ACTION, "click");
        i.f64505a.s("sport_desk_widget", "desk_widget", linkedHashMap);
    }

    public final void g(String moduleName, String str, String str2) {
        Intrinsics.h(moduleName, "moduleName");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("widget_name", "sport_desk_widget");
        linkedHashMap.put("module_name", moduleName);
        if (str == null) {
            str = "";
        }
        linkedHashMap.put("id", str);
        if (str2 == null) {
            str2 = "";
        }
        linkedHashMap.put("deeplink", str2);
        linkedHashMap.put(EventConstants.KEY_ACTION, "exposure");
        i.f64505a.s("sport_desk_widget", "desk_widget", linkedHashMap);
    }

    public final void h(Intent intent) {
        String ops;
        Intrinsics.h(intent, "intent");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String stringExtra = intent.getStringExtra("key_subject_id_widget");
        String stringExtra2 = intent.getStringExtra("key_module_name");
        Subject subjectH = WidgetDataManager.f46255a.h(stringExtra);
        linkedHashMap.put("widget_name", "hot_desk_widget");
        String str = "";
        if (stringExtra2 == null) {
            stringExtra2 = "";
        }
        linkedHashMap.put("module_name", stringExtra2);
        if (stringExtra == null) {
            stringExtra = "";
        }
        linkedHashMap.put("subject_id", stringExtra);
        if (subjectH != null && (ops = subjectH.getOps()) != null) {
            str = ops;
        }
        linkedHashMap.put("ops", str);
        linkedHashMap.put(EventConstants.KEY_ACTION, "click");
        i.f64505a.s("hot_desk_widget", "desk_widget", linkedHashMap);
    }

    public final void i(String moduleName, String str, String str2) {
        Intrinsics.h(moduleName, "moduleName");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("widget_name", "hot_desk_widget");
        linkedHashMap.put("module_name", moduleName);
        if (str == null) {
            str = "";
        }
        linkedHashMap.put("subject_id", str);
        if (str2 == null) {
            str2 = "";
        }
        linkedHashMap.put("ops", str2);
        linkedHashMap.put(EventConstants.KEY_ACTION, "exposure");
        i.f64505a.s("hot_desk_widget", "desk_widget", linkedHashMap);
    }

    public final void k(String widgetName, boolean z10, String str) {
        Intrinsics.h(widgetName, "widgetName");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("widget_name", widgetName);
        if (str == null) {
            str = z10 ? "add" : "remove";
        }
        linkedHashMap.put(EventConstants.KEY_ACTION, str);
        i.f64505a.s(widgetName, "desk_widget", linkedHashMap);
    }
}
