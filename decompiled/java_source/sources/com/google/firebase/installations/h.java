package com.google.firebase.installations;

import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f31904b = TimeUnit.HOURS.toSeconds(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f31905c = Pattern.compile("\\AA[\\w-]{38}\\z");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static h f31906d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final lc.a f31907a;

    private h(lc.a aVar) {
        this.f31907a = aVar;
    }

    public static h c() {
        return d(lc.b.a());
    }

    public static h d(lc.a aVar) {
        if (f31906d == null) {
            f31906d = new h(aVar);
        }
        return f31906d;
    }

    static boolean g(String str) {
        return f31905c.matcher(str).matches();
    }

    static boolean h(String str) {
        return str.contains(":");
    }

    public long a() {
        return this.f31907a.currentTimeMillis();
    }

    public long b() {
        return TimeUnit.MILLISECONDS.toSeconds(a());
    }

    public long e() {
        return (long) (Math.random() * 1000.0d);
    }

    public boolean f(com.google.firebase.installations.local.b bVar) {
        return TextUtils.isEmpty(bVar.b()) || bVar.h() + bVar.c() < b() + f31904b;
    }
}
