package com.apm.insight.j;

import android.content.Context;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<a> f19571a = new ArrayList(3);

    private d(Handler handler, Context context) {
        if (com.apm.insight.l.a.b(context)) {
            this.f19571a.add(new c(handler));
        }
    }

    public static d a(Handler handler, Context context) {
        return new d(handler, context);
    }

    public final void a() {
        com.apm.insight.a.a((Object) ("[ScheduleTaskManager] execute, task size=" + this.f19571a.size()));
        Iterator<a> it = this.f19571a.iterator();
        while (it.hasNext()) {
            try {
                it.next().a();
            } catch (Throwable unused) {
            }
        }
    }
}
