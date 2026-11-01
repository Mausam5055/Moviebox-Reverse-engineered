package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.util.Base64OutputStream;
import androidx.core.os.t;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import gc.h;
import gc.p;
import java.io.ByteArrayOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.zip.GZIPOutputStream;
import mb.b0;
import mb.r;
import mb.u;
import org.json.JSONArray;
import org.json.JSONObject;
import xc.i;

/* JADX INFO: loaded from: classes4.dex */
public class a implements h, HeartBeatInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ic.b f31859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f31860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ic.b f31861c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set f31862d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f31863e;

    private a(final Context context, final String str, Set set, ic.b bVar, Executor executor) {
        this(new u(new ic.b() { // from class: gc.c
            @Override // ic.b
            public final Object get() {
                return com.google.firebase.heartbeatinfo.a.j(context, str);
            }
        }), set, executor, bVar, context);
    }

    a(ic.b bVar, Set set, Executor executor, ic.b bVar2, Context context) {
        this.f31859a = bVar;
        this.f31862d = set;
        this.f31863e = executor;
        this.f31861c = bVar2;
        this.f31860b = context;
    }

    public static mb.c g() {
        final b0 b0VarA = b0.a(lb.a.class, Executor.class);
        return mb.c.d(a.class, h.class, HeartBeatInfo.class).b(r.k(Context.class)).b(r.k(com.google.firebase.f.class)).b(r.o(gc.f.class)).b(r.m(i.class)).b(r.l(b0VarA)).f(new mb.h() { // from class: gc.b
            @Override // mb.h
            public final Object a(mb.e eVar) {
                return com.google.firebase.heartbeatinfo.a.h(b0VarA, eVar);
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a h(b0 b0Var, mb.e eVar) {
        return new a((Context) eVar.a(Context.class), ((com.google.firebase.f) eVar.a(com.google.firebase.f.class)).o(), eVar.d(gc.f.class), eVar.f(i.class), (Executor) eVar.c(b0Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String i() {
        String string;
        synchronized (this) {
            try {
                f fVar = (f) this.f31859a.get();
                List listG = fVar.g();
                fVar.f();
                JSONArray jSONArray = new JSONArray();
                for (int i11 = 0; i11 < listG.size(); i11++) {
                    p pVar = (p) listG.get(i11);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("agent", pVar.c());
                    jSONObject.put("dates", new JSONArray((Collection) pVar.b()));
                    jSONArray.put(jSONObject);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("heartbeats", jSONArray);
                jSONObject2.put("version", "2");
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 11);
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                    try {
                        gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                        gZIPOutputStream.close();
                        base64OutputStream.close();
                        string = byteArrayOutputStream.toString("UTF-8");
                    } catch (Throwable th2) {
                        try {
                            gZIPOutputStream.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                } catch (Throwable th4) {
                    try {
                        base64OutputStream.close();
                    } catch (Throwable th5) {
                        th4.addSuppressed(th5);
                    }
                    throw th4;
                }
            } catch (Throwable th6) {
                throw th6;
            }
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f j(Context context, String str) {
        return new f(context, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void k() {
        synchronized (this) {
            ((f) this.f31859a.get()).s(System.currentTimeMillis(), ((i) this.f31861c.get()).getUserAgent());
        }
        return null;
    }

    @Override // gc.h
    public Task a() {
        return !t.a(this.f31860b) ? Tasks.forResult("") : Tasks.call(this.f31863e, new Callable() { // from class: gc.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f63527a.i();
            }
        });
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatInfo
    public synchronized HeartBeatInfo.HeartBeat b(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        f fVar = (f) this.f31859a.get();
        if (!fVar.q(jCurrentTimeMillis)) {
            return HeartBeatInfo.HeartBeat.NONE;
        }
        fVar.o();
        return HeartBeatInfo.HeartBeat.GLOBAL;
    }

    public Task l() {
        if (this.f31862d.size() > 0 && t.a(this.f31860b)) {
            return Tasks.call(this.f31863e, new Callable() { // from class: gc.e
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f63528a.k();
                }
            });
        }
        return Tasks.forResult(null);
    }
}
