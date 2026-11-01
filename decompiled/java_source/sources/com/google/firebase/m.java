package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;

/* JADX INFO: loaded from: classes4.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f31953c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f31954d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f31955e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f31956f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f31957g;

    private m(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Preconditions.checkState(!Strings.isEmptyOrWhitespace(str), "ApplicationId must be set.");
        this.f31952b = str;
        this.f31951a = str2;
        this.f31953c = str3;
        this.f31954d = str4;
        this.f31955e = str5;
        this.f31956f = str6;
        this.f31957g = str7;
    }

    public static m a(Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String string = stringResourceValueReader.getString("google_app_id");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return new m(string, stringResourceValueReader.getString("google_api_key"), stringResourceValueReader.getString("firebase_database_url"), stringResourceValueReader.getString("ga_trackingId"), stringResourceValueReader.getString("gcm_defaultSenderId"), stringResourceValueReader.getString("google_storage_bucket"), stringResourceValueReader.getString("project_id"));
    }

    public String b() {
        return this.f31951a;
    }

    public String c() {
        return this.f31952b;
    }

    public String d() {
        return this.f31955e;
    }

    public String e() {
        return this.f31957g;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return Objects.equal(this.f31952b, mVar.f31952b) && Objects.equal(this.f31951a, mVar.f31951a) && Objects.equal(this.f31953c, mVar.f31953c) && Objects.equal(this.f31954d, mVar.f31954d) && Objects.equal(this.f31955e, mVar.f31955e) && Objects.equal(this.f31956f, mVar.f31956f) && Objects.equal(this.f31957g, mVar.f31957g);
    }

    public int hashCode() {
        return Objects.hashCode(this.f31952b, this.f31951a, this.f31953c, this.f31954d, this.f31955e, this.f31956f, this.f31957g);
    }

    public String toString() {
        return Objects.toStringHelper(this).add("applicationId", this.f31952b).add("apiKey", this.f31951a).add("databaseUrl", this.f31953c).add("gcmSenderId", this.f31955e).add("storageBucket", this.f31956f).add("projectId", this.f31957g).toString();
    }
}
