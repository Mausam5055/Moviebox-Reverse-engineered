package x9;

import com.google.android.exoplayer2.metadata.emsg.EventMessage;

/* JADX INFO: loaded from: classes4.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EventMessage[] f78091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f78092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f78094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f78095e;

    public f(String str, String str2, long j11, long[] jArr, EventMessage[] eventMessageArr) {
        this.f78093c = str;
        this.f78094d = str2;
        this.f78095e = j11;
        this.f78092b = jArr;
        this.f78091a = eventMessageArr;
    }

    public String a() {
        String str = this.f78093c;
        String str2 = this.f78094d;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb2.append(str);
        sb2.append("/");
        sb2.append(str2);
        return sb2.toString();
    }
}
