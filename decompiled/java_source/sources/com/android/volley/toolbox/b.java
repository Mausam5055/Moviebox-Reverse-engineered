package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.Request;
import com.android.volley.VolleyError;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b implements com.android.volley.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final f f19283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f19284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final ByteArrayPool f19285c;

    public b(a aVar) {
        this(aVar, new ByteArrayPool(4096));
    }

    public b(a aVar, ByteArrayPool byteArrayPool) {
        this.f19284b = aVar;
        this.f19283a = aVar;
        this.f19285c = byteArrayPool;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
    
        r12 = r3.d();
        r0 = r3.c();
     */
    @Override // com.android.volley.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public com.android.volley.g a(Request request) throws VolleyError {
        IOException iOException;
        e eVar;
        byte[] bArr;
        e eVarA;
        int iD;
        List listC;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            try {
                eVarA = this.f19284b.a(request, d.c(request.getCacheEntry()));
                try {
                    break;
                } catch (IOException e11) {
                    bArr = null;
                    eVar = eVarA;
                    iOException = e11;
                }
            } catch (IOException e12) {
                iOException = e12;
                eVar = null;
                bArr = null;
            }
            l.a(request, l.e(request, iOException, jElapsedRealtime, eVar, bArr));
        }
        if (iD == 304) {
            return l.b(request, SystemClock.elapsedRealtime() - jElapsedRealtime, listC);
        }
        InputStream inputStreamA = eVarA.a();
        byte[] bArrC = inputStreamA != null ? l.c(inputStreamA, eVarA.b(), this.f19285c) : new byte[0];
        l.d(SystemClock.elapsedRealtime() - jElapsedRealtime, request, bArrC, iD);
        if (iD < 200 || iD > 299) {
            throw new IOException();
        }
        return new com.android.volley.g(iD, bArrC, false, SystemClock.elapsedRealtime() - jElapsedRealtime, listC);
    }
}
