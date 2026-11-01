package com.google.android.exoplayer2.upstream;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f27532a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map f27533b;

    public synchronized Map a() {
        try {
            if (this.f27533b == null) {
                this.f27533b = Collections.unmodifiableMap(new HashMap(this.f27532a));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f27533b;
    }
}
