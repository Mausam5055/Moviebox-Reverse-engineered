package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.i;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.b;
import androidx.work.impl.constraints.h;
import androidx.work.impl.e;
import androidx.work.impl.f1;
import androidx.work.impl.model.j0;
import androidx.work.impl.model.s1;
import androidx.work.impl.model.x;
import androidx.work.t;
import j4.c;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes2.dex */
public class SystemForegroundDispatcher implements h, e {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final String f15667k = t.i("SystemFgDispatcher");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f15668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f1 f15669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f15670c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Object f15671d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    x f15672e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final Map f15673f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Map f15674g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Map f15675h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final WorkConstraintsTracker f15676i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private a f15677j;

    interface a {
        void a(int i11, Notification notification);

        void b(int i11);

        void c(int i11, int i12, Notification notification);

        void d(int i11);
    }

    SystemForegroundDispatcher(Context context) {
        this.f15668a = context;
        f1 f1VarO = f1.o(context);
        this.f15669b = f1VarO;
        this.f15670c = f1VarO.u();
        this.f15672e = null;
        this.f15673f = new LinkedHashMap();
        this.f15675h = new HashMap();
        this.f15674g = new HashMap();
        this.f15676i = new WorkConstraintsTracker(this.f15669b.s());
        this.f15669b.q().e(this);
    }

