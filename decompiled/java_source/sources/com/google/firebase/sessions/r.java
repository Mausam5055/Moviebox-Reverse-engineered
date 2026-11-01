package com.google.firebase.sessions;

import android.util.Base64;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r f32692a = new r();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f32693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f32694c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f32695d;

    static {
        String strEncodeToString = Base64.encodeToString(StringsKt.E(q.f32691a.e()), 10);
        f32693b = strEncodeToString;
        f32694c = "firebase_session_" + strEncodeToString + "_data";
        f32695d = "firebase_session_" + strEncodeToString + "_settings";
    }

    private r() {
    }

    public final String a() {
        return f32694c;
    }

    public final String b() {
        return f32695d;
    }
}
