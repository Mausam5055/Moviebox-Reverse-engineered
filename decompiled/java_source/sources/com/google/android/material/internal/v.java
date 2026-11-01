package com.google.android.material.internal;

import android.animation.TimeInterpolator;

/* JADX INFO: loaded from: classes4.dex */
public class v implements TimeInterpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TimeInterpolator f29270a;

    public v(TimeInterpolator timeInterpolator) {
        this.f29270a = timeInterpolator;
    }

    public static TimeInterpolator a(boolean z10, TimeInterpolator timeInterpolator) {
        return z10 ? timeInterpolator : new v(timeInterpolator);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f11) {
        return 1.0f - this.f29270a.getInterpolation(f11);
    }
}
