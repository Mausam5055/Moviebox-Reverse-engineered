package com.apm.insight.runtime;

import android.content.Context;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.event.EventConstants;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f19798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<String, Long> f19799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f19800c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f19801d;

    public f(Context context) {
        this.f19799b = null;
        this.f19800c = 50;
        this.f19801d = 100;
        this.f19798a = context;
        this.f19799b = b();
        this.f19800c = a.a(this.f19800c, "custom_event_settings", "npth_simple_setting", "crash_limit_issue");
        this.f19801d = a.a(this.f19801d, "custom_event_settings", "npth_simple_setting", "crash_limit_all");
    }

    private HashMap<String, Long> b() {
        File fileH = com.apm.insight.l.j.h(this.f19798a);
        HashMap<String, Long> map = new HashMap<>();
        map.put(EventConstants.KEY_TIME, Long.valueOf(System.currentTimeMillis()));
        try {
            JSONArray jSONArrayA = com.apm.insight.l.f.a(fileH.getAbsolutePath());
            if (com.apm.insight.a.a(jSONArrayA)) {
                return map;
            }
            Long lDecode = Long.decode(jSONArrayA.optString(0, null));
            if (System.currentTimeMillis() - lDecode.longValue() > 86400000) {
                File fileG = com.apm.insight.l.j.g(this.f19798a);
                fileH.renameTo(new File(fileG, String.valueOf(System.currentTimeMillis())));
                String[] list = fileG.list();
                if (list != null && list.length > 5) {
                    Arrays.sort(list);
                    new File(fileG, list[0]).delete();
                }
                return map;
            }
            map.put(EventConstants.KEY_TIME, lDecode);
            for (int i11 = 1; i11 < jSONArrayA.length(); i11++) {
                String[] strArrSplit = jSONArrayA.optString(i11, "").split(" ");
                if (strArrSplit.length == 2) {
                    map.put(strArrSplit[0], Long.decode(strArrSplit[1]));
                }
            }
            return map;
        } catch (IOException unused) {
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            j.a(th2, "NPTH_CATCH");
        }
    }

    public final void a() throws Throwable {
        HashMap<String, Long> map = this.f19799b;
        Long lRemove = map.remove(EventConstants.KEY_TIME);
        if (lRemove == null) {
            com.apm.insight.c.a();
            j.a(new RuntimeException("err times, no time"), "NPTH_CATCH");
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(lRemove);
        sb2.append('\n');
        for (Map.Entry<String, Long> entry : map.entrySet()) {
            sb2.append(entry.getKey());
            sb2.append(' ');
            sb2.append(entry.getValue());
            sb2.append('\n');
        }
        try {
            com.apm.insight.l.f.a(com.apm.insight.l.j.h(this.f19798a), sb2.toString(), false);
        } catch (IOException unused) {
        }
    }

    public final boolean a(String str) {
        if (str == null) {
            str = "default";
        }
        return com.apm.insight.l.c.AnonymousClass1.a(this.f19799b, str, 1L).longValue() < ((long) this.f19800c) && com.apm.insight.l.c.AnonymousClass1.a(this.f19799b, IntegrationConstants.NAVIGATION_BAR_ALL_ACTION, 1L).longValue() < ((long) this.f19801d);
    }
}
