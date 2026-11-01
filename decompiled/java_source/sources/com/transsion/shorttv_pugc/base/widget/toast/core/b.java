package com.transsion.shorttv_pugc.base.widget.toast.core;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements lt.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ToastImpl f53952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f53953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f53954c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f53955d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f53956e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f53957f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f53958g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f53959h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f53960i;

    public b(Activity activity) {
        this.f53952a = new ToastImpl(activity, this);
    }

    @Override // lt.a
    public boolean a() {
        return this.f53954c == null;
    }

    public TextView b(View view) {
        return lt.a.C0833a.a(this, view);
    }

    @Override // lt.a
    public void cancel() {
        ToastImpl toastImpl = this.f53952a;
        if (toastImpl != null) {
            toastImpl.e();
        }
    }

    @Override // lt.a
    public int getDuration() {
        return this.f53956e;
    }

    @Override // lt.a
    public int getGravity() {
        return this.f53955d;
    }

    @Override // lt.a
    public float getHorizontalMargin() {
        return this.f53959h;
    }

    @Override // lt.a
    public float getVerticalMargin() {
        return this.f53960i;
    }

    @Override // lt.a
    public View getView() {
        return this.f53953b;
    }

    @Override // lt.a
    public int getXOffset() {
        return this.f53957f;
    }

    @Override // lt.a
    public int getYOffset() {
        return this.f53958g;
    }

    @Override // lt.a
    public void setDuration(int i11) {
        this.f53956e = i11;
    }

    @Override // lt.a
    public void setGravity(int i11, int i12, int i13) {
        this.f53955d = i11;
        this.f53957f = i12;
        this.f53958g = i13;
    }

    @Override // lt.a
    public void setMargin(float f11, float f12) {
        this.f53959h = f11;
        this.f53960i = f12;
    }

    @Override // lt.a
    public void setText(CharSequence charSequence) {
        TextView textView = this.f53954c;
        if (textView == null) {
            return;
        }
        Intrinsics.e(textView);
        textView.setText(charSequence);
    }

    @Override // lt.a
    public void setView(View view) {
        this.f53953b = view;
        if (view == null) {
            this.f53954c = null;
        } else {
            Intrinsics.e(view);
            this.f53954c = b(view);
        }
    }

    @Override // lt.a
    public void show() {
        ToastImpl toastImpl = this.f53952a;
        if (toastImpl != null) {
            toastImpl.h();
        }
    }
}
