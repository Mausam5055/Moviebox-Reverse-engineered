package g10;

import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes7.dex */
public class q extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static int[] f63158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static int[] f63159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static int f63160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static String f63161d;

    public q() {
        f63158a = new int[]{2, 0, 0, 4096, 0, 48, 0, 0, 16384, 0, 0, 0, 0, 0, 0, 0, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306};
        f63159b = new int[]{Sdk$SDKError.Reason.AD_EXPIRED_VALUE, 286331152, 572662289, 336663074, 286335249, 286331237, 286335249, 18944273};
        f63161d = "ISO-2022-CN";
        f63160c = 9;
    }

    @Override // g10.y
    public int[] a() {
        return f63158a;
    }

    @Override // g10.y
    public String b() {
        return f63161d;
    }

    @Override // g10.y
    public boolean d() {
        return false;
    }

    @Override // g10.y
    public int e() {
        return f63160c;
    }

    @Override // g10.y
    public int[] f() {
        return f63159b;
    }
}
