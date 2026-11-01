package p4;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f72290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final char f72291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f72292c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f72293d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f72294e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f72295f;

    public c(List list, char c11, double d11, double d12, String str, String str2) {
        this.f72290a = list;
        this.f72291b = c11;
        this.f72292c = d11;
        this.f72293d = d12;
        this.f72294e = str;
        this.f72295f = str2;
    }

    public static int c(char c11, String str, String str2) {
        return (((c11 * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public List a() {
        return this.f72290a;
    }

    public double b() {
        return this.f72293d;
    }

    public int hashCode() {
        return c(this.f72291b, this.f72295f, this.f72294e);
    }
}
