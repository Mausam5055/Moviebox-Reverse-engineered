package androidx.core.provider;

import android.util.Base64;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f8191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f8192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f8193c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f8194d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f8195e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f8196f;

    public e(String str, String str2, String str3, List list) {
        this.f8191a = (String) androidx.core.util.i.g(str);
        this.f8192b = (String) androidx.core.util.i.g(str2);
        this.f8193c = (String) androidx.core.util.i.g(str3);
        this.f8194d = (List) androidx.core.util.i.g(list);
        this.f8196f = a(str, str2, str3);
    }

    private String a(String str, String str2, String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    public List b() {
        return this.f8194d;
    }

    public int c() {
        return this.f8195e;
    }

    String d() {
        return this.f8196f;
    }

    public String e() {
        return this.f8191a;
    }

    public String f() {
        return this.f8192b;
    }

    public String g() {
        return this.f8193c;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("FontRequest {mProviderAuthority: " + this.f8191a + ", mProviderPackage: " + this.f8192b + ", mQuery: " + this.f8193c + ", mCertificates:");
        for (int i11 = 0; i11 < this.f8194d.size(); i11++) {
            sb2.append(" [");
            List list = (List) this.f8194d.get(i11);
            for (int i12 = 0; i12 < list.size(); i12++) {
                sb2.append(" \"");
                sb2.append(Base64.encodeToString((byte[]) list.get(i12), 0));
                sb2.append("\"");
            }
            sb2.append(" ]");
        }
        sb2.append("}");
        sb2.append("mCertificatesArray: " + this.f8195e);
        return sb2.toString();
    }
}
