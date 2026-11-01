package com.google.android.exoplayer2.upstream.cache;

import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public abstract class h implements Comparable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f27339c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f27340d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final File f27341e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f27342f;

    public h(String str, long j11, long j12, long j13, File file) {
        this.f27337a = str;
        this.f27338b = j11;
        this.f27339c = j12;
        this.f27340d = file != null;
        this.f27341e = file;
        this.f27342f = j13;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(h hVar) {
        if (!this.f27337a.equals(hVar.f27337a)) {
            return this.f27337a.compareTo(hVar.f27337a);
        }
        long j11 = this.f27338b - hVar.f27338b;
        if (j11 == 0) {
            return 0;
        }
        return j11 < 0 ? -1 : 1;
    }

    public boolean b() {
        return !this.f27340d;
    }

    public boolean d() {
        return this.f27339c == -1;
    }

    public String toString() {
        return "[" + this.f27338b + ", " + this.f27339c + "]";
    }
}
