package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final vb.g f31284b;

    public y(String str, vb.g gVar) {
        this.f31283a = str;
        this.f31284b = gVar;
    }

    private File b() {
        return this.f31284b.g(this.f31283a);
    }

    public boolean a() {
        try {
            return b().createNewFile();
        } catch (IOException e11) {
            ob.g.f().e("Error creating marker: " + this.f31283a, e11);
            return false;
        }
    }

    public boolean c() {
        return b().exists();
    }

    public boolean d() {
        return b().delete();
    }
}
