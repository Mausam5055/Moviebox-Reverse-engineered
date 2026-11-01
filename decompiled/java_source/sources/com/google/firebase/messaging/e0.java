package com.google.firebase.messaging;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.transsion.api.gateway.utils.EncoderUtil;
import com.transsion.api.gateway.utils.SafeStringUtils;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes4.dex */
class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.firebase.f f32067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j0 f32068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rpc f32069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ic.b f32070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ic.b f32071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final jc.e f32072f;

    e0(com.google.firebase.f fVar, j0 j0Var, Rpc rpc, ic.b bVar, ic.b bVar2, jc.e eVar) {
        this.f32067a = fVar;
        this.f32068b = j0Var;
        this.f32069c = rpc;
        this.f32070d = bVar;
        this.f32071e = bVar2;
        this.f32072f = eVar;
    }

    e0(com.google.firebase.f fVar, j0 j0Var, ic.b bVar, ic.b bVar2, jc.e eVar) {
        this(fVar, j0Var, new Rpc(fVar.k()), bVar, bVar2, eVar);
    }

    private static String b(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    private Task c(Task task) {
        return task.continueWith(new w3.m(), new Continuation() { // from class: com.google.firebase.messaging.d0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return this.f32064a.i(task2);
            }
        });
    }

    private String d() {
        try {
            return b(MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_1).digest(this.f32067a.m().getBytes()));
        } catch (NoSuchAlgorithmException unused) {
            return "[HASH-ERROR]";
        }
    }

    private String g(Bundle bundle) throws IOException {
        if (bundle == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String string = bundle.getString("registration_id");
        if (string != null) {
            return string;
        }
        String string2 = bundle.getString("unregistered");
        if (string2 != null) {
            return string2;
        }
        String string3 = bundle.getString("error");
        if ("RST".equals(string3)) {
            throw new IOException("INSTANCE_ID_RESET");
        }
        if (string3 != null) {
            throw new IOException(string3);
        }
        Log.w("FirebaseMessaging", "Unexpected response: " + bundle, new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    static boolean h(String str) {
        return "SERVICE_NOT_AVAILABLE".equals(str) || "INTERNAL_SERVER_ERROR".equals(str) || "InternalServerError".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String i(Task task) {
        return g((Bundle) task.getResult(IOException.class));
    }

    private void j(String str, String str2, Bundle bundle) {
        HeartBeatInfo.HeartBeat heartBeatB;
        bundle.putString("scope", str2);
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        bundle.putString("gmp_app_id", this.f32067a.n().c());
        bundle.putString("gmsv", Integer.toString(this.f32068b.d()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f32068b.a());
        bundle.putString("app_ver_name", this.f32068b.b());
        bundle.putString("firebase-app-name-hash", d());
        try {
            String strB = ((com.google.firebase.installations.f) Tasks.await(this.f32072f.a(false))).b();
            if (TextUtils.isEmpty(strB)) {
                Log.w("FirebaseMessaging", "FIS auth token is empty");
            } else {
                bundle.putString("Goog-Firebase-Installations-Auth", strB);
            }
        } catch (InterruptedException e11) {
            e = e11;
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);
        } catch (ExecutionException e12) {
            e = e12;
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);
        }
        bundle.putString(SafeStringUtils.SP_APPID, (String) Tasks.await(this.f32072f.getId()));
        bundle.putString("cliv", "fcm-25.0.1");
        HeartBeatInfo heartBeatInfo = (HeartBeatInfo) this.f32071e.get();
        xc.i iVar = (xc.i) this.f32070d.get();
        if (heartBeatInfo == null || iVar == null || (heartBeatB = heartBeatInfo.b("fire-iid")) == HeartBeatInfo.HeartBeat.NONE) {
            return;
        }
        bundle.putString("Firebase-Client-Log-Type", Integer.toString(heartBeatB.getCode()));
        bundle.putString("Firebase-Client", iVar.getUserAgent());
    }

    private Task l(String str, String str2, Bundle bundle) {
        try {
            j(str, str2, bundle);
            return this.f32069c.send(bundle);
        } catch (InterruptedException | ExecutionException e11) {
            return Tasks.forException(e11);
        }
    }

    Task e() {
        return this.f32069c.getProxiedNotificationData();
    }

    Task f() {
        return c(l(j0.c(this.f32067a), "*", new Bundle()));
    }

    Task k(boolean z10) {
        return this.f32069c.setRetainProxiedNotifications(z10);
    }

    Task m(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        return c(l(str, "/topics/" + str2, bundle));
    }

    Task n(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        bundle.putString(RequestParameters.SUBRESOURCE_DELETE, "1");
        return c(l(str, "/topics/" + str2, bundle));
    }
}
