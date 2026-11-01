package org.apache.commons.compress.compressors.pack200;

import java.io.FilterOutputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes7.dex */
abstract class b extends FilterOutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f71191a;

    protected b() {
        this(null);
    }

    protected b(OutputStream outputStream) {
        super(outputStream);
        this.f71191a = new Object();
    }
}
