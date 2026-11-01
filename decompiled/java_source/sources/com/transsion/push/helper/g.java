package com.transsion.push.helper;

import androidx.core.app.t;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.Calendar;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f50863a = new g();

    private g() {
    }

    public final void a(String eventSource) {
        Intrinsics.h(eventSource, "eventSource");
        boolean zB = b();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_TIME, String.valueOf(Calendar.getInstance().get(11)));
        linkedHashMap.put("notify_enable", String.valueOf(zB));
        linkedHashMap.put("event_source", eventSource);
        linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS);
        hj.i.f64505a.s("notification", "fsnpost", linkedHashMap);
    }

    public final boolean b() {
        try {
            return t.d(Utils.a()).a();
        } catch (Exception unused) {
            return true;
        }
    }
}
