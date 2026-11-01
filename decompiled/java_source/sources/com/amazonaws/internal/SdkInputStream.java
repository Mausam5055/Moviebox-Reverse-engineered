package com.amazonaws.internal;

import com.amazonaws.AbortedException;
import com.amazonaws.logging.LogFactory;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SdkInputStream extends InputStream implements MetricAware {
    @Override // com.amazonaws.internal.MetricAware
    public final boolean d() {
        Closeable closeableL = l();
        if (closeableL instanceof MetricAware) {
            return ((MetricAware) closeableL).d();
        }
        return false;
    }

    protected void h() {
    }

    protected final void k() {
        if (Thread.interrupted()) {
            try {
                h();
            } catch (IOException e11) {
                LogFactory.b(getClass()).g("FYI", e11);
            }
            throw new AbortedException();
        }
    }

    protected abstract InputStream l();
}
