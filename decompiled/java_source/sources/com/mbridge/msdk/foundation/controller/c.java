package com.mbridge.msdk.foundation.controller;

import android.annotation.SuppressLint;

/* JADX INFO: loaded from: classes5.dex */
public class c extends a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static volatile c f35035s;

    private c() {
    }

    public static c m() {
        if (f35035s == null) {
            synchronized (c.class) {
                try {
                    if (f35035s == null) {
                        f35035s = new c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f35035s;
    }

    @Override // com.mbridge.msdk.foundation.controller.a
    protected void a(a.e eVar) {
    }
}
