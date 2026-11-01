package com.transsion.athena.hatnea;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class aatnhe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f42753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f42754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<athena> f42755c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f42756d;

    public static class athena {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f42757a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f42758b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f42759c;

        athena(int i11, int i12, long j11) {
            this.f42757a = i11;
            this.f42758b = i12;
            this.f42759c = j11;
        }

        public String a() {
            return this.f42758b + "-" + this.f42759c;
        }

        public String toString() {
            return "{appId=" + this.f42757a + ", type=" + this.f42758b + ", version=" + this.f42759c + '}';
        }
    }

    aatnhe() {
    }

    aatnhe(String str) {
        this.f42756d = str;
    }
}
