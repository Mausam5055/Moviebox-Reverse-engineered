package com.google.android.datatransport.runtime;

import android.util.Base64;
import com.google.android.datatransport.Priority;

/* JADX INFO: loaded from: classes3.dex */
public abstract class o {

    public static abstract class a {
        public abstract o a();

        public abstract a b(String str);

        public abstract a c(byte[] bArr);

        public abstract a d(Priority priority);
    }

    public static a a() {
        return new d.b().d(Priority.DEFAULT);
    }

    public abstract String b();

    public abstract byte[] c();

    public abstract Priority d();

    public boolean e() {
        return c() != null;
    }

    public o f(Priority priority) {
        return a().b(b()).d(priority).c(c()).a();
    }

    public final String toString() {
        return String.format("TransportContext(%s, %s, %s)", b(), d(), c() == null ? "" : Base64.encodeToString(c(), 2));
    }
}
