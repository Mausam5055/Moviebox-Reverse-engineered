package com.google.firebase.remoteconfig;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.abt.AbtException;
import com.google.firebase.concurrent.FirebaseExecutors;
import com.google.firebase.f;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import com.google.firebase.remoteconfig.internal.e;
import com.google.firebase.remoteconfig.internal.m;
import com.google.firebase.remoteconfig.internal.n;
import com.google.firebase.remoteconfig.internal.o;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import yc.i;
import yc.j;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final byte[] f32406n = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f32407a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f32408b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final hb.b f32409c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f32410d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f32411e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f32412f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final e f32413g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ConfigFetchHandler f32414h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final m f32415i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final n f32416j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final jc.e f32417k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final o f32418l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zc.e f32419m;

    a(Context context, f fVar, jc.e eVar, hb.b bVar, Executor executor, e eVar2, e eVar3, e eVar4, ConfigFetchHandler configFetchHandler, m mVar, n nVar, o oVar, zc.e eVar5) {
        this.f32407a = context;
        this.f32408b = fVar;
        this.f32417k = eVar;
        this.f32409c = bVar;
        this.f32410d = executor;
        this.f32411e = eVar2;
        this.f32412f = eVar3;
        this.f32413g = eVar4;
        this.f32414h = configFetchHandler;
        this.f32415i = mVar;
        this.f32416j = nVar;
        this.f32418l = oVar;
        this.f32419m = eVar5;
    }

    public static a k() {
        return l(f.l());
    }

    public static a l(f fVar) {
        return ((c) fVar.j(c.class)).g();
    }

    private static boolean q(com.google.firebase.remoteconfig.internal.f fVar, com.google.firebase.remoteconfig.internal.f fVar2) {
        return fVar2 == null || !fVar.h().equals(fVar2.h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task r(Task task, Task task2, Task task3) {
        if (!task.isSuccessful() || task.getResult() == null) {
            return Tasks.forResult(Boolean.FALSE);
        }
        com.google.firebase.remoteconfig.internal.f fVar = (com.google.firebase.remoteconfig.internal.f) task.getResult();
        return (!task2.isSuccessful() || q(fVar, (com.google.firebase.remoteconfig.internal.f) task2.getResult())) ? this.f32412f.k(fVar).continueWith(this.f32410d, new Continuation() { // from class: yc.g
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task4) {
                return Boolean.valueOf(this.f78974a.v(task4));
            }
        }) : Tasks.forResult(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task s(ConfigFetchHandler.a aVar) {
        return Tasks.forResult(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task t(Void r11) {
        return f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void u(j jVar) {
        this.f32416j.l(jVar);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean v(Task task) {
        if (!task.isSuccessful()) {
            return false;
        }
        this.f32411e.d();
        com.google.firebase.remoteconfig.internal.f fVar = (com.google.firebase.remoteconfig.internal.f) task.getResult();
        if (fVar == null) {
            Log.e("FirebaseRemoteConfig", "Activated configs written to disk are null.");
            return true;
        }
        A(fVar.e());
        this.f32419m.g(fVar);
        return true;
    }

    static List z(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < jSONArray.length(); i11++) {
            HashMap map = new HashMap();
            JSONObject jSONObject = jSONArray.getJSONObject(i11);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.getString(next));
            }
            arrayList.add(map);
        }
        return arrayList;
    }

    void A(JSONArray jSONArray) {
        if (this.f32409c == null) {
            return;
        }
        try {
            this.f32409c.m(z(jSONArray));
        } catch (AbtException e11) {
            Log.w("FirebaseRemoteConfig", "Could not update ABT experiments.", e11);
        } catch (JSONException e12) {
            Log.e("FirebaseRemoteConfig", "Could not parse ABT experiments from the JSON response.", e12);
        }
    }

    public Task f() {
        final Task taskE = this.f32411e.e();
        final Task taskE2 = this.f32412f.e();
        return Tasks.whenAllComplete((Task<?>[]) new Task[]{taskE, taskE2}).continueWithTask(this.f32410d, new Continuation() { // from class: yc.e
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f78971a.r(taskE, taskE2, task);
            }
        });
    }

    public Task g() {
        return this.f32414h.i().onSuccessTask(FirebaseExecutors.a(), new SuccessContinuation() { // from class: yc.f
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return com.google.firebase.remoteconfig.a.s((ConfigFetchHandler.a) obj);
            }
        });
    }

    public Task h() {
        return g().onSuccessTask(this.f32410d, new SuccessContinuation() { // from class: yc.d
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return this.f78970a.t((Void) obj);
            }
        });
    }

    public Map i() {
        return this.f32415i.d();
    }

    public i j() {
        return this.f32416j.c();
    }

    public Set m(String str) {
        return this.f32415i.g(str);
    }

    public long n(String str) {
        return this.f32415i.i(str);
    }

    zc.e o() {
        return this.f32419m;
    }

    public String p(String str) {
        return this.f32415i.k(str);
    }

    public Task w(final j jVar) {
        return Tasks.call(this.f32410d, new Callable() { // from class: yc.h
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f78975a.u(jVar);
            }
        });
    }

    void x(boolean z10) {
        this.f32418l.b(z10);
    }

    void y() {
        this.f32412f.e();
        this.f32413g.e();
        this.f32411e.e();
    }
}
