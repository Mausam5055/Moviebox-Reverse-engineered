package com.mbridge.msdk.tracker;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class u {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile u f38728g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m f38729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private x f38730b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f38731c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f38732d = 30000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap<String, String> f38733e = new HashMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Handler f38734f = new a(Looper.getMainLooper());

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what != 1) {
                return;
            }
            try {
                u.this.b();
                u.this.f38734f.removeMessages(1);
                u.this.d();
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    private u() {
    }

    public static u a() {
        if (f38728g == null) {
            synchronized (u.class) {
                try {
                    if (f38728g == null) {
                        f38728g = new u();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f38728g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            this.f38734f.sendEmptyMessageDelayed(1, this.f38732d);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void a(Context context, x xVar, int i11, JSONObject jSONObject) {
        this.f38730b = xVar;
        this.f38732d = i11;
        m mVarA = m.a("monitor", context, xVar);
        this.f38729a = mVarA;
        if (mVarA != null) {
            mVarA.a(jSONObject);
            this.f38729a.h();
        }
        c();
    }

    /* JADX WARN: Code duplicated, block: B:20:0x005a A[Catch: Exception -> 0x0058, TRY_LEAVE, TryCatch #0 {Exception -> 0x0058, blocks: (B:5:0x0008, B:7:0x000d, B:9:0x001b, B:12:0x002e, B:15:0x003a, B:20:0x005a, B:25:0x00a6, B:22:0x0072), top: B:29:0x0008, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a9 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:20:0x005a, please report this as an issue */
    public void b() {
        m[] mVarArrB = m.b();
        if (mVarArrB.length == 0) {
            return;
        }
        try {
            for (m mVar : mVarArrB) {
                String strF = mVar.f();
                if (!"monitor".equals(strF)) {
                    String strD = mVar.d();
                    long[] jArrE = mVar.e();
                    long j11 = jArrE[1];
                    if (j11 != 0) {
                        long j12 = jArrE[0];
                        if (this.f38733e.containsKey(strF)) {
                            if (!(j12 + "").equals(this.f38733e.get(strF))) {
                                this.f38733e.put(strF, j12 + "");
                                if (this.f38729a != null) {
                                    try {
                                        e eVar = new e("event_lib_monitor");
                                        eVar.a(1);
                                        JSONObject jSONObject = new JSONObject();
                                        jSONObject.put("key", "m_report_rate");
                                        jSONObject.put("task_name", strF);
                                        jSONObject.put("task_count", j11);
                                        jSONObject.put("task_session_id", strD);
                                        jSONObject.put("task_ts", j12);
                                        eVar.a(jSONObject);
                                        this.f38729a.d(eVar);
                                    } catch (Exception e11) {
                                        e11.printStackTrace();
                                    }
                                }
                            }
                        } else {
                            this.f38733e.put(strF, j12 + "");
                            if (this.f38729a != null) {
                                e eVar2 = new e("event_lib_monitor");
                                eVar2.a(1);
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put("key", "m_report_rate");
                                jSONObject2.put("task_name", strF);
                                jSONObject2.put("task_count", j11);
                                jSONObject2.put("task_session_id", strD);
                                jSONObject2.put("task_ts", j12);
                                eVar2.a(jSONObject2);
                                this.f38729a.d(eVar2);
                            }
                        }
                    }
                }
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    public synchronized void c() {
        if (this.f38731c) {
            return;
        }
        this.f38731c = true;
        d();
    }
}
