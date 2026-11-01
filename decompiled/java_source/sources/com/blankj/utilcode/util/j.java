package com.blankj.utilcode.util;

import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map f20090a = new ConcurrentHashMap(64);

    private static void a(long j11) {
        Map map = f20090a;
        if (map.size() < 64) {
            return;
        }
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            if (j11 >= ((Long) ((Map.Entry) it.next()).getValue()).longValue()) {
                it.remove();
            }
        }
    }

    public static boolean b(View view, long j11) {
        return c(String.valueOf(view.hashCode()), j11);
    }

    public static boolean c(String str, long j11) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("The key is null.");
        }
        if (j11 < 0) {
            throw new IllegalArgumentException("The duration is less than 0.");
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        a(jElapsedRealtime);
        Map map = f20090a;
        Long l11 = (Long) map.get(str);
        if (l11 != null && jElapsedRealtime < l11.longValue()) {
            return false;
        }
        map.put(str, Long.valueOf(jElapsedRealtime + j11));
        return true;
    }
}
