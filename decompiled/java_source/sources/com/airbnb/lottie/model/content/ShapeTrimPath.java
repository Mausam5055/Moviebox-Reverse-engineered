package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h;
import m4.u;
import q4.b;
import r4.c;

/* JADX INFO: loaded from: classes2.dex */
public class ShapeTrimPath implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Type f17815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f17816c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f17817d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f17818e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f17819f;

    /* JADX INFO: loaded from: classes.dex */
    public enum Type {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static Type forId(int i11) {
            if (i11 == 1) {
                return SIMULTANEOUSLY;
            }
            if (i11 == 2) {
                return INDIVIDUALLY;
            }
            throw new IllegalArgumentException("Unknown trim path type " + i11);
        }
    }

    public ShapeTrimPath(String str, Type type, b bVar, b bVar2, b bVar3, boolean z10) {
        this.f17814a = str;
        this.f17815b = type;
        this.f17816c = bVar;
        this.f17817d = bVar2;
        this.f17818e = bVar3;
        this.f17819f = z10;
    }

    @Override // r4.c
    public m4.c a(LottieDrawable lottieDrawable, h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new u(aVar, this);
    }

    public b b() {
        return this.f17817d;
    }

    public String c() {
        return this.f17814a;
    }

    public b d() {
        return this.f17818e;
    }

    public b e() {
        return this.f17816c;
    }

    public Type f() {
        return this.f17815b;
    }

    public boolean g() {
        return this.f17819f;
    }

    public String toString() {
        return "Trim Path: {start: " + this.f17816c + ", end: " + this.f17817d + ", offset: " + this.f17818e + "}";
    }
}
