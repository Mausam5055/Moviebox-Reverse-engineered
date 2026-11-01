package com.google.android.exoplayer2.upstream;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface z {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f27536a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f27537b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f27538c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f27539d;

        public a(int i11, int i12, int i13, int i14) {
            this.f27536a = i11;
            this.f27537b = i12;
            this.f27538c = i13;
            this.f27539d = i14;
        }

        public boolean a(int i11) {
            if (i11 == 1) {
                if (this.f27536a - this.f27537b <= 1) {
                    return false;
                }
            } else if (this.f27538c - this.f27539d <= 1) {
                return false;
            }
            return true;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f27540a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f27541b;

        public b(int i11, long j11) {
            com.google.android.exoplayer2.util.a.a(j11 >= 0);
            this.f27540a = i11;
            this.f27541b = j11;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t9.h f27542a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final t9.i f27543b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final IOException f27544c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f27545d;

        public c(t9.h hVar, t9.i iVar, IOException iOException, int i11) {
            this.f27542a = hVar;
            this.f27543b = iVar;
            this.f27544c = iOException;
            this.f27545d = i11;
        }
    }

    int a(int i11);

    void b(long j11);

    long c(c cVar);

    b d(a aVar, c cVar);
}
