package com.apm.insight.i;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.apm.insight.CrashType;
import com.apm.insight.Npth;
import com.apm.insight.e;
import com.apm.insight.g.c;
import com.apm.insight.l.f;
import com.apm.insight.l.j;
import com.apm.insight.l.m;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.h;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f19555a;

    public b(@NonNull Context context) {
        this.f19555a = context;
    }

    private synchronized void b(final long j11, final Thread thread, final Throwable th2, final String str, final String str2, final boolean z10) {
        final File file = new File(j.a(this.f19555a), str);
        com.apm.insight.g.a.a().a(file.getName());
        file.mkdirs();
        f.d(file);
        final boolean zC = m.c(th2);
        com.apm.insight.entity.a aVarA = com.apm.insight.runtime.a.f.a().a(CrashType.LAUNCH, new com.apm.insight.runtime.a.c.a() { // from class: com.apm.insight.i.b.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private long f19556a = 0;

            @Override // com.apm.insight.runtime.a.c.a
            public final com.apm.insight.entity.a a(int i11, com.apm.insight.entity.a aVar) {
                this.f19556a = SystemClock.uptimeMillis();
                if (i11 == 0) {
                    aVar.a("stack", (Object) m.a(th2));
                    aVar.a("event_type", "start_crash");
                    aVar.a("isOOM", Boolean.valueOf(zC));
                    aVar.a("crash_time", Long.valueOf(j11));
                    aVar.a("launch_mode", Integer.valueOf(com.apm.insight.runtime.a.b.b()));
                    aVar.a("launch_time", Long.valueOf(com.apm.insight.runtime.a.b.c()));
                    String str3 = str2;
                    if (str3 != null) {
                        aVar.a("crash_md5", (Object) str3);
                        aVar.a("crash_md5", str2);
                        boolean z11 = z10;
                        if (z11) {
                            aVar.a("has_ignore", String.valueOf(z11));
                        }
                    }
                } else if (i11 == 1) {
                    aVar.a(CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(j11));
                    aVar.a("main_process", Boolean.valueOf(com.apm.insight.l.a.b(b.this.f19555a)));
                    aVar.a("crash_type", CrashType.JAVA);
                    Thread thread2 = thread;
                    aVar.a("crash_thread_name", (Object) (thread2 != null ? thread2.getName() : ""));
                    aVar.a("tid", Integer.valueOf(Process.myTid()));
                    aVar.a("crash_after_crash", Npth.hasCrashWhenJavaCrash() ? "true" : "false");
                    aVar.a("crash_after_native", NativeImpl.e() ? "true" : "false");
                    com.apm.insight.g.a.a().a(thread, th2, true, aVar);
                } else if (i11 == 2) {
                    if (zC) {
                        com.apm.insight.l.a.a(b.this.f19555a, aVar.c());
                    }
                    aVar.a("launch_did", (Object) a.a(b.this.f19555a));
                    if (e.x()) {
                        JSONArray jSONArrayB = com.apm.insight.b.f.b().b();
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        JSONObject jSONObjectA = com.apm.insight.b.f.b().a(jUptimeMillis).a();
                        JSONArray jSONArrayA = com.apm.insight.b.j.a(jUptimeMillis);
                        aVar.a("history_message", (Object) jSONArrayB);
                        aVar.a("current_message", jSONObjectA);
                        aVar.a("pending_messages", (Object) jSONArrayA);
                    }
                    aVar.a("disable_looper_monitor", String.valueOf(com.apm.insight.runtime.a.c()));
                    aVar.a("npth_force_apm_crash", String.valueOf(com.apm.insight.c.a.a()));
                } else if (i11 == 3) {
                    JSONObject jSONObjectB = m.b(Thread.currentThread().getName());
                    if (jSONObjectB != null) {
                        aVar.a("all_thread_stacks", jSONObjectB);
                    }
                    aVar.a("logcat", (Object) h.a(e.f()));
                } else if (i11 != 4) {
                    if (i11 == 5) {
                        aVar.a("crash_uuid", (Object) str);
                    }
                } else if (!zC) {
                    com.apm.insight.l.a.a(b.this.f19555a, aVar.c());
                }
                return aVar;
            }

            @Override // com.apm.insight.runtime.a.c.a
            public final com.apm.insight.entity.a b(int i11, com.apm.insight.entity.a aVar) {
                try {
                    f.a(new File(file, file.getName() + "." + i11), aVar.c());
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
                return aVar;
            }
        });
        long jCurrentTimeMillis = System.currentTimeMillis() - j11;
        try {
            aVarA.a("crash_type", "normal");
            aVarA.b("crash_cost", String.valueOf(jCurrentTimeMillis));
            aVarA.a("crash_cost", String.valueOf(jCurrentTimeMillis / 1000));
        } catch (Throwable th3) {
            com.apm.insight.c.a();
            com.apm.insight.runtime.j.a(th3, "NPTH_CATCH");
        }
        if (Npth.isStopUpload()) {
        }
    }

    @Override // com.apm.insight.g.c
    public final void a(long j11, Thread thread, Throwable th2, String str, String str2, boolean z10) {
        b(j11, thread, th2, str, str2, z10);
    }
}
