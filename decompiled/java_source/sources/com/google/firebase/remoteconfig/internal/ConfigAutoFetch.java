package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class ConfigAutoFetch {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f32434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HttpURLConnection f32435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ConfigFetchHandler f32436c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f32437d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final yc.c f32438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ScheduledExecutorService f32439f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Random f32440g = new Random();

    public ConfigAutoFetch(HttpURLConnection httpURLConnection, ConfigFetchHandler configFetchHandler, e eVar, Set set, yc.c cVar, ScheduledExecutorService scheduledExecutorService) {
        this.f32435b = httpURLConnection;
        this.f32436c = configFetchHandler;
        this.f32437d = eVar;
        this.f32434a = set;
        this.f32438e = cVar;
        this.f32439f = scheduledExecutorService;
    }

    private void b(final int i11, final long j11) {
        if (i11 == 0) {
            k(new FirebaseRemoteConfigServerException("Unable to fetch the latest version of the template.", FirebaseRemoteConfigException.Code.CONFIG_UPDATE_NOT_FETCHED));
        } else {
            this.f32439f.schedule(new Runnable() { // from class: com.google.firebase.remoteconfig.internal.ConfigAutoFetch.1
                @Override // java.lang.Runnable
                public void run() {
                    ConfigAutoFetch.this.d(i11, j11);
                }
            }, this.f32440g.nextInt(4), TimeUnit.SECONDS);
        }
    }

    private synchronized void c(yc.b bVar) {
        Iterator it = this.f32434a.iterator();
        while (it.hasNext()) {
            ((yc.c) it.next()).b(bVar);
        }
    }

    private static Boolean e(ConfigFetchHandler.a aVar, long j11) {
        if (aVar.d() != null) {
            return Boolean.valueOf(aVar.d().k() >= j11);
        }
        return Boolean.valueOf(aVar.f() == 1);
    }

    private void f(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
        loop0: while (true) {
            String strJ = "";
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break loop0;
                }
                strJ = strJ + line;
                if (line.contains("}")) {
                    strJ = j(strJ);
                    if (strJ.isEmpty()) {
                    }
                }
            }
            try {
                JSONObject jSONObject = new JSONObject(strJ);
                if (jSONObject.has("featureDisabled") && jSONObject.getBoolean("featureDisabled")) {
                    this.f32438e.a(new FirebaseRemoteConfigServerException("The server is temporarily unavailable. Try again in a few minutes.", FirebaseRemoteConfigException.Code.CONFIG_UPDATE_UNAVAILABLE));
                    break;
                } else {
                    if (g()) {
                        break;
                    }
                    if (jSONObject.has("latestTemplateVersionNumber")) {
                        long jR = this.f32436c.r();
                        long j11 = jSONObject.getLong("latestTemplateVersionNumber");
                        if (j11 > jR) {
                            b(3, j11);
                        }
                    }
                }
            } catch (JSONException e11) {
                k(new FirebaseRemoteConfigClientException("Unable to parse config update message.", e11.getCause(), FirebaseRemoteConfigException.Code.CONFIG_UPDATE_MESSAGE_INVALID));
                Log.e("FirebaseRemoteConfig", "Unable to parse latest config update message.", e11);
            }
        }
        bufferedReader.close();
        inputStream.close();
    }

    private synchronized boolean g() {
        return this.f32434a.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task h(Task task, Task task2, long j11, int i11, Task task3) throws JSONException {
        if (!task.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Failed to auto-fetch config update.", task.getException()));
        }
        if (!task2.isSuccessful()) {
            return Tasks.forException(new FirebaseRemoteConfigClientException("Failed to get activated config for auto-fetch", task2.getException()));
        }
        ConfigFetchHandler.a aVar = (ConfigFetchHandler.a) task.getResult();
        f fVarA = (f) task2.getResult();
        if (!e(aVar, j11).booleanValue()) {
            b(i11, j11);
            return Tasks.forResult(null);
        }
        if (aVar.d() == null) {
            return Tasks.forResult(null);
        }
        if (fVarA == null) {
            fVarA = f.l().a();
        }
        Set setF = fVarA.f(aVar.d());
        if (setF.isEmpty()) {
            return Tasks.forResult(null);
        }
        c(yc.b.a(setF));
        return Tasks.forResult(null);
    }

    private String j(String str) {
        int iIndexOf = str.indexOf(Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
        int iLastIndexOf = str.lastIndexOf(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
        return (iIndexOf < 0 || iLastIndexOf < 0 || iIndexOf >= iLastIndexOf) ? "" : str.substring(iIndexOf, iLastIndexOf + 1);
    }

    private synchronized void k(FirebaseRemoteConfigException firebaseRemoteConfigException) {
        Iterator it = this.f32434a.iterator();
        while (it.hasNext()) {
            ((yc.c) it.next()).a(firebaseRemoteConfigException);
        }
    }

    public synchronized Task d(int i11, final long j11) {
        final int i12;
        final Task taskN;
        final Task taskE;
        i12 = i11 - 1;
        taskN = this.f32436c.n(ConfigFetchHandler.FetchType.REALTIME, 3 - i12);
        taskE = this.f32437d.e();
        return Tasks.whenAllComplete((Task<?>[]) new Task[]{taskN, taskE}).continueWithTask(this.f32439f, new Continuation() { // from class: com.google.firebase.remoteconfig.internal.a
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.f32483a.h(taskN, taskE, j11, i12, task);
            }
        });
    }

    public void i() {
        HttpURLConnection httpURLConnection = this.f32435b;
        if (httpURLConnection == null) {
            return;
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            f(inputStream);
            inputStream.close();
        } catch (IOException unused) {
        } finally {
            this.f32435b.disconnect();
        }
    }
}
