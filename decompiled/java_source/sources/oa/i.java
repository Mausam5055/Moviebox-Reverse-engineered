package oa;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes5.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f70933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f70934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TimeInterpolator f70935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f70936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f70937e;

    public i(long j11, long j12) {
        this.f70935c = null;
        this.f70936d = 0;
        this.f70937e = 1;
        this.f70933a = j11;
        this.f70934b = j12;
    }

    public i(long j11, long j12, TimeInterpolator timeInterpolator) {
        this.f70936d = 0;
        this.f70937e = 1;
        this.f70933a = j11;
        this.f70934b = j12;
        this.f70935c = timeInterpolator;
    }

    static i b(ValueAnimator valueAnimator) {
        i iVar = new i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), f(valueAnimator));
        iVar.f70936d = valueAnimator.getRepeatCount();
        iVar.f70937e = valueAnimator.getRepeatMode();
        return iVar;
    }

    private static TimeInterpolator f(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            return a.f70919b;
        }
        if (interpolator instanceof AccelerateInterpolator) {
            return a.f70920c;
        }
        return interpolator instanceof DecelerateInterpolator ? a.f70921d : interpolator;
    }

    public void a(Animator animator) {
        animator.setStartDelay(c());
        animator.setDuration(d());
        animator.setInterpolator(e());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(g());
            valueAnimator.setRepeatMode(h());
        }
    }

    public long c() {
        return this.f70933a;
    }

    public long d() {
        return this.f70934b;
    }

    public TimeInterpolator e() {
        TimeInterpolator timeInterpolator = this.f70935c;
        return timeInterpolator != null ? timeInterpolator : a.f70919b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (c() == iVar.c() && d() == iVar.d() && g() == iVar.g() && h() == iVar.h()) {
            return e().getClass().equals(iVar.e().getClass());
        }
        return false;
    }

    public int g() {
        return this.f70936d;
    }

    public int h() {
        return this.f70937e;
    }

    public int hashCode() {
        return (((((((((int) (c() ^ (c() >>> 32))) * 31) + ((int) (d() ^ (d() >>> 32)))) * 31) + e().getClass().hashCode()) * 31) + g()) * 31) + h();
    }

    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + c() + " duration: " + d() + " interpolator: " + e().getClass() + " repeatCount: " + g() + " repeatMode: " + h() + "}\n";
    }
}
