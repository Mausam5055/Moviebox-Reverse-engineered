package com.mbridge.msdk.thrid.okhttp;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: loaded from: classes5.dex */
public final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e f37798c = new a().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<b> f37799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okhttp.internal.tls.c f37800b;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<b> f37801a = new ArrayList();

        public e a() {
            return new e(new LinkedHashSet(this.f37801a), null);
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f37802a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f37803b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f37804c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final com.mbridge.msdk.thrid.okio.f f37805d;

        boolean a(String str) {
            if (!this.f37802a.startsWith("*.")) {
                return str.equals(this.f37803b);
            }
            int iIndexOf = str.indexOf(46);
            if ((str.length() - iIndexOf) - 1 == this.f37803b.length()) {
                String str2 = this.f37803b;
                if (str.regionMatches(false, iIndexOf + 1, str2, 0, str2.length())) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (this.f37802a.equals(bVar.f37802a) && this.f37804c.equals(bVar.f37804c) && this.f37805d.equals(bVar.f37805d)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ((((this.f37802a.hashCode() + 527) * 31) + this.f37804c.hashCode()) * 31) + this.f37805d.hashCode();
        }

        public String toString() {
            return this.f37804c + this.f37805d.a();
        }
    }

    e(Set<b> set, com.mbridge.msdk.thrid.okhttp.internal.tls.c cVar) {
        this.f37799a = set;
        this.f37800b = cVar;
    }

    static com.mbridge.msdk.thrid.okio.f a(X509Certificate x509Certificate) {
        return com.mbridge.msdk.thrid.okio.f.a(x509Certificate.getPublicKey().getEncoded()).c();
    }

    public static String a(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        return "sha256/" + b((X509Certificate) certificate).a();
    }

    static com.mbridge.msdk.thrid.okio.f b(X509Certificate x509Certificate) {
        return com.mbridge.msdk.thrid.okio.f.a(x509Certificate.getPublicKey().getEncoded()).d();
    }

    e a(com.mbridge.msdk.thrid.okhttp.internal.tls.c cVar) {
        return com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37800b, cVar) ? this : new e(this.f37799a, cVar);
    }

    List<b> a(String str) {
        List<b> listEmptyList = Collections.emptyList();
        for (b bVar : this.f37799a) {
            if (bVar.a(str)) {
                if (listEmptyList.isEmpty()) {
                    listEmptyList = new ArrayList<>();
                }
                listEmptyList.add(bVar);
            }
        }
        return listEmptyList;
    }

    public void a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<b> listA = a(str);
        if (listA.isEmpty()) {
            return;
        }
        com.mbridge.msdk.thrid.okhttp.internal.tls.c cVar = this.f37800b;
        if (cVar != null) {
            list = cVar.a(list, str);
        }
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i11);
            int size2 = listA.size();
            com.mbridge.msdk.thrid.okio.f fVarB = null;
            com.mbridge.msdk.thrid.okio.f fVarA = null;
            for (int i12 = 0; i12 < size2; i12++) {
                b bVar = listA.get(i12);
                if (bVar.f37804c.equals("sha256/")) {
                    if (fVarB == null) {
                        fVarB = b(x509Certificate);
                    }
                    if (bVar.f37805d.equals(fVarB)) {
                        return;
                    }
                } else {
                    if (!bVar.f37804c.equals("sha1/")) {
                        throw new AssertionError("unsupported hashAlgorithm: " + bVar.f37804c);
                    }
                    if (fVarA == null) {
                        fVarA = a(x509Certificate);
                    }
                    if (bVar.f37805d.equals(fVarA)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Certificate pinning failure!");
        sb2.append("\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i13 = 0; i13 < size3; i13++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i13);
            sb2.append("\n    ");
            sb2.append(a((Certificate) x509Certificate2));
            sb2.append(": ");
            sb2.append(x509Certificate2.getSubjectDN().getName());
        }
        sb2.append("\n  Pinned certificates for ");
        sb2.append(str);
        sb2.append(":");
        int size4 = listA.size();
        for (int i14 = 0; i14 < size4; i14++) {
            b bVar2 = listA.get(i14);
            sb2.append("\n    ");
            sb2.append(bVar2);
        }
        throw new SSLPeerUnverifiedException(sb2.toString());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37800b, eVar.f37800b) && this.f37799a.equals(eVar.f37799a)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        com.mbridge.msdk.thrid.okhttp.internal.tls.c cVar = this.f37800b;
        return ((cVar != null ? cVar.hashCode() : 0) * 31) + this.f37799a.hashCode();
    }
}
