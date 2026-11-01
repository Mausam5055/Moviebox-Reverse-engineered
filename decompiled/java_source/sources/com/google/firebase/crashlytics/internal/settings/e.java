package com.google.firebase.crashlytics.internal.settings;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.DeliveryMechanism;
import com.google.firebase.crashlytics.internal.common.c0;
import com.google.firebase.crashlytics.internal.common.d0;
import com.google.firebase.crashlytics.internal.common.g0;
import com.google.firebase.crashlytics.internal.common.x0;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class e implements wb.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f31751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f31752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f31753c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c0 f31754d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final wb.a f31755e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i f31756f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d0 f31757g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AtomicReference f31758h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final AtomicReference f31759i;

    class a implements SuccessContinuation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CrashlyticsWorkers f31760a;

        a(CrashlyticsWorkers crashlyticsWorkers) {
            this.f31760a = crashlyticsWorkers;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ JSONObject b() {
            return e.this.f31756f.a(e.this.f31752b, true);
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Task then(Void r11) throws Throwable {
            JSONObject jSONObject = (JSONObject) this.f31760a.f31300d.c().submit(new Callable() { // from class: com.google.firebase.crashlytics.internal.settings.d
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f31750a.b();
                }
            }).get();
            if (jSONObject != null) {
                c cVarB = e.this.f31753c.b(jSONObject);
                e.this.f31755e.c(cVarB.f31739c, jSONObject);
                e.this.q(jSONObject, "Loaded settings: ");
                e eVar = e.this;
                eVar.r(eVar.f31752b.f31768f);
                e.this.f31758h.set(cVarB);
                ((TaskCompletionSource) e.this.f31759i.get()).trySetResult(cVarB);
            }
            return Tasks.forResult(null);
        }
    }

    e(Context context, h hVar, c0 c0Var, f fVar, wb.a aVar, i iVar, d0 d0Var) {
        AtomicReference atomicReference = new AtomicReference();
        this.f31758h = atomicReference;
        this.f31759i = new AtomicReference(new TaskCompletionSource());
        this.f31751a = context;
        this.f31752b = hVar;
        this.f31754d = c0Var;
        this.f31753c = fVar;
        this.f31755e = aVar;
        this.f31756f = iVar;
        this.f31757g = d0Var;
        atomicReference.set(com.google.firebase.crashlytics.internal.settings.a.b(c0Var));
    }

    public static e l(Context context, String str, g0 g0Var, ub.b bVar, String str2, String str3, vb.g gVar, d0 d0Var) {
        String strG = g0Var.g();
        x0 x0Var = new x0();
        return new e(context, new h(str, g0Var.h(), g0Var.i(), g0Var.j(), g0Var, CommonUtils.h(CommonUtils.m(context), str, str3, str2), str3, str2, DeliveryMechanism.determineFrom(strG).getId()), x0Var, new f(x0Var), new wb.a(gVar), new b(String.format(Locale.US, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings", str), bVar), d0Var);
    }

    private c m(SettingsCacheBehavior settingsCacheBehavior) throws Throwable {
        c cVar = null;
        try {
            if (!SettingsCacheBehavior.SKIP_CACHE_LOOKUP.equals(settingsCacheBehavior)) {
                JSONObject jSONObjectB = this.f31755e.b();
                if (jSONObjectB != null) {
                    c cVarB = this.f31753c.b(jSONObjectB);
                    if (cVarB != null) {
                        q(jSONObjectB, "Loaded cached settings: ");
                        long jA = this.f31754d.a();
                        if (SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION.equals(settingsCacheBehavior) || !cVarB.a(jA)) {
                            try {
                                ob.g.f().i("Returning cached settings.");
                                cVar = cVarB;
                            } catch (Exception e11) {
                                e = e11;
                                cVar = cVarB;
                                ob.g.f().e("Failed to get cached settings", e);
                            }
                        } else {
                            ob.g.f().i("Cached settings have expired.");
                        }
                    } else {
                        ob.g.f().e("Failed to parse cached settings data.", null);
                    }
                } else {
                    ob.g.f().b("No cached settings data found.");
                }
            }
        } catch (Exception e12) {
            e = e12;
        }
        return cVar;
    }

    private String n() {
        return CommonUtils.q(this.f31751a).getString("existing_instance_identifier", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(JSONObject jSONObject, String str) {
        ob.g.f().b(str + jSONObject.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r(String str) {
        SharedPreferences.Editor editorEdit = CommonUtils.q(this.f31751a).edit();
        editorEdit.putString("existing_instance_identifier", str);
        editorEdit.apply();
        return true;
    }

    @Override // wb.b
    public Task a() {
        return ((TaskCompletionSource) this.f31759i.get()).getTask();
    }

    @Override // wb.b
    public c b() {
        return (c) this.f31758h.get();
    }

    boolean k() {
        return !n().equals(this.f31752b.f31768f);
    }

    public Task o(CrashlyticsWorkers crashlyticsWorkers) {
        return p(SettingsCacheBehavior.USE_CACHE, crashlyticsWorkers);
    }

    public Task p(SettingsCacheBehavior settingsCacheBehavior, CrashlyticsWorkers crashlyticsWorkers) throws Throwable {
        c cVarM;
        if (!k() && (cVarM = m(settingsCacheBehavior)) != null) {
            this.f31758h.set(cVarM);
            ((TaskCompletionSource) this.f31759i.get()).trySetResult(cVarM);
            return Tasks.forResult(null);
        }
        c cVarM2 = m(SettingsCacheBehavior.IGNORE_CACHE_EXPIRATION);
        if (cVarM2 != null) {
            this.f31758h.set(cVarM2);
            ((TaskCompletionSource) this.f31759i.get()).trySetResult(cVarM2);
        }
        return this.f31757g.k().onSuccessTask(crashlyticsWorkers.f31297a, new a(crashlyticsWorkers));
    }
}
