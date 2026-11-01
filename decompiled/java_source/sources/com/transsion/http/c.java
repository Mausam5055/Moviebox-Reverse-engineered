package com.transsion.http;

import am.f;
import android.os.Looper;
import androidx.annotation.NonNull;
import cm.a;
import com.transsion.http.impl.r;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import wl.b;
import wl.d;
import xl.h;
import xl.j;

/* JADX INFO: loaded from: classes5.dex */
public class c implements Runnable, Comparable<c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f45922a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f45923b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicBoolean f45924c = new AtomicBoolean();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h f45925d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f45926e;

    public c(b bVar, r rVar) {
        this.f45922a = rVar;
        f fVarD = bVar.d();
        this.f45923b = fVarD;
        this.f45925d = bVar.b();
        new WeakReference(fVarD.e().m());
    }

    private void b() throws IOException {
        try {
            this.f45923b.g();
            if (a()) {
                return;
            }
            byte[] bArrD = a.d(a.b(this.f45923b.c()));
            r rVar = this.f45922a;
            if (rVar != null) {
                rVar.c(this.f45923b.f(), bArrD);
            }
            if (this.f45923b.e().o() && this.f45925d != null) {
                ((xl.b) this.f45925d).c(new d(this.f45923b.e().n()), new j(new xl.a(), ByteBuffer.wrap(bArrD)));
            }
        } finally {
            this.f45923b.a();
        }
    }

    private synchronized void c() {
        r rVar;
        if (!this.f45926e && this.f45924c.get() && (rVar = this.f45922a) != null) {
            rVar.e();
        }
    }

    public boolean a() {
        boolean z10 = this.f45924c.get();
        if (z10) {
            c();
        }
        return z10;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull c cVar) {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0105 A[PHI: r0
  0x0105: PHI (r0v5 xl.h) = (r0v4 xl.h), (r0v11 xl.h) binds: [B:53:0x0103, B:45:0x00e5] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.lang.Runnable
    public void run() {
        h hVar;
        r rVar;
        h hVar2;
        File fileA;
        bm.c cVar = bm.a.f16624a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("run Current Looper:");
        sb2.append(Looper.myLooper() == Looper.getMainLooper() ? "Main Looper" : "thread Looper");
        cVar.d("book", sb2.toString());
        if (a()) {
            return;
        }
        r rVar2 = this.f45922a;
        if (rVar2 != null) {
            rVar2.a();
        }
        try {
            try {
                if (!this.f45923b.e().o() || (hVar2 = this.f45925d) == null || (fileA = ((xl.b) hVar2).a(new d(this.f45923b.e().n()))) == null || !fileA.exists() || fileA.length() <= 0) {
                    b();
                } else {
                    bm.c cVar2 = bm.a.f16624a;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("image url:");
                    sb3.append(this.f45923b.e().n());
                    cVar2.d("image", sb3.toString());
                    bm.c cVar3 = bm.a.f16624a;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("image path:");
                    sb4.append(fileA.getPath());
                    cVar3.d("image", sb4.toString());
                    if (a()) {
                        this.f45923b.a();
                        h hVar3 = this.f45925d;
                        if (hVar3 != null) {
                            ((xl.b) hVar3).b();
                            return;
                        }
                        return;
                    }
                    r rVar3 = this.f45922a;
                    if (rVar3 != null) {
                        rVar3.c(250, a.d(a.a(fileA)));
                    }
                }
                this.f45923b.a();
                hVar = this.f45925d;
                if (hVar != null) {
                    ((xl.b) hVar).b();
                }
            } catch (Exception e11) {
                if (!a() && (rVar = this.f45922a) != null) {
                    rVar.d(this.f45923b.f(), null, e11);
                }
                this.f45923b.a();
                hVar = this.f45925d;
                if (hVar != null) {
                    ((xl.b) hVar).b();
                }
            }
            if (a()) {
                return;
            }
            r rVar4 = this.f45922a;
            if (rVar4 != null) {
                rVar4.b();
            }
            this.f45926e = true;
        } catch (Throwable th2) {
            this.f45923b.a();
            h hVar4 = this.f45925d;
            if (hVar4 != null) {
                ((xl.b) hVar4).b();
            }
            throw th2;
        }
    }
}
