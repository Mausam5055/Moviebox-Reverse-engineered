package com.vungle.ads.internal.persistence;

import com.vungle.ads.internal.util.g;
import com.vungle.ads.internal.util.p;
import java.io.File;
import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {
    public static final String FILENAME = "settings_vungle";
    public static final String TPAT_FAILED_FILENAME = "vngFailedTpats";
    private final File file;
    private final Executor ioExecutor;
    private final ConcurrentHashMap<String, Object> values;
    public static final a Companion = new a(null);
    private static final ConcurrentHashMap<String, b> filePreferenceMap = new ConcurrentHashMap<>();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ b get$default(a aVar, Executor executor, p pVar, String str, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                str = b.FILENAME;
            }
            return aVar.get(executor, pVar, str);
        }

        public static /* synthetic */ void getFILENAME$annotations() {
        }

        @JvmStatic
        public final synchronized b get(Executor ioExecutor, p pathProvider, String filename) {
            Object bVar;
            Object objPutIfAbsent;
            try {
                Intrinsics.h(ioExecutor, "ioExecutor");
                Intrinsics.h(pathProvider, "pathProvider");
                Intrinsics.h(filename, "filename");
                ConcurrentHashMap concurrentHashMap = b.filePreferenceMap;
                bVar = concurrentHashMap.get(filename);
                if (bVar == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(filename, (bVar = new b(ioExecutor, pathProvider, filename, null)))) != null) {
                    bVar = objPutIfAbsent;
                }
                Intrinsics.g(bVar, "filePreferenceMap.getOrP…, filename)\n            }");
            } catch (Throwable th2) {
                throw th2;
            }
            return (b) bVar;
        }
    }

    private b(Executor executor, p pVar, String str) {
        this.ioExecutor = executor;
        File file = new File(pVar.getSharedPrefsDir(), str);
        this.file = file;
        ConcurrentHashMap<String, Object> concurrentHashMap = new ConcurrentHashMap<>();
        this.values = concurrentHashMap;
        Object serializable = g.readSerializable(file);
        if (serializable instanceof HashMap) {
            concurrentHashMap.putAll((HashMap) serializable);
        }
    }

    /* synthetic */ b(Executor executor, p pVar, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(executor, pVar, (i11 & 4) != 0 ? FILENAME : str);
    }

    public /* synthetic */ b(Executor executor, p pVar, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(executor, pVar, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: apply$lambda-0, reason: not valid java name */
    public static final void m414apply$lambda0(b this$0, Serializable serializable) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(serializable, "$serializable");
        g.writeSerializable(this$0.file, serializable);
    }

    @JvmStatic
    public static final synchronized b get(Executor executor, p pVar, String str) {
        return Companion.get(executor, pVar, str);
    }

    public final void apply() {
        final HashMap map = new HashMap(this.values);
        this.ioExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.persistence.a
            @Override // java.lang.Runnable
            public final void run() {
                b.m414apply$lambda0(this.f60646a, map);
            }
        });
    }

    public final Boolean getBoolean(String key) {
        Intrinsics.h(key, "key");
        Object obj = this.values.get(key);
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        return null;
    }

    public final boolean getBoolean(String key, boolean z10) {
        Intrinsics.h(key, "key");
        Object obj = this.values.get(key);
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : z10;
    }

    public final int getInt(String key, int i11) {
        Intrinsics.h(key, "key");
        Object obj = this.values.get(key);
        return obj instanceof Integer ? ((Number) obj).intValue() : i11;
    }

    public final long getLong(String key, long j11) {
        Intrinsics.h(key, "key");
        Object obj = this.values.get(key);
        return obj instanceof Long ? ((Number) obj).longValue() : j11;
    }

    public final String getString(String key) {
        Intrinsics.h(key, "key");
        Object obj = this.values.get(key);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public final String getString(String key, String defaultValue) {
        Intrinsics.h(key, "key");
        Intrinsics.h(defaultValue, "defaultValue");
        Object obj = this.values.get(key);
        return obj instanceof String ? (String) obj : defaultValue;
    }

    public final HashSet<String> getStringSet(String key, HashSet<String> defaultValue) {
        Intrinsics.h(key, "key");
        Intrinsics.h(defaultValue, "defaultValue");
        Object obj = this.values.get(key);
        return obj instanceof HashSet ? com.vungle.ads.internal.util.b.getNewHashSet((HashSet) obj) : defaultValue;
    }

    public final b put(String key, int i11) {
        Intrinsics.h(key, "key");
        this.values.put(key, Integer.valueOf(i11));
        return this;
    }

    public final b put(String key, long j11) {
        Intrinsics.h(key, "key");
        this.values.put(key, Long.valueOf(j11));
        return this;
    }

    public final b put(String key, String value) {
        Intrinsics.h(key, "key");
        Intrinsics.h(value, "value");
        this.values.put(key, value);
        return this;
    }

    public final b put(String key, HashSet<String> hashSet) {
        Intrinsics.h(key, "key");
        this.values.put(key, com.vungle.ads.internal.util.b.getNewHashSet(hashSet));
        return this;
    }

    public final b put(String key, boolean z10) {
        Intrinsics.h(key, "key");
        this.values.put(key, Boolean.valueOf(z10));
        return this;
    }

    public final b remove(String key) {
        Intrinsics.h(key, "key");
        if (this.values.containsKey(key)) {
            this.values.remove(key);
        }
        return this;
    }
}
