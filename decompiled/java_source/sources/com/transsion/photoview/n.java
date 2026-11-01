package com.transsion.photoview;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.graphics.Color;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.transsion.gslb.Utils;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f47905a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f47906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f47907c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f47908d = 1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final WeakReference f47909e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private i f47910f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f47911g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f47912h;

    public n(final ImageView imageView) {
        this.f47909e = new WeakReference(imageView);
        int iC = o.c(imageView.getContext());
        this.f47907c = iC;
        this.f47905a = (int) (((double) iC) * 0.15d);
        imageView.post(new Runnable() { // from class: com.transsion.photoview.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f47903a.j(imageView);
            }
        });
    }

    private void c(float f11, float f12) {
        ImageView imageView = (ImageView) this.f47909e.get();
        if (imageView == null) {
            return;
        }
        if (Math.abs(f12) < this.f47907c / 4.0f) {
            float fAbs = 1.0f - (Math.abs(f12) / this.f47907c);
            this.f47908d = 1.0f - (Math.abs(f12) / (this.f47907c / 3.0f));
            imageView.setScaleX(fAbs);
            imageView.setScaleY(fAbs);
            ((ViewGroup) imageView.getParent()).setBackgroundColor(f(this.f47908d));
        }
        imageView.setTranslationY(f12);
    }

    private int f(float f11) {
        int iMin = (int) (Math.min(1.0f, Math.max(0.0f, f11)) * 255.0f);
        if (iMin <= 102) {
            return this.f47912h;
        }
        String lowerCase = Integer.toHexString(iMin).toLowerCase();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Utils.SEPARATOR);
        sb2.append(lowerCase.length() < 2 ? "0" : "");
        sb2.append(lowerCase);
        sb2.append("000000");
        int color = Color.parseColor(sb2.toString());
        this.f47912h = color;
        return color;
    }

    private void g() {
        ImageView imageView = (ImageView) this.f47909e.get();
        if (imageView == null) {
            return;
        }
        i iVar = this.f47910f;
        if (iVar != null) {
            iVar.a();
        }
        try {
            ((Activity) imageView.getContext()).finish();
            ((Activity) imageView.getContext()).overridePendingTransition(0, 0);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(ImageView imageView, ValueAnimator valueAnimator) {
        if (this.f47908d < valueAnimator.getAnimatedFraction()) {
            ((ViewGroup) imageView.getParent()).setBackgroundColor(f(valueAnimator.getAnimatedFraction()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(ImageView imageView) {
        ((ViewGroup) imageView.getParent()).setBackgroundColor(f(this.f47908d));
    }

    public void d() {
        final ImageView imageView = (ImageView) this.f47909e.get();
        if (imageView != null && this.f47911g) {
            this.f47911g = false;
            if (Math.abs(this.f47906b) <= this.f47905a) {
                imageView.animate().setDuration(200L).scaleX(1.0f).scaleY(1.0f).translationX(0.0f).translationY(0.0f).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.transsion.photoview.l
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f47901a.i(imageView, valueAnimator);
                    }
                }).start();
            } else {
                this.f47906b = 0.0f;
                g();
            }
        }
    }

    public void e(float f11, float f12, float f13) {
        if (Math.abs(f11 - 1.0f) != 0.0f) {
            return;
        }
        this.f47906b = f13;
        if (Math.abs(f13) > 50.0f) {
            this.f47911g = true;
            c(f12, this.f47906b);
        }
    }

    public boolean h() {
        return this.f47911g;
    }

    public void k(i iVar) {
        this.f47910f = iVar;
    }
}
