package com.transsion.ga;

import android.content.Context;
import android.database.sqlite.SQLiteFullException;
import android.os.Process;
import android.util.Log;
import com.transsion.athena.data.TrackData;
import com.transsion.athena.taaneh.aethna;

/* JADX INFO: loaded from: classes5.dex */
public class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile i f44206b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f44207a;

    private i(Context context) {
        this.f44207a = context;
    }

    public static i a() {
        return f44206b;
    }

    public static void b(Context context) {
        if (f44206b == null) {
            synchronized (i.class) {
                try {
                    if (f44206b == null) {
                        f44206b = new i(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void c(anateh anatehVar) {
        String stackTraceString;
        long usableSpace;
        int iB = com.transsion.athena.data.athena.b();
        if (iB == 0 || anatehVar == null) {
            aethna.a("trackException tid not configure or e is null");
            return;
        }
        String strA = anatehVar.a();
        if (strA.contains("addJSON") || strA.contains("updateEvents") || strA.contains("cleanupEvents")) {
            return;
        }
        TrackData trackDataAdd = new TrackData().add("count", 1, 1).add("eid", strA).add("pid", Process.myPid(), 2).add("extra", anatehVar.b(), 2);
        Throwable cause = anatehVar.getCause();
        if (cause == null) {
            stackTraceString = null;
        } else if (cause instanceof SQLiteFullException) {
            stackTraceString = cause.getClass().getName();
        } else {
            stackTraceString = cause.getCause() != null ? Log.getStackTraceString(cause.getCause()) : Log.getStackTraceString(cause);
            if (stackTraceString.length() > 2048) {
                stackTraceString = stackTraceString.substring(0, 2048);
            }
        }
        TrackData trackDataAdd2 = trackDataAdd.add("stackTrace", stackTraceString);
        if (strA.contains("sql")) {
            try {
                usableSpace = this.f44207a.getFilesDir().getUsableSpace();
            } catch (Exception e11) {
                e11.printStackTrace();
                usableSpace = 0;
            }
            trackDataAdd2.add("usableSpace", usableSpace);
        }
        AthenaAnalytics.K(iB).g0("ev_athena", trackDataAdd2, iB);
    }
}
