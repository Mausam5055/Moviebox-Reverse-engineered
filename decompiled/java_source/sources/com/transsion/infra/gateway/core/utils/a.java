package com.transsion.infra.gateway.core.utils;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f46025a;

    public static Context a() {
        Context context = f46025a;
        if (context != null) {
            return context;
        }
        throw new NullPointerException("u should init first");
    }

    public static void b(Context context) {
        if (f46025a != null) {
            return;
        }
        f46025a = context.getApplicationContext();
    }
}
