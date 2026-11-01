package com.apm.insight.l;

import android.annotation.TargetApi;
import android.app.ActivityManager;

/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f19680a = new b(0);

    static class a {
        private a() {
        }

        /* synthetic */ a(byte b11) {
            this();
        }

        public long a(ActivityManager.MemoryInfo memoryInfo) {
            return 0L;
        }
    }

    @TargetApi(16)
    static class b extends a {
        private b() {
            super((byte) 0);
        }

        /* synthetic */ b(byte b11) {
            this();
        }

        @Override // com.apm.insight.l.i.a
        public final long a(ActivityManager.MemoryInfo memoryInfo) {
            return memoryInfo.totalMem;
        }
    }

    public static long a(ActivityManager.MemoryInfo memoryInfo) {
        return f19680a.a(memoryInfo);
    }
}
