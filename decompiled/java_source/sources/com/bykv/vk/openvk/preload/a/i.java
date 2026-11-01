package com.bykv.vk.openvk.preload.a;

import java.io.IOException;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i {
    public Number a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            com.bykv.vk.openvk.preload.a.d.c cVar = new com.bykv.vk.openvk.preload.a.d.c(stringWriter);
            cVar.a(true);
            com.bykv.vk.openvk.preload.geckox.h.a.a(this, cVar);
            return stringWriter.toString();
        } catch (IOException e11) {
            throw new AssertionError(e11);
        }
    }
}
