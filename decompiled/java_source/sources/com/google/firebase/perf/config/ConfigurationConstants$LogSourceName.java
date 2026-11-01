package com.google.firebase.perf.config;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ConfigurationConstants$LogSourceName extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ConfigurationConstants$LogSourceName f32225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map f32226b = Collections.unmodifiableMap(new HashMap<Long, String>() { // from class: com.google.firebase.perf.config.ConfigurationConstants$LogSourceName.1
        {
            put(461L, "FIREPERF_AUTOPUSH");
            put(462L, "FIREPERF");
            put(675L, "FIREPERF_INTERNAL_LOW");
            put(676L, "FIREPERF_INTERNAL_HIGH");
        }
    });

    private ConfigurationConstants$LogSourceName() {
    }

    public static synchronized ConfigurationConstants$LogSourceName e() {
        try {
            if (f32225a == null) {
                f32225a = new ConfigurationConstants$LogSourceName();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f32225a;
    }

    protected static String f(long j11) {
        return (String) f32226b.get(Long.valueOf(j11));
    }

    protected static boolean g(long j11) {
        return f32226b.containsKey(Long.valueOf(j11));
    }

    @Override // com.google.firebase.perf.config.u
    protected String a() {
        return "com.google.firebase.perf.LogSourceName";
    }

    @Override // com.google.firebase.perf.config.u
    protected String c() {
        return "fpr_log_source";
    }

    protected String d() {
        return pc.a.f72409c;
    }
}
