package h10;

/* JADX INFO: loaded from: classes7.dex */
abstract class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f64230a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f64231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final String f64232c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f64233d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final String f64234e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final long f64235f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f64236g;

    w(int i11, int i12, String str, String str2, String str3, long j11) {
        this.f64230a = i11;
        this.f64231b = i12;
        this.f64232c = str;
        this.f64233d = str2;
        this.f64234e = str3;
        this.f64235f = j11;
    }

    int a() {
        if (this.f64236g == 0) {
            this.f64236g = y.c(this.f64234e);
        }
        return this.f64236g;
    }
}
