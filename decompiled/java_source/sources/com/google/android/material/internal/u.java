package com.google.android.material.internal;

import android.animation.TypeEvaluator;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes4.dex */
public class u implements TypeEvaluator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Rect f29269a;

    public u(Rect rect) {
        this.f29269a = rect;
    }

    @Override // android.animation.TypeEvaluator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Rect evaluate(float f11, Rect rect, Rect rect2) {
        int i11 = rect.left;
        int i12 = i11 + ((int) ((rect2.left - i11) * f11));
        int i13 = rect.top;
        int i14 = i13 + ((int) ((rect2.top - i13) * f11));
        int i15 = rect.right;
        int i16 = i15 + ((int) ((rect2.right - i15) * f11));
        int i17 = rect.bottom;
        this.f29269a.set(i12, i14, i16, i17 + ((int) ((rect2.bottom - i17) * f11)));
        return this.f29269a;
    }
}
