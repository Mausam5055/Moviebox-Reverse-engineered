package com.transsion.startup.pref.anr;

import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes6.dex */
public class ANRError extends Error {
    private static final long serialVersionUID = 1;
    public final long duration;

    private ANRError(ANRError$$._Thread _thread, long j11) {
        super("Application Not Responding for at least " + j11 + " ms.", _thread);
        this.duration = j11;
    }

    @NonNull
    static ANRError New(long j11, @Nullable String str, boolean z10) {
        final Thread thread = Looper.getMainLooper().getThread();
        TreeMap treeMap = new TreeMap(new Comparator<Thread>() { // from class: com.transsion.startup.pref.anr.ANRError.1
            @Override // java.util.Comparator
            public int compare(Thread thread2, Thread thread3) {
                if (thread2 == thread3) {
                    return 0;
                }
                Thread thread4 = thread;
                if (thread2 == thread4) {
                    return 1;
                }
                if (thread3 == thread4) {
                    return -1;
                }
                return thread3.getName().compareTo(thread2.getName());
            }
        });
        for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
            if (entry.getKey() == thread || (entry.getKey().getName().startsWith(str) && (z10 || entry.getValue().length > 0))) {
                treeMap.put(entry.getKey(), entry.getValue());
            }
        }
        if (!treeMap.containsKey(thread)) {
            treeMap.put(thread, thread.getStackTrace());
        }
        ANRError$$._Thread _thread = null;
        for (Map.Entry entry2 : treeMap.entrySet()) {
            _thread = new ANRError$$._Thread(_thread);
        }
        return new ANRError(_thread, j11);
    }

    @NonNull
    static ANRError NewMainOnly(long j11) {
        Thread thread = Looper.getMainLooper().getThread();
        return new ANRError(new ANRError$$._Thread(null), j11);
    }

    private static String getThreadTitle(Thread thread) {
        return thread.getName() + " (state = " + thread.getState() + ")";
    }

    @Override // java.lang.Throwable
    @NonNull
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