    public static Intent d(Context context, x xVar, i iVar) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", iVar.c());
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", iVar.a());
        intent.putExtra("KEY_NOTIFICATION", iVar.b());
        intent.putExtra("KEY_WORKSPEC_ID", xVar.b());
        intent.putExtra("KEY_GENERATION", xVar.a());
        return intent;
    }

    public static Intent f(Context context, x xVar, i iVar) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", xVar.b());
        intent.putExtra("KEY_GENERATION", xVar.a());
        intent.putExtra("KEY_NOTIFICATION_ID", iVar.c());
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", iVar.a());
        intent.putExtra("KEY_NOTIFICATION", iVar.b());
        return intent;
    }

    public static Intent g(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_STOP_FOREGROUND");
        return intent;
    }

    private void h(Intent intent) {
        t.e().f(f15667k, "Stopping foreground work for " + intent);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra == null || TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f15669b.j(UUID.fromString(stringExtra));
    }

    private void i(Intent intent) {
        if (this.f15677j == null) {
            throw new IllegalStateException("handleNotify was called on the destroyed dispatcher");
        }
        int iA = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        x xVar = new x(stringExtra, intent.getIntExtra("KEY_GENERATION", 0));
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        t.e().a(f15667k, "Notifying with (id:" + intExtra + ", workSpecId: " + stringExtra + ", notificationType :" + intExtra2 + ")");
        if (notification == null) {
            throw new IllegalArgumentException("Notification passed in the intent was null.");
        }
        i iVar = new i(intExtra, notification, intExtra2);
        this.f15673f.put(xVar, iVar);
        i iVar2 = (i) this.f15673f.get(this.f15672e);
        if (iVar2 == null) {
            this.f15672e = xVar;
        } else {
            this.f15677j.a(intExtra, notification);
            if (Build.VERSION.SDK_INT >= 29) {
                Iterator it = this.f15673f.entrySet().iterator();
                while (it.hasNext()) {
                    iA |= ((i) ((Map.Entry) it.next()).getValue()).a();
                }
                iVar = new i(iVar2.c(), iVar2.b(), iA);
            } else {
                iVar = iVar2;
            }
        }
        this.f15677j.c(iVar.c(), iVar.a(), iVar.b());
    }

    private void j(Intent intent) {
        t.e().f(f15667k, "Started foreground service " + intent);
        final String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        this.f15670c.d(new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundDispatcher.1
            @Override // java.lang.Runnable
            public void run() {
                j0 j0VarG = SystemForegroundDispatcher.this.f15669b.q().g(stringExtra);
                if (j0VarG == null || !j0VarG.m()) {
                    return;
                }
                synchronized (SystemForegroundDispatcher.this.f15671d) {
                    SystemForegroundDispatcher.this.f15674g.put(s1.a(j0VarG), j0VarG);
                    SystemForegroundDispatcher systemForegroundDispatcher = SystemForegroundDispatcher.this;
                    SystemForegroundDispatcher.this.f15675h.put(s1.a(j0VarG), WorkConstraintsTrackerKt.e(systemForegroundDispatcher.f15676i, j0VarG, systemForegroundDispatcher.f15670c.b(), SystemForegroundDispatcher.this));
                }
            }
        });
    }

    @Override // androidx.work.impl.e
    public void c(x xVar, boolean z10) {
        Map.Entry entry;
        synchronized (this.f15671d) {
            try {
                t1 t1Var = ((j0) this.f15674g.remove(xVar)) != null ? (t1) this.f15675h.remove(xVar) : null;
                if (t1Var != null) {
                    t1Var.cancel(null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        i iVar = (i) this.f15673f.remove(xVar);
        if (xVar.equals(this.f15672e)) {
            if (this.f15673f.size() > 0) {
                Iterator it = this.f15673f.entrySet().iterator();
                Object next = it.next();
                while (true) {
                    entry = (Map.Entry) next;
                    if (!it.hasNext()) {
                        break;
                    } else {
                        next = it.next();
                    }
                }
                this.f15672e = (x) entry.getKey();
                if (this.f15677j != null) {
                    i iVar2 = (i) entry.getValue();
                    this.f15677j.c(iVar2.c(), iVar2.a(), iVar2.b());
                    this.f15677j.d(iVar2.c());
                }
            } else {
                this.f15672e = null;
            }
        }
        a aVar = this.f15677j;
        if (iVar == null || aVar == null) {
            return;
        }
        t.e().a(f15667k, "Removing Notification (id: " + iVar.c() + ", workSpecId: " + xVar + ", notificationType: " + iVar.a());
        aVar.d(iVar.c());
    }

    @Override // androidx.work.impl.constraints.h
    public void e(j0 j0Var, b bVar) {
        if (bVar instanceof b.C0134b) {
            String str = j0Var.f15764a;
            t.e().a(f15667k, "Constraints unmet for WorkSpec " + str);
            this.f15669b.z(s1.a(j0Var), ((b.C0134b) bVar).a());
        }
    }

    void k(Intent intent, int i11) {
        t.e().f(f15667k, "Stopping foreground service");
        a aVar = this.f15677j;
        if (aVar != null) {
            aVar.b(i11);
        }
    }

    void l() {
        this.f15677j = null;
        synchronized (this.f15671d) {
            try {
                Iterator it = this.f15675h.values().iterator();
                while (it.hasNext()) {
                    ((t1) it.next()).cancel(null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f15669b.q().p(this);
    }

    void m(Intent intent, int i11) {
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            j(intent);
            i(intent);
        } else if ("ACTION_NOTIFY".equals(action)) {
            i(intent);
        } else if ("ACTION_CANCEL_WORK".equals(action)) {
            h(intent);
        } else if ("ACTION_STOP_FOREGROUND".equals(action)) {
            k(intent, i11);
        }
    }

    void n(int i11, int i12) {
        t.e().f(f15667k, "Foreground service timed out, FGS type: " + i12);
        for (Map.Entry entry : this.f15673f.entrySet()) {
            if (((i) entry.getValue()).a() == i12) {
                this.f15669b.z((x) entry.getKey(), -128);
            }
        }
        a aVar = this.f15677j;
        if (aVar != null) {
            aVar.b(i11);
        }
    }

    void o(a aVar) {
        if (this.f15677j != null) {
            t.e().c(f15667k, "A callback already exists.");
        } else {
            this.f15677j = aVar;
        }
    }
}
