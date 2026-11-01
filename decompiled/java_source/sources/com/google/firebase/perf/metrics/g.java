package com.google.firebase.perf.metrics;

import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes4.dex */
public class g {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f32292a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f32293b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f32294c;

        public a(int i11, int i12, int i13) {
            this.f32292a = i11;
            this.f32293b = i12;
            this.f32294c = i13;
        }

        public a a(a aVar) {
            return new a(this.f32292a - aVar.d(), this.f32293b - aVar.c(), this.f32294c - aVar.b());
        }

        public int b() {
            return this.f32294c;
        }

        public int c() {
            return this.f32293b;
        }

        public int d() {
            return this.f32292a;
        }
    }

    public static a a(SparseIntArray[] sparseIntArrayArr) {
        int i11;
        int i12;
        SparseIntArray sparseIntArray;
        int i13 = 0;
        if (sparseIntArrayArr == null || (sparseIntArray = sparseIntArrayArr[0]) == null) {
            i11 = 0;
            i12 = 0;
        } else {
            int i14 = 0;
            i11 = 0;
            i12 = 0;
            while (i13 < sparseIntArray.size()) {
                int iKeyAt = sparseIntArray.keyAt(i13);
                int iValueAt = sparseIntArray.valueAt(i13);
                i14 += iValueAt;
                if (iKeyAt > 700) {
                    i12 += iValueAt;
                }
                if (iKeyAt > 16) {
                    i11 += iValueAt;
                }
                i13++;
            }
            i13 = i14;
        }
        return new a(i13, i11, i12);
    }
}
