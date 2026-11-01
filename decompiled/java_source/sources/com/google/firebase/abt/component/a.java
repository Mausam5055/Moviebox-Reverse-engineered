package com.google.firebase.abt.component;

import android.content.Context;
import ic.b;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f31045a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f31046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f31047c;

    protected a(Context context, b bVar) {
        this.f31046b = context;
        this.f31047c = bVar;
    }

    protected hb.b a(String str) {
        return new hb.b(this.f31046b, this.f31047c, str);
    }

    public synchronized hb.b b(String str) {
        try {
            if (!this.f31045a.containsKey(str)) {
                this.f31045a.put(str, a(str));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (hb.b) this.f31045a.get(str);
    }
}
