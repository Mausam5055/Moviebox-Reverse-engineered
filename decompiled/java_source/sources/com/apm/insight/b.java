package com.apm.insight;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements ICrashCallback, IOOMCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IOOMCallback f19322a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ICrashCallback f19323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f19324c;

    public b(String str, ICrashCallback iCrashCallback) {
        this.f19324c = str;
        this.f19323b = iCrashCallback;
    }

    public b(String str, IOOMCallback iOOMCallback) {
        this.f19324c = str;
        this.f19322a = iOOMCallback;
    }

    public final void a(@NonNull CrashType crashType, @Nullable String str, @Nullable String str2, String str3) {
        d dVarA;
        if (this.f19323b == null || (dVarA = d.a(this.f19324c)) == null || !dVarA.a(str3, str2)) {
            return;
        }
        this.f19323b.onCrash(crashType, str, null);
    }

    public final void a(@NonNull CrashType crashType, @Nullable String str, @Nullable Thread thread, JSONArray jSONArray) {
        if (this.f19323b == null || jSONArray == null) {
            return;
        }
        for (int i11 = 0; i11 < jSONArray.length(); i11++) {
            if (TextUtils.equals(a.a(jSONArray.optJSONObject(i11), "header", "aid"), this.f19324c)) {
                this.f19323b.onCrash(crashType, str, thread);
            }
        }
    }

    public final void a(@NonNull CrashType crashType, @Nullable Throwable th2, @Nullable Thread thread, long j11, JSONArray jSONArray) {
        if (this.f19322a == null || jSONArray == null) {
            return;
        }
        for (int i11 = 0; i11 < jSONArray.length(); i11++) {
            if (TextUtils.equals(a.a(jSONArray.optJSONObject(i11), "header", "aid"), this.f19324c)) {
                this.f19322a.onCrash(crashType, th2, thread, j11);
            }
        }
    }

    @Override // com.apm.insight.ICrashCallback
    public final void onCrash(@NonNull CrashType crashType, @Nullable String str, @Nullable Thread thread) {
    }

    @Override // com.apm.insight.IOOMCallback
    public final void onCrash(@NonNull CrashType crashType, @Nullable Throwable th2, @Nullable Thread thread, long j11) {
    }
}
