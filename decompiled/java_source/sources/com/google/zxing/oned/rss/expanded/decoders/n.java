package com.google.zxing.oned.rss.expanded.decoders;

/* JADX INFO: loaded from: classes4.dex */
final class n extends p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f32933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f32934c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f32935d;

    n(int i11, String str) {
        super(i11);
        this.f32933b = str;
        this.f32935d = false;
        this.f32934c = 0;
    }

    n(int i11, String str, int i12) {
        super(i11);
        this.f32935d = true;
        this.f32934c = i12;
        this.f32933b = str;
    }

    String b() {
        return this.f32933b;
    }

    int c() {
        return this.f32934c;
    }

    boolean d() {
        return this.f32935d;
    }
}
