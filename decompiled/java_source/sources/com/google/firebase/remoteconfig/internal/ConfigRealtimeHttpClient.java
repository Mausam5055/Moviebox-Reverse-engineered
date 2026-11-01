package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class ConfigRealtimeHttpClient {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    static final int[] f32464q = {2, 4, 8, 16, 32, 64, 128, 256};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Pattern f32465r = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f32466a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f32468c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ScheduledExecutorService f32472g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ConfigFetchHandler f32473h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.google.firebase.f f32474i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final jc.e f32475j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    e f32476k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Context f32477l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final String f32478m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final n f32481p;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f32471f = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f32467b = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Random f32479n = new Random();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Clock f32480o = DefaultClock.getInstance();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f32469d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f32470e = false;

    class a implements yc.c {
        a() {
        }

        @Override // yc.c
        public void a(FirebaseRemoteConfigException firebaseRemoteConfigException) {
            ConfigRealtimeHttpClient.this.j();
            ConfigRealtimeHttpClient.this.u(firebaseRemoteConfigException);
        }

        @Override // yc.c
        public void b(yc.b bVar) {
        }
    }

    public ConfigRealtimeHttpClient(com.google.firebase.f fVar, jc.e eVar, ConfigFetchHandler configFetchHandler, e eVar2, Context context, String str, Set set, n nVar, ScheduledExecutorService scheduledExecutorService) {
        this.f32466a = set;
        this.f32472g = scheduledExecutorService;
        this.f32468c = Math.max(8 - nVar.h().b(), 1);
        this.f32474i = fVar;
        this.f32473h = configFetchHandler;
        this.f32475j = eVar;
        this.f32476k = eVar2;
        this.f32477l = context;
        this.f32478m = str;
        this.f32481p = nVar;
    }

    private void D(Date date) {
        int iB = this.f32481p.h().b() + 1;
        this.f32481p.o(iB, new Date(date.getTime() + m(iB)));
    }

    private synchronized boolean f() {
        return (this.f32466a.isEmpty() || this.f32467b || this.f32469d || this.f32470e) ? false : true;
    }

    private JSONObject i(String str) {
        HashMap map = new HashMap();
        map.put("project", k(this.f32474i.n().c()));
        map.put("namespace", this.f32478m);
        map.put("lastKnownVersionNumber", Long.toString(this.f32473h.r()));
        map.put("appId", this.f32474i.n().c());
        map.put("sdkVersion", "22.0.1");
        map.put(TmcConstants.EXTRA_APP_INSTANCE_ID, str);
        return new JSONObject(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void j() {
        this.f32469d = true;
    }

    private static String k(String str) {
        Matcher matcher = f32465r.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    private String l() {
        try {
            Context context = this.f32477l;
            byte[] packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, context.getPackageName());
            if (packageCertificateHashBytes != null) {
                return Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
            }
            Log.e("FirebaseRemoteConfig", "Could not get fingerprint hash for package: " + this.f32477l.getPackageName());
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("No such package: ");
            sb2.append(this.f32477l.getPackageName());
            return null;
        }
    }

    private long m(int i11) {
        int[] iArr = f32464q;
        int length = iArr.length;
        if (i11 >= length) {
            i11 = length;
        }
        long millis = TimeUnit.MINUTES.toMillis(iArr[i11 - 1]);
        return (millis / 2) + ((long) this.f32479n.nextInt((int) millis));
    }

    private String n(String str) {
        return String.format("https://firebaseremoteconfigrealtime.googleapis.com/v1/projects/%s/namespaces/%s:streamFetchInvalidations", k(this.f32474i.n().c()), str);
    }

    private URL o() {
        try {
            return new URL(n(this.f32478m));
        } catch (MalformedURLException unused) {
            Log.e("FirebaseRemoteConfig", "URL is malformed");
            return null;
        }
    }

    private boolean p(int i11) {
        return i11 == 408 || i11 == 429 || i11 == 502 || i11 == 503 || i11 == 504;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x0071  */
    public /* synthetic */ Task q(Task task, Task task2) throws Throwable {
        Integer numValueOf;
        Throwable th2;
        HttpURLConnection httpURLConnection;
        FirebaseRemoteConfigServerException firebaseRemoteConfigServerException;
        try {
            if (!task.isSuccessful()) {
                throw new IOException(task.getException());
            }
            y(true);
            httpURLConnection = (HttpURLConnection) task.getResult();
            try {
                int responseCode = httpURLConnection.getResponseCode();
                numValueOf = Integer.valueOf(responseCode);
                if (responseCode == 200) {
                    try {
                        v();
                        this.f32481p.j();
                        B(httpURLConnection).i();
                    } catch (IOException unused) {
                        g(httpURLConnection);
                        y(false);
                        boolean z10 = numValueOf == null || p(numValueOf.intValue());
                        if (z10) {
                            D(new Date(this.f32480o.currentTimeMillis()));
                        }
                        if (z10 || numValueOf.intValue() == 200) {
                            w();
                        } else {
                            String strT = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", numValueOf);
                            if (numValueOf.intValue() == 403) {
                                strT = t(httpURLConnection.getErrorStream());
                            }
                            firebaseRemoteConfigServerException = new FirebaseRemoteConfigServerException(numValueOf.intValue(), strT, FirebaseRemoteConfigException.Code.CONFIG_UPDATE_STREAM_ERROR);
                        }
                        return Tasks.forResult(null);
                    } catch (Throwable th3) {
                        th2 = th3;
                        g(httpURLConnection);
                        y(false);
                        boolean z11 = numValueOf == null || p(numValueOf.intValue());
                        if (z11) {
                            D(new Date(this.f32480o.currentTimeMillis()));
                        }
                        if (z11 || numValueOf.intValue() == 200) {
                            w();
                        } else {
                            String strT2 = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", numValueOf);
                            if (numValueOf.intValue() == 403) {
                                strT2 = t(httpURLConnection.getErrorStream());
                            }
                            u(new FirebaseRemoteConfigServerException(numValueOf.intValue(), strT2, FirebaseRemoteConfigException.Code.CONFIG_UPDATE_STREAM_ERROR));
                        }
                        throw th2;
                    }
                }
                g(httpURLConnection);
                y(false);
                boolean zP = p(responseCode);
                if (zP) {
                    D(new Date(this.f32480o.currentTimeMillis()));
                }
                if (zP || responseCode == 200) {
                    w();
                } else {
                    String strT3 = String.format("Unable to connect to the server. Try again in a few minutes. HTTP status code: %d", numValueOf);
                    if (responseCode == 403) {
                        strT3 = t(httpURLConnection.getErrorStream());
                    }
                    firebaseRemoteConfigServerException = new FirebaseRemoteConfigServerException(responseCode, strT3, FirebaseRemoteConfigException.Code.CONFIG_UPDATE_STREAM_ERROR);
                    u(firebaseRemoteConfigServerException);
                }
            } catch (IOException unused2) {
                numValueOf = null;
            } catch (Throwable th4) {
                numValueOf = null;
                th2 = th4;
            }
            return Tasks.forResult(null);
        } catch (IOException unused3) {
            httpURLConnection = null;
            numValueOf = null;
        } catch (Throwable th5) {
            numValueOf = null;
            th2 = th5;
            httpURLConnection = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task r(Task task, Task task2, Task task3) {
        if (!task.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for config update listener connection.", task.getException()));
        }
        if (!task2.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation ID for config update listener connection.", task2.getException()));
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) o().openConnection();
            A(httpURLConnection, (String) task2.getResult(), ((com.google.firebase.installations.f) task.getResult()).b());
            return Tasks.forResult(httpURLConnection);
        } catch (IOException e11) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Failed to open HTTP stream connection", e11));
        }
    }

    private synchronized void s(long j11) {
        try {
            if (f()) {
                int i11 = this.f32468c;
                if (i11 > 0) {
                    this.f32468c = i11 - 1;
                    this.f32472g.schedule(new Runnable() { // from class: com.google.firebase.remoteconfig.internal.ConfigRealtimeHttpClient.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ConfigRealtimeHttpClient.this.e();
                        }
                    }, j11, TimeUnit.MILLISECONDS);
                } else if (!this.f32470e) {
                    u(new FirebaseRemoteConfigClientException("Unable to connect to the server. Check your connection and try again.", FirebaseRemoteConfigException.Code.CONFIG_UPDATE_STREAM_ERROR));
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private String t(InputStream inputStream) {
        StringBuilder sb2 = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb2.append(line);
            }
        } catch (IOException unused) {
            if (sb2.length() == 0) {
                return "Unable to connect to the server, access is forbidden. HTTP status code: 403";
            }
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void u(FirebaseRemoteConfigException firebaseRemoteConfigException) {
        Iterator it = this.f32466a.iterator();
        while (it.hasNext()) {
            ((yc.c) it.next()).a(firebaseRemoteConfigException);
        }
    }

    private synchronized void v() {
        this.f32468c = 8;
    }

    private void x(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setRequestProperty("X-Goog-Firebase-Installations-Auth", str);
        httpURLConnection.setRequestProperty("X-Goog-Api-Key", this.f32474i.n().b());
        httpURLConnection.setRequestProperty("X-Android-Package", this.f32477l.getPackageName());
        httpURLConnection.setRequestProperty("X-Android-Cert", l());
        httpURLConnection.setRequestProperty("X-Google-GFE-Can-Retry", "yes");
        httpURLConnection.setRequestProperty("X-Accept-Response-Streaming", "true");
        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
    }

    private synchronized void y(boolean z10) {
        this.f32467b = z10;
    }

    public void A(HttpURLConnection httpURLConnection, String str, String str2) throws IOException {
        httpURLConnection.setRequestMethod("POST");
        x(httpURLConnection, str2);
        byte[] bytes = i(str).toString().getBytes("utf-8");
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bytes);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    public synchronized ConfigAutoFetch B(HttpURLConnection httpURLConnection) {
        return new ConfigAutoFetch(httpURLConnection, this.f32473h, this.f32476k, this.f32466a, new a(), this.f32472g);
    }

    public void C() {
        s(0L);
    }

    public void e() {
        if (f()) {
            if (new Date(this.f32480o.currentTimeMillis()).before(this.f32481p.h().a())) {
                w();
            } else {
                final Task taskH = h();
                Tasks.whenAllComplete((Task<?>[]) new Task[]{taskH}).continueWith(this.f32472g, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.p
                    @Override // com.google.android.gms.tasks.Continuation
                    public final Object then(Task task) {
                        return this.f32557a.q(taskH, task);
                    }
                });
            }
        }
    }

    public void g(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            try {
                httpURLConnection.getInputStream().close();
                if (httpURLConnection.getErrorStream() != null) {
                    httpURLConnection.getErrorStream().close();
                }
            } catch (IOException unused) {
            }
        }
    }

    public Task h() {
        final Task taskA = this.f32475j.a(false);
        final Task id2 = this.f32475j.getId();
        return Tasks.whenAllComplete((Task<?>[]) new Task[]{taskA, id2}).continueWithTask(this.f32472g, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.q
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f32559a.r(taskA, id2, task);
            }
        });
    }

    public synchronized void w() {
        s(Math.max(0L, this.f32481p.h().a().getTime() - new Date(this.f32480o.currentTimeMillis()).getTime()));
    }

    void z(boolean z10) {
        this.f32470e = z10;
    }
}
