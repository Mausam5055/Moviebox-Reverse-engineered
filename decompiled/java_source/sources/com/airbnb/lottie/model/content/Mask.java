package com.airbnb.lottie.model.content;

import q4.d;
import q4.h;

/* JADX INFO: loaded from: classes2.dex */
public class Mask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MaskMode f17784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f17785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f17786c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f17787d;

    /* JADX INFO: loaded from: classes.dex */
    public enum MaskMode {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public Mask(MaskMode maskMode, h hVar, d dVar, boolean z10) {
        this.f17784a = maskMode;
        this.f17785b = hVar;
        this.f17786c = dVar;
        this.f17787d = z10;
    }

    public MaskMode a() {
        return this.f17784a;
    }

    public h b() {
        return this.f17785b;
    }

    public d c() {
        return this.f17786c;
    }

    public boolean d() {
        return this.f17787d;
    }
}
