package com.transsion.ga;

import android.os.Bundle;

/* JADX INFO: loaded from: classes5.dex */
public class anateh extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f44185a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f44186b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Bundle f44187c;

    public anateh(String str, Bundle bundle) {
        super(str, null);
        this.f44186b = str;
        this.f44187c = bundle;
    }

    public anateh(String str, Throwable th2) {
        super(str, th2);
        this.f44186b = str;
        this.f44187c = null;
    }

    public static void a(String str, Throwable th2) {
        i.a().c(new anateh(str, th2));
    }

    String a() {
        return this.f44186b;
    }

    Bundle b() {
        return this.f44187c;
    }
}
