package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import mb.u;

/* JADX INFO: loaded from: classes4.dex */
public class c implements jc.e {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Object f31884m = new Object();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final ThreadFactory f31885n = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.firebase.f f31886a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.firebase.installations.remote.c f31887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PersistedInstallation f31888c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h f31889d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final u f31890e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final jc.g f31891f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f31892g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ExecutorService f31893h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Executor f31894i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f31895j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Set f31896k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List f31897l;

    class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f31898a = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f31898a.getAndIncrement())));
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f31899a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f31900b;

        static {
            int[] iArr = new int[TokenResult.ResponseCode.values().length];
            f31900b = iArr;
            try {
                iArr[TokenResult.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31900b[TokenResult.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31900b[TokenResult.ResponseCode.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[InstallationResponse.ResponseCode.values().length];
            f31899a = iArr2;
            try {
                iArr2[InstallationResponse.ResponseCode.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f31899a[InstallationResponse.ResponseCode.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    c(final com.google.firebase.f fVar, ic.b bVar, ExecutorService executorService, Executor executor) {
        this(executorService, executor, fVar, new com.google.firebase.installations.remote.c(fVar.k(), bVar), new PersistedInstallation(fVar), h.c(), new u(new ic.b() { // from class: jc.a
            @Override // ic.b
            public final Object get() {
                return com.google.firebase.installations.c.y(fVar);
            }
        }), new jc.g());
    }

    c(ExecutorService executorService, Executor executor, com.google.firebase.f fVar, com.google.firebase.installations.remote.c cVar, PersistedInstallation persistedInstallation, h hVar, u uVar, jc.g gVar) {
        this.f31892g = new Object();
        this.f31896k = new HashSet();
        this.f31897l = new ArrayList();
        this.f31886a = fVar;
        this.f31887b = cVar;
        this.f31888c = persistedInstallation;
        this.f31889d = hVar;
        this.f31890e = uVar;
        this.f31891f = gVar;
        this.f31893h = executorService;
        this.f31894i = executor;
    }

    private String A(com.google.firebase.installations.local.b bVar) {
        if ((!this.f31886a.m().equals("CHIME_ANDROID_SDK") && !this.f31886a.u()) || !bVar.m()) {
            return this.f31891f.a();
        }
        String strF = o().f();
        return TextUtils.isEmpty(strF) ? this.f31891f.a() : strF;
    }

    private com.google.firebase.installations.local.b B(com.google.firebase.installations.local.b bVar) throws FirebaseInstallationsException {
        InstallationResponse installationResponseD = this.f31887b.d(l(), bVar.d(), t(), m(), (bVar.d() == null || bVar.d().length() != 11) ? null : o().i());
        int i11 = b.f31899a[installationResponseD.e().ordinal()];
        if (i11 == 1) {
            return bVar.s(installationResponseD.c(), installationResponseD.d(), this.f31889d.b(), installationResponseD.b().c(), installationResponseD.b().d());
        }
        if (i11 == 2) {
            return bVar.q("BAD CONFIG");
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
    }

    private void C(Exception exc) {
        synchronized (this.f31892g) {
            try {
                Iterator it = this.f31897l.iterator();
                while (it.hasNext()) {
                    if (((g) it.next()).a(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void D(com.google.firebase.installations.local.b bVar) {
        synchronized (this.f31892g) {
            try {
                Iterator it = this.f31897l.iterator();
                while (it.hasNext()) {
                    if (((g) it.next()).b(bVar)) {
                        it.remove();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private synchronized void E(String str) {
        this.f31895j = str;
    }

    private synchronized void F(com.google.firebase.installations.local.b bVar, com.google.firebase.installations.local.b bVar2) {
        if (this.f31896k.size() != 0 && !TextUtils.equals(bVar.d(), bVar2.d())) {
            Iterator it = this.f31896k.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                bVar2.d();
                throw null;
            }
        }
    }

    private Task f() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        h(new d(this.f31889d, taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private Task g() {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        h(new e(taskCompletionSource));
        return taskCompletionSource.getTask();
    }

    private void h(g gVar) {
        synchronized (this.f31892g) {
            this.f31897l.add(gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void v(boolean z10) {
        com.google.firebase.installations.local.b bVarB;
        com.google.firebase.installations.local.b bVarR = r();
        try {
            if (bVarR.i() || bVarR.l()) {
                bVarB = B(bVarR);
            } else {
                if (!z10 && !this.f31889d.f(bVarR)) {
                    return;
                }
                bVarB = k(bVarR);
            }
            u(bVarB);
            F(bVarR, bVarB);
            if (bVarB.k()) {
                E(bVarB.d());
            }
            if (bVarB.i()) {
                C(new FirebaseInstallationsException(FirebaseInstallationsException.Status.BAD_CONFIG));
            } else if (bVarB.j()) {
                C(new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."));
            } else {
                D(bVarB);
            }
        } catch (FirebaseInstallationsException e11) {
            C(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public final void x(final boolean z10) {
        com.google.firebase.installations.local.b bVarS = s();
        if (z10) {
            bVarS = bVarS.p();
        }
        D(bVarS);
        this.f31894i.execute(new Runnable() { // from class: jc.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f65988a.v(z10);
            }
        });
    }

    private com.google.firebase.installations.local.b k(com.google.firebase.installations.local.b bVar) throws FirebaseInstallationsException {
        TokenResult tokenResultE = this.f31887b.e(l(), bVar.d(), t(), bVar.f());
        int i11 = b.f31900b[tokenResultE.b().ordinal()];
        if (i11 == 1) {
            return bVar.o(tokenResultE.c(), tokenResultE.d(), this.f31889d.b());
        }
        if (i11 == 2) {
            return bVar.q("BAD CONFIG");
        }
        if (i11 != 3) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.", FirebaseInstallationsException.Status.UNAVAILABLE);
        }
        E(null);
        return bVar.r();
    }

    private synchronized String n() {
        return this.f31895j;
    }

    private kc.a o() {
        return (kc.a) this.f31890e.get();
    }

    public static c p() {
        return q(com.google.firebase.f.l());
    }

    public static c q(com.google.firebase.f fVar) {
        Preconditions.checkArgument(fVar != null, "Null is not a valid value of FirebaseApp.");
        return (c) fVar.j(jc.e.class);
    }

    private com.google.firebase.installations.local.b r() {
        com.google.firebase.installations.local.b bVarD;
        synchronized (f31884m) {
            try {
                com.google.firebase.installations.b bVarA = com.google.firebase.installations.b.a(this.f31886a.k(), "generatefid.lock");
                try {
                    bVarD = this.f31888c.d();
                    if (bVarA != null) {
                        bVarA.b();
                    }
                } catch (Throwable th2) {
                    if (bVarA != null) {
                        bVarA.b();
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return bVarD;
    }

    private com.google.firebase.installations.local.b s() {
        com.google.firebase.installations.local.b bVarD;
        synchronized (f31884m) {
            try {
                com.google.firebase.installations.b bVarA = com.google.firebase.installations.b.a(this.f31886a.k(), "generatefid.lock");
                try {
                    bVarD = this.f31888c.d();
                    if (bVarD.j()) {
                        bVarD = this.f31888c.b(bVarD.t(A(bVarD)));
                    }
                    if (bVarA != null) {
                        bVarA.b();
                    }
                } catch (Throwable th2) {
                    if (bVarA != null) {
                        bVarA.b();
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return bVarD;
    }

    private void u(com.google.firebase.installations.local.b bVar) {
        synchronized (f31884m) {
            try {
                com.google.firebase.installations.b bVarA = com.google.firebase.installations.b.a(this.f31886a.k(), "generatefid.lock");
                try {
                    this.f31888c.b(bVar);
                    if (bVarA != null) {
                        bVarA.b();
                    }
                } catch (Throwable th2) {
                    if (bVarA != null) {
                        bVarA.b();
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w() {
        x(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ kc.a y(com.google.firebase.f fVar) {
        return new kc.a(fVar);
    }

    private void z() {
        Preconditions.checkNotEmpty(m(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkNotEmpty(t(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkNotEmpty(l(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkArgument(h.h(m()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        Preconditions.checkArgument(h.g(l()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    @Override // jc.e
    public Task a(final boolean z10) {
        z();
        Task taskF = f();
        this.f31893h.execute(new Runnable() { // from class: jc.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f65986a.x(z10);
            }
        });
        return taskF;
    }

    @Override // jc.e
    public Task getId() {
        z();
        String strN = n();
        if (strN != null) {
            return Tasks.forResult(strN);
        }
        Task taskG = g();
        this.f31893h.execute(new Runnable() { // from class: jc.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f65985a.w();
            }
        });
        return taskG;
    }

    String l() {
        return this.f31886a.n().b();
    }

    String m() {
        return this.f31886a.n().c();
    }

    String t() {
        return this.f31886a.n().e();
    }
}
