package androidx.media3.datasource.cache;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h implements Comparable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10818a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f10819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f10820c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f10821d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final File f10822e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f10823f;

    public h(String str, long j11, long j12, long j13, File file) {
        this.f10818a = str;
        this.f10819b = j11;
        this.f10820c = j12;
        this.f10821d = file != null;
        this.f10822e = file;
        this.f10823f = j13;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(h hVar) {
        if (!this.f10818a.equals(hVar.f10818a)) {
            return this.f10818a.compareTo(hVar.f10818a);
        }
        long j11 = this.f10819b - hVar.f10819b;
        if (j11 == 0) {
            return 0;
        }
        return j11 < 0 ? -1 : 1;
    }

    public boolean b() {
        return !this.f10821d;
    }

    public boolean d() {
        return this.f10820c == -1;
    }

    public String toString() {
        return "[" + this.f10819b + ", " + this.f10820c + "]";
    }
}
