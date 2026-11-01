package com.google.firebase.remoteconfig.internal;

import android.text.format.DateUtils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class ConfigFetchHandler {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final long f32441j = TimeUnit.HOURS.toSeconds(12);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final int[] f32442k = {2, 4, 8, 16, 32, 64, 128, 256};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final jc.e f32443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ic.b f32444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f32445c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Clock f32446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Random f32447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f32448f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ConfigFetchHttpClient f32449g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final n f32450h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Map f32451i;

    public enum FetchType {
        BASE("BASE"),
        REALTIME("REALTIME");

        private final String value;

        FetchType(String str) {
            this.value = str;
        }

        String getValue() {
            return this.value;
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Date f32452a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f32453b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final f f32454c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f32455d;

        private a(Date date, int i11, f fVar, String str) {
            this.f32452a = date;
            this.f32453b = i11;
            this.f32454c = fVar;
            this.f32455d = str;
        }

        public static a a(Date date, f fVar) {
            return new a(date, 1, fVar, null);
        }

        public static a b(f fVar, String str) {
            return new a(fVar.h(), 0, fVar, str);
        }

        public static a c(Date date) {
            return new a(date, 2, null, null);
        }

        public f d() {
            return this.f32454c;
        }

        String e() {
            return this.f32455d;
        }

        int f() {
            return this.f32453b;
        }
    }

    public ConfigFetchHandler(jc.e eVar, ic.b bVar, Executor executor, Clock clock, Random random, e eVar2, ConfigFetchHttpClient configFetchHttpClient, n nVar, Map map) {
        this.f32443a = eVar;
        this.f32444b = bVar;
        this.f32445c = executor;
        this.f32446d = clock;
        this.f32447e = random;
        this.f32448f = eVar2;
        this.f32449g = configFetchHttpClient;
        this.f32450h = nVar;
        this.f32451i = map;
    }

    private n.a A(int i11, Date date) {
        if (t(i11)) {
            B(date);
        }
        return this.f32450h.a();
    }

    private void B(Date date) {
        int iB = this.f32450h.a().b() + 1;
        this.f32450h.k(iB, new Date(date.getTime() + q(iB)));
    }

    private void C(Task task, Date date) {
        if (task.isSuccessful()) {
            this.f32450h.q(date);
            return;
        }
        Exception exception = task.getException();
        if (exception == null) {
            return;
        }
        if (exception instanceof FirebaseRemoteConfigFetchThrottledException) {
            this.f32450h.r();
        } else {
            this.f32450h.p();
        }
    }

    private boolean f(long j11, Date date) {
        Date dateE = this.f32450h.e();
        if (dateE.equals(n.f32537e)) {
            return false;
        }
        return date.before(new Date(dateE.getTime() + TimeUnit.SECONDS.toMillis(j11)));
    }

    private FirebaseRemoteConfigServerException g(FirebaseRemoteConfigServerException firebaseRemoteConfigServerException) throws FirebaseRemoteConfigClientException {
        String str;
        int httpStatusCode = firebaseRemoteConfigServerException.getHttpStatusCode();
        if (httpStatusCode == 401) {
            str = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
        } else if (httpStatusCode == 403) {
            str = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
        } else {
            if (httpStatusCode == 429) {
                throw new FirebaseRemoteConfigClientException("The throttled response from the server was not handled correctly by the FRC SDK.");
            }
            if (httpStatusCode != 500) {
                switch (httpStatusCode) {
                    case 502:
                    case 503:
                    case 504:
                        str = "The server is unavailable. Please try again later.";
                        break;
                    default:
                        str = "The server returned an unexpected error.";
                        break;
                }
            } else {
                str = "There was an internal server error.";
            }
        }
        return new FirebaseRemoteConfigServerException(firebaseRemoteConfigServerException.getHttpStatusCode(), "Fetch failed: " + str, firebaseRemoteConfigServerException);
    }

    private String h(long j11) {
        return String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(j11)));
    }

    private a k(String str, String str2, Date date, Map map) throws FirebaseRemoteConfigException {
        try {
            a aVarFetch = this.f32449g.fetch(this.f32449g.d(), str, str2, s(), this.f32450h.d(), map, p(), date);
            if (aVarFetch.d() != null) {
                this.f32450h.n(aVarFetch.d().k());
            }
            if (aVarFetch.e() != null) {
                this.f32450h.m(aVarFetch.e());
            }
            this.f32450h.i();
            return aVarFetch;
        } catch (FirebaseRemoteConfigServerException e11) {
            n.a aVarA = A(e11.getHttpStatusCode(), date);
            if (z(aVarA, e11.getHttpStatusCode())) {
                throw new FirebaseRemoteConfigFetchThrottledException(aVarA.a().getTime());
            }
            throw g(e11);
        }
    }

    private Task l(String str, String str2, Date date, Map map) {
        try {
            final a aVarK = k(str, str2, date, map);
            return aVarK.f() != 0 ? Tasks.forResult(aVarK) : this.f32448f.k(aVarK.d()).onSuccessTask(this.f32445c, new SuccessContinuation() { // from class: com.google.firebase.remoteconfig.internal.k
                @Override // com.google.android.gms.tasks.SuccessContinuation
                public final Task then(Object obj) {
                    return ConfigFetchHandler.v(aVarK, (f) obj);
                }
            });
        } catch (FirebaseRemoteConfigException e11) {
            return Tasks.forException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public Task u(Task task, long j11, final Map map) {
        Task taskContinueWithTask;
        final Date date = new Date(this.f32446d.currentTimeMillis());
        if (task.isSuccessful() && f(j11, date)) {
            return Tasks.forResult(a.c(date));
        }
        Date dateO = o(date);
        if (dateO != null) {
            taskContinueWithTask = Tasks.forException(new FirebaseRemoteConfigFetchThrottledException(h(dateO.getTime() - date.getTime()), dateO.getTime()));
        } else {
            final Task id2 = this.f32443a.getId();
            final Task taskA = this.f32443a.a(false);
            taskContinueWithTask = Tasks.whenAllComplete((Task<?>[]) new Task[]{id2, taskA}).continueWithTask(this.f32445c, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.i
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task2) {
                    return this.f32519a.w(id2, taskA, date, map, task2);
                }
            });
        }
        return taskContinueWithTask.continueWithTask(this.f32445c, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.j
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return this.f32524a.x(date, task2);
            }
        });
    }

    private Date o(Date date) {
        Date dateA = this.f32450h.a().a();
        if (date.before(dateA)) {
            return dateA;
        }
        return null;
    }

    private Long p() {
        kb.a aVar = (kb.a) this.f32444b.get();
        if (aVar == null) {
            return null;
        }
        return (Long) aVar.e(true).get("_fot");
    }

    private long q(int i11) {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        int[] iArr = f32442k;
        long millis = timeUnit.toMillis(iArr[Math.min(i11, iArr.length) - 1]);
        return (millis / 2) + ((long) this.f32447e.nextInt((int) millis));
    }

    private Map s() {
        HashMap map = new HashMap();
        kb.a aVar = (kb.a) this.f32444b.get();
        if (aVar == null) {
            return map;
        }
        for (Map.Entry entry : aVar.e(false).entrySet()) {
            map.put((String) entry.getKey(), entry.getValue().toString());
        }
        return map;
    }

    private boolean t(int i11) {
        return i11 == 429 || i11 == 502 || i11 == 503 || i11 == 504;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task v(a aVar, f fVar) {
        return Tasks.forResult(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task w(Task task, Task task2, Date date, Map map, Task task3) {
        if (task.isSuccessful()) {
            return !task2.isSuccessful() ? Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for fetch.", task2.getException())) : l((String) task.getResult(), ((com.google.firebase.installations.f) task2.getResult()).b(), date, map);
        }
        return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation ID for fetch.", task.getException()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task x(Date date, Task task) {
        C(task, date);
        return task;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task y(Map map, Task task) {
        return u(task, 0L, map);
    }

    private boolean z(n.a aVar, int i11) {
        return aVar.b() > 1 || i11 == 429;
    }

    public Task i() {
        return j(this.f32450h.g());
    }

    public Task j(final long j11) {
        final HashMap map = new HashMap(this.f32451i);
        map.put("X-Firebase-RC-Fetch-Type", FetchType.BASE.getValue() + "/1");
        return this.f32448f.e().continueWithTask(this.f32445c, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.g
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f32514a.u(j11, map, task);
            }
        });
    }

    public Task n(FetchType fetchType, int i11) {
        final HashMap map = new HashMap(this.f32451i);
        map.put("X-Firebase-RC-Fetch-Type", fetchType.getValue() + "/" + i11);
        return this.f32448f.e().continueWithTask(this.f32445c, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.h
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f32517a.y(map, task);
            }
        });
    }

    public long r() {
        return this.f32450h.f();
    }
}
