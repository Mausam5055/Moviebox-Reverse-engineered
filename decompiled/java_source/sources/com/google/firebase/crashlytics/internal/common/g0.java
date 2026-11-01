package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class g0 implements h0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f31180g = Pattern.compile("[^\\p{Alnum}]");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f31181h = Pattern.quote("/");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i0 f31182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f31183b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f31184c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final jc.e f31185d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d0 f31186e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private h0.a f31187f;

    public g0(Context context, String str, jc.e eVar, d0 d0Var) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        this.f31183b = context;
        this.f31184c = str;
        this.f31185d = eVar;
        this.f31186e = d0Var;
        this.f31182a = new i0();
    }

    private synchronized String b(String str, SharedPreferences sharedPreferences) {
        String strE;
        strE = e(UUID.randomUUID().toString());
        ob.g.f().i("Created new Crashlytics installation ID: " + strE + " for FID: " + str);
        sharedPreferences.edit().putString("crashlytics.installation.id", strE).putString("firebase.installation.id", str).apply();
        return strE;
    }

    static String c() {
        return "SYN_" + UUID.randomUUID().toString();
    }

    private static String e(String str) {
        return f31180g.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    static boolean k(String str) {
        return str != null && str.startsWith("SYN_");
    }

    private String l(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString("crashlytics.installation.id", null);
    }

    private String m(String str) {
        return str.replaceAll(f31181h, "");
    }

    private boolean n() {
        h0.a aVar = this.f31187f;
        return aVar == null || (aVar.e() == null && this.f31186e.d());
    }

    @Override // com.google.firebase.crashlytics.internal.common.h0
    public synchronized h0.a a() {
        if (!n()) {
            return this.f31187f;
        }
        ob.g.f().i("Determining Crashlytics installation ID...");
        SharedPreferences sharedPreferencesQ = CommonUtils.q(this.f31183b);
        String string = sharedPreferencesQ.getString("firebase.installation.id", null);
        ob.g.f().i("Cached Firebase Installation ID: " + string);
        if (this.f31186e.d()) {
            f0 f0VarD = d(false);
            ob.g.f().i("Fetched Firebase Installation ID: " + f0VarD.b());
            if (f0VarD.b() == null) {
                f0VarD = new f0(string == null ? c() : string, null);
            }
            if (Objects.equals(f0VarD.b(), string)) {
                this.f31187f = h0.a.a(l(sharedPreferencesQ), f0VarD);
            } else {
                this.f31187f = h0.a.a(b(f0VarD.b(), sharedPreferencesQ), f0VarD);
            }
        } else if (k(string)) {
            this.f31187f = h0.a.b(l(sharedPreferencesQ));
        } else {
            this.f31187f = h0.a.b(b(c(), sharedPreferencesQ));
        }
        ob.g.f().i("Install IDs: " + this.f31187f);
        return this.f31187f;
    }

    public f0 d(boolean z10) {
        String strB;
        CrashlyticsWorkers.e();
        String str = null;
        if (z10) {
            try {
                strB = ((com.google.firebase.installations.f) Tasks.await(this.f31185d.a(false), 10000L, TimeUnit.MILLISECONDS)).b();
            } catch (Exception e11) {
                ob.g.f().l("Error getting Firebase authentication token.", e11);
                strB = null;
            }
        } else {
            strB = null;
        }
        try {
            str = (String) Tasks.await(this.f31185d.getId(), 10000L, TimeUnit.MILLISECONDS);
        } catch (Exception e12) {
            ob.g.f().l("Error getting Firebase installation id.", e12);
        }
        return new f0(str, strB);
    }

    public String f() {
        return this.f31184c;
    }

    public String g() {
        return this.f31182a.a(this.f31183b);
    }

    public String h() {
        return String.format(Locale.US, "%s/%s", m(Build.MANUFACTURER), m(Build.MODEL));
    }

    public String i() {
        return m(Build.VERSION.INCREMENTAL);
    }

    public String j() {
        return m(Build.VERSION.RELEASE);
    }
}
