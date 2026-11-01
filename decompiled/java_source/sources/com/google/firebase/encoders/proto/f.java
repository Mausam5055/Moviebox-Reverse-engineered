package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.EncodingException;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
class f implements bc.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f31839a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f31840b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private bc.b f31841c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f31842d;

    f(d dVar) {
        this.f31842d = dVar;
    }

    private void a() {
        if (this.f31839a) {
            throw new EncodingException("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f31839a = true;
    }

    void b(bc.b bVar, boolean z10) {
        this.f31839a = false;
        this.f31841c = bVar;
        this.f31840b = z10;
    }

    @Override // bc.f
    public bc.f f(String str) throws IOException {
        a();
        this.f31842d.i(this.f31841c, str, this.f31840b);
        return this;
    }

    @Override // bc.f
    public bc.f g(boolean z10) {
        a();
        this.f31842d.o(this.f31841c, z10, this.f31840b);
        return this;
    }
}
