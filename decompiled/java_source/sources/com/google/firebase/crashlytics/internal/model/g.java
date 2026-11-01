package com.google.firebase.crashlytics.internal.model;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class g extends CrashlyticsReport.d.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f31519b;

    static final class b extends CrashlyticsReport.d.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31520a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private byte[] f31521b;

        b() {
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b.a
        public CrashlyticsReport.d.b a() {
            byte[] bArr;
            String str = this.f31520a;
            if (str != null && (bArr = this.f31521b) != null) {
                return new g(str, bArr);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f31520a == null) {
                sb2.append(" filename");
            }
            if (this.f31521b == null) {
                sb2.append(" contents");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b.a
        public CrashlyticsReport.d.b.a b(byte[] bArr) {
            if (bArr == null) {
                throw new NullPointerException("Null contents");
            }
            this.f31521b = bArr;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b.a
        public CrashlyticsReport.d.b.a c(String str) {
            if (str == null) {
                throw new NullPointerException("Null filename");
            }
            this.f31520a = str;
            return this;
        }
    }

    private g(String str, byte[] bArr) {
        this.f31518a = str;
        this.f31519b = bArr;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b
    public byte[] b() {
        return this.f31519b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.d.b
    public String c() {
        return this.f31518a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.d.b)) {
            return false;
        }
        CrashlyticsReport.d.b bVar = (CrashlyticsReport.d.b) obj;
        if (this.f31518a.equals(bVar.c())) {
            if (Arrays.equals(this.f31519b, bVar instanceof g ? ((g) bVar).f31519b : bVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f31518a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f31519b);
    }

    public String toString() {
        return "File{filename=" + this.f31518a + ", contents=" + Arrays.toString(this.f31519b) + "}";
    }
}
