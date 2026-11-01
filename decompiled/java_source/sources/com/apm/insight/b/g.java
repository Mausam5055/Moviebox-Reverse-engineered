package com.apm.insight.b;

import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.apm.insight.runtime.p;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.http2.Settings;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static int f19372r = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f19373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f19374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile int f19375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f19376d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f19377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private f f19378f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f19379g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f19380h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f19381i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f19382j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f19383k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f19384l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.apm.insight.b.e f19385m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private volatile boolean f19386n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f19387o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final p f19388p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private volatile boolean f19389q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Runnable f19390s;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f19399a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f19400b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f19401c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f19402d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f19403e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        StackTraceElement[] f19404f;

        private a() {
        }

        /* synthetic */ a(byte b11) {
            this();
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        a f19405a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f19406b;

        final void a(a aVar) {
            throw null;
        }
    }

    public interface c {
    }

    public static class d {
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f19407a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f19408b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f19409c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f19410d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f19411e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        long f19412f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        long f19413g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        String f19414h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f19415i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f19416j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private d f19417k;

        public final JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, g.a(this.f19414h));
                jSONObject.put("cpuDuration", this.f19413g);
                jSONObject.put("duration", this.f19412f);
                jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, this.f19410d);
                jSONObject.put("count", this.f19411e);
                jSONObject.put("messageCount", this.f19411e);
                jSONObject.put("lastDuration", this.f19408b - this.f19409c);
                jSONObject.put("start", this.f19407a);
                jSONObject.put(TtmlNode.END, this.f19408b);
                jSONObject.put("block_uuid", (Object) null);
                jSONObject.put("sblock_uuid", (Object) null);
                jSONObject.put("belong_frame", false);
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
            return jSONObject;
        }

        final void b() {
            this.f19410d = -1;
            this.f19411e = -1;
            this.f19412f = -1L;
            this.f19414h = null;
            this.f19416j = null;
            this.f19417k = null;
            this.f19415i = null;
        }
    }

    static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f19418a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f19419b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private e f19420c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<e> f19421d = new ArrayList();

        f(int i11) {
            this.f19418a = i11;
        }

        final e a(int i11) {
            e eVar = this.f19420c;
            if (eVar != null) {
                eVar.f19410d = i11;
                this.f19420c = null;
                return eVar;
            }
            e eVar2 = new e();
            eVar2.f19410d = i11;
            return eVar2;
        }

        final List<e> a() {
            ArrayList arrayList = new ArrayList();
            int i11 = 0;
            if (this.f19421d.size() == this.f19418a) {
                for (int i12 = this.f19419b; i12 < this.f19421d.size(); i12++) {
                    arrayList.add(this.f19421d.get(i12));
                }
                while (i11 < this.f19419b - 1) {
                    arrayList.add(this.f19421d.get(i11));
                    i11++;
                }
            } else {
                while (i11 < this.f19421d.size()) {
                    arrayList.add(this.f19421d.get(i11));
                    i11++;
                }
            }
            return arrayList;
        }

        final void a(e eVar) {
            int size = this.f19421d.size();
            int i11 = this.f19418a;
            if (size < i11) {
                this.f19421d.add(eVar);
                this.f19419b = this.f19421d.size();
                return;
            }
            int i12 = this.f19419b % i11;
            this.f19419b = i12;
            e eVar2 = this.f19421d.set(i12, eVar);
            eVar2.b();
            this.f19420c = eVar2;
            this.f19419b++;
        }
    }

    public g() {
        this((byte) 0);
    }

    private g(byte b11) {
        this.f19374b = 0;
        this.f19375c = 0;
        this.f19376d = 100;
        this.f19377e = 200;
        this.f19379g = -1L;
        this.f19380h = -1L;
        this.f19381i = -1;
        this.f19382j = -1L;
        this.f19386n = false;
        this.f19387o = false;
        this.f19389q = false;
        this.f19390s = new Runnable() { // from class: com.apm.insight.b.g.2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private long f19393b;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private long f19392a = 0;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f19394c = -1;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f19395d = 0;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f19396e = 0;

            @Override // java.lang.Runnable
            public final void run() {
                long jUptimeMillis = SystemClock.uptimeMillis();
                if (g.c().f19405a != null) {
                    throw null;
                }
                a aVar = new a((byte) 0);
                if (this.f19394c == g.this.f19375c) {
                    this.f19395d++;
                } else {
                    this.f19395d = 0;
                    this.f19396e = 0;
                    this.f19393b = jUptimeMillis;
                }
                this.f19394c = g.this.f19375c;
                int i11 = this.f19395d;
                if (i11 > 0 && i11 - this.f19396e >= g.f19372r && this.f19392a != 0 && jUptimeMillis - this.f19393b > 700 && g.this.f19389q) {
                    aVar.f19404f = Looper.getMainLooper().getThread().getStackTrace();
                    this.f19396e = this.f19395d;
                }
                aVar.f19402d = g.this.f19389q;
                aVar.f19401c = (jUptimeMillis - this.f19392a) - 300;
                aVar.f19399a = jUptimeMillis;
                long jUptimeMillis2 = SystemClock.uptimeMillis();
                this.f19392a = jUptimeMillis2;
                aVar.f19400b = jUptimeMillis2 - jUptimeMillis;
                aVar.f19403e = g.this.f19375c;
                g.e().a(g.this.f19390s, 300L);
                g.c().a(aVar);
            }
        };
        this.f19373a = new c() { // from class: com.apm.insight.b.g.1
        };
        this.f19388p = null;
    }

    public static String a(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return "unknown message";
        }
        try {
            String[] strArrSplit = str.split(":");
            String str3 = strArrSplit.length == 2 ? strArrSplit[1] : "";
            if (str.contains("{") && str.contains("}")) {
                str2 = str.split("\\{")[0];
                try {
                    str = str2 + str.split("\\}")[1];
                } catch (Throwable unused) {
                    return str2;
                }
            } else {
                str2 = str;
            }
            if (str.contains("@")) {
                String[] strArrSplit2 = str.split("@");
                if (strArrSplit2.length > 1) {
                    str = strArrSplit2[0];
                }
            }
            if (str.contains("(") && str.contains(")") && !str.endsWith(" null")) {
                String[] strArrSplit3 = str.split("\\(");
                if (strArrSplit3.length > 1) {
                    str = strArrSplit3[1];
                }
                str = str.replace(")", "");
            }
            if (str.startsWith(" ")) {
                str = str.replace(" ", "");
            }
            return str + str3;
        } catch (Throwable unused2) {
            return str;
        }
    }

    private void a(int i11, long j11, String str) {
        a(i11, j11, str, true);
    }

    private void a(int i11, long j11, String str, boolean z10) {
        this.f19387o = true;
        e eVarA = this.f19378f.a(i11);
        eVarA.f19412f = j11 - this.f19379g;
        if (z10) {
            long jCurrentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
            eVarA.f19413g = jCurrentThreadTimeMillis - this.f19382j;
            this.f19382j = jCurrentThreadTimeMillis;
        } else {
            eVarA.f19413g = -1L;
        }
        eVarA.f19411e = this.f19374b;
        eVarA.f19414h = str;
        eVarA.f19415i = this.f19383k;
        eVarA.f19407a = this.f19379g;
        eVarA.f19408b = j11;
        eVarA.f19409c = this.f19380h;
        this.f19378f.a(eVarA);
        this.f19374b = 0;
        this.f19379g = j11;
    }

    static /* synthetic */ void a(g gVar, boolean z10, long j11) {
        int i11 = gVar.f19375c + 1;
        gVar.f19375c = i11;
        gVar.f19375c = i11 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        gVar.f19387o = false;
        if (gVar.f19379g < 0) {
            gVar.f19379g = j11;
        }
        if (gVar.f19380h < 0) {
            gVar.f19380h = j11;
        }
        if (gVar.f19381i < 0) {
            gVar.f19381i = Process.myTid();
            gVar.f19382j = SystemClock.currentThreadTimeMillis();
        }
        long j12 = j11 - gVar.f19379g;
        int i12 = gVar.f19377e;
        if (j12 > i12) {
            long j13 = gVar.f19380h;
            if (j11 - j13 <= i12) {
                gVar.a(9, j11, gVar.f19384l);
            } else if (z10) {
                if (gVar.f19374b == 0) {
                    gVar.a(1, j11, "no message running");
                } else {
                    gVar.a(9, j13, gVar.f19383k);
                    gVar.a(1, j11, "no message running", false);
                }
            } else if (gVar.f19374b == 0) {
                gVar.a(8, j11, gVar.f19384l, true);
            } else {
                gVar.a(9, j13, gVar.f19383k, false);
                gVar.a(8, j11, gVar.f19384l, true);
            }
        }
        gVar.f19380h = j11;
    }

    static /* synthetic */ b c() {
        return null;
    }

    static /* synthetic */ int d(g gVar) {
        int i11 = gVar.f19374b;
        gVar.f19374b = i11 + 1;
        return i11;
    }

    static /* synthetic */ p e() {
        return null;
    }

    public final e a(long j11) {
        e eVar = new e();
        eVar.f19414h = this.f19384l;
        eVar.f19415i = this.f19383k;
        eVar.f19412f = j11 - this.f19380h;
        eVar.f19413g = 0 - this.f19382j;
        eVar.f19411e = this.f19374b;
        return eVar;
    }

    public final void a() {
        if (this.f19386n) {
            return;
        }
        this.f19386n = true;
        this.f19376d = 100;
        this.f19377e = 300;
        this.f19378f = new f(100);
        this.f19385m = new com.apm.insight.b.e() { // from class: com.apm.insight.b.g.3
            @Override // com.apm.insight.b.e
            public final void a(String str) {
                g.this.f19389q = true;
                g.this.f19384l = str;
                super.a(str);
                g.a(g.this, true, com.apm.insight.b.e.f19366a);
            }

            @Override // com.apm.insight.b.e
            public final boolean a() {
                return true;
            }

            @Override // com.apm.insight.b.e
            public final void b(String str) {
                super.b(str);
                g.d(g.this);
                g.a(g.this, false, com.apm.insight.b.e.f19366a);
                g gVar = g.this;
                gVar.f19383k = gVar.f19384l;
                g.this.f19384l = "no message running";
                g.this.f19389q = false;
            }
        };
        h.a();
        h.a(this.f19385m);
        j.a(j.a());
    }

    public final JSONArray b() {
        JSONArray jSONArray = new JSONArray();
        try {
            int i11 = 0;
            for (e eVar : this.f19378f.a()) {
                if (eVar != null) {
                    i11++;
                    jSONArray.put(eVar.a().put("id", i11));
                }
            }
        } catch (Throwable unused) {
        }
        return jSONArray;
    }
}
