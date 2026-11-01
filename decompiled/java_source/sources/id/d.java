package id;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f65161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f65163c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f65164d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f65165e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Integer f65166f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Integer f65167g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Object f65168h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f65169i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f65170j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f65171k;

    public d(byte[] bArr, String str, List list, String str2) {
        this(bArr, str, list, str2, -1, -1, 0);
    }

    public d(byte[] bArr, String str, List list, String str2, int i11) {
        this(bArr, str, list, str2, -1, -1, i11);
    }

    public d(byte[] bArr, String str, List list, String str2, int i11, int i12, int i13) {
        this.f65161a = bArr;
        this.f65162b = bArr == null ? 0 : bArr.length * 8;
        this.f65163c = str;
        this.f65164d = list;
        this.f65165e = str2;
        this.f65169i = i12;
        this.f65170j = i11;
        this.f65171k = i13;
    }

    public List a() {
        return this.f65164d;
    }

    public String b() {
        return this.f65165e;
    }

    public Integer c() {
        return this.f65167g;
    }

    public Integer d() {
        return this.f65166f;
    }

    public int e() {
        return this.f65162b;
    }

    public Object f() {
        return this.f65168h;
    }

    public byte[] g() {
        return this.f65161a;
    }

    public int h() {
        return this.f65169i;
    }

    public int i() {
        return this.f65170j;
    }

    public int j() {
        return this.f65171k;
    }

    public String k() {
        return this.f65163c;
    }

    public boolean l() {
        return this.f65169i >= 0 && this.f65170j >= 0;
    }

    public void m(Integer num) {
        this.f65167g = num;
    }

    public void n(Integer num) {
        this.f65166f = num;
    }

    public void o(int i11) {
        this.f65162b = i11;
    }

    public void p(Object obj) {
        this.f65168h = obj;
    }
}
