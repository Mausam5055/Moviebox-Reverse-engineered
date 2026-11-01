package com.transsion.transfer.androidasync.http;

import com.google.android.gms.security.ProviderInstaller;
import java.lang.reflect.Field;
import java.util.Hashtable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;

/* JADX INFO: loaded from: classes6.dex */
public class z implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Hashtable f55527a = new Hashtable();

    private static class a implements m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Field f55528a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Field f55529b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Field f55530c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Field f55531d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f55532e;

        public a(Class cls) {
            try {
                Field declaredField = cls.getSuperclass().getDeclaredField("peerHost");
                this.f55528a = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = cls.getSuperclass().getDeclaredField("peerPort");
                this.f55529b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("sslParameters");
                this.f55530c = declaredField3;
                declaredField3.setAccessible(true);
                Field declaredField4 = this.f55530c.getType().getDeclaredField("useSni");
                this.f55531d = declaredField4;
                declaredField4.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
        }

        @Override // com.transsion.transfer.androidasync.http.m
        public SSLEngine a(SSLContext sSLContext, String str, int i11) {
            return null;
        }

        @Override // com.transsion.transfer.androidasync.http.m
        public void b(SSLEngine sSLEngine, g.a aVar, String str, int i11) {
            if (this.f55531d == null || this.f55532e) {
                return;
            }
            try {
                this.f55528a.set(sSLEngine, str);
                this.f55529b.set(sSLEngine, Integer.valueOf(i11));
                this.f55531d.set(this.f55530c.get(sSLEngine), Boolean.TRUE);
            } catch (IllegalAccessException unused) {
            }
        }
    }

    @Override // com.transsion.transfer.androidasync.http.m
    public SSLEngine a(SSLContext sSLContext, String str, int i11) {
        ProviderInstaller.PROVIDER_NAME.equals(sSLContext.getProvider().getName());
        return sSLContext.createSSLEngine(str, i11);
    }

    @Override // com.transsion.transfer.androidasync.http.m
    public void b(SSLEngine sSLEngine, g.a aVar, String str, int i11) {
        c(sSLEngine).b(sSLEngine, aVar, str, i11);
    }

    a c(SSLEngine sSLEngine) {
        String canonicalName = sSLEngine.getClass().getCanonicalName();
        a aVar = (a) this.f55527a.get(canonicalName);
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(sSLEngine.getClass());
        this.f55527a.put(canonicalName, aVar2);
        return aVar2;
    }
}
