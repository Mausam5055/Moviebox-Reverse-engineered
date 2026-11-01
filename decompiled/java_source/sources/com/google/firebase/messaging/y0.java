package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final SharedPreferences f32183a;

    static class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final long f32184d = TimeUnit.DAYS.toMillis(7);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f32185a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f32186b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final long f32187c;

        private a(String str, String str2, long j11) {
            this.f32185a = str;
            this.f32186b = str2;
            this.f32187c = j11;
        }

        static String a(String str, String str2, long j11) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put(TmcStartParams.KEY_APP_VERSION, str2);
                jSONObject.put(CampaignEx.JSON_KEY_TIMESTAMP, j11);
                return jSONObject.toString();
            } catch (JSONException e11) {
                Log.w("FirebaseMessaging", "Failed to encode token: " + e11);
                return null;
            }
        }

        static a c(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith("{")) {
                return new a(str, null, 0L);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new a(jSONObject.getString("token"), jSONObject.getString(TmcStartParams.KEY_APP_VERSION), jSONObject.getLong(CampaignEx.JSON_KEY_TIMESTAMP));
            } catch (JSONException e11) {
                Log.w("FirebaseMessaging", "Failed to parse token: " + e11);
                return null;
            }
        }

        boolean b(String str) {
            return System.currentTimeMillis() > this.f32187c + f32184d || !str.equals(this.f32186b);
        }
    }

    public y0(Context context) {
        this.f32183a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        a(context, "com.google.android.gms.appid-no-backup");
    }

    private void a(Context context, String str) {
        File file = new File(androidx.core.content.b.getNoBackupFilesDir(context), str);
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || e()) {
                return;
            }
            c();
        } catch (IOException e11) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error creating file in no backup dir: ");
                sb2.append(e11.getMessage());
            }
        }
    }

    private String b(String str, String str2) {
        return str + "|T|" + str2 + "|*";
    }

    public synchronized void c() {
        this.f32183a.edit().clear().commit();
    }

    public synchronized a d(String str, String str2) {
        return a.c(this.f32183a.getString(b(str, str2), null));
    }

    public synchronized boolean e() {
        return this.f32183a.getAll().isEmpty();
    }

    public synchronized void f(String str, String str2, String str3, String str4) {
        String strA = a.a(str3, str4, System.currentTimeMillis());
        if (strA == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.f32183a.edit();
        editorEdit.putString(b(str, str2), strA);
        editorEdit.commit();
    }
}
