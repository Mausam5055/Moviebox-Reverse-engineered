package com.google.android.datatransport.runtime;

import android.content.Context;
import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
abstract class u implements Closeable {

    interface a {
        a a(Context context);

        u build();
    }

    u() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        d().close();
    }

    abstract a9.d d();

    abstract t h();
}
