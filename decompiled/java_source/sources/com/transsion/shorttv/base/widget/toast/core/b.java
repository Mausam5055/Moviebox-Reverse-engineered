package com.transsion.shorttv.base.widget.toast.core;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements gs.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ToastImpl f52972a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f52973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f52974c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f52975d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f52976e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f52977f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f52978g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f52979h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f52980i;

    public b(Activity activity) {
        this.f52972a = new ToastImpl(activity, this);
    }

    @Override // gs.a
    public boolean a() {
        return this.f52974c == null;
    }

    public TextView b(View view) {
        return gs.a.C0772a.a(this, view);
    }

    @Override // gs.a
    public void cancel() {
        ToastImpl toastImpl = this.f52972a;
        if (toastImpl != null) {
            toastImpl.e();
        }
    }

    @Override // gs.a
    public int getDuration() {
        return this.f52976e;
    }

    @Override // gs.a
    public int getGravity() {
        return this.f52975d;
    }

    @Override // gs.a
    public float getHorizontalMargin() {
        return this.f52979h;
    }

    @Override // gs.a
    public float getVerticalMargin() {
        return this.f52980i;
    }

    @Override // gs.a
    public View getView() {
        return this.f52973b;
    }

    @Override // gs.a
    public int getXOffset() {
        return this.f52977f;
    }

    @Override // gs.a
    public int getYOffset() {
        return this.f52978g;
    }

    @Override // gs.a
    public void setDuration(int i11) {
        this.f52976e = i11;
    }

    @Override // gs.a
    public void setGravity(int i11, int i12, int i13) {
        this.f52975d = i11;
        this.f52977f = i12;
        this.f52978g = i13;
    }

    @Override // gs.a
    public void setMargin(float f11, float f12) {
        this.f52979h = f11;
        this.f52980i = f12;
    }

    @Override // gs.a
    public void setText(CharSequence charSequence) {
        TextView textView = this.f52974c;
        if (textView == null) {
            return;
        }
        Intrinsics.e(textView);
        textView.setText(charSequence);
    }

    @Override // gs.a
    public void setView(View view) {
        this.f52973b = view;
        if (view == null) {
            this.f52974c = null;
        } else {
            Intrinsics.e(view);
            this.f52974c = b(view);
        }
    }

    @Override // gs.a
    public void show() {
        ToastImpl toastImpl = this.f52972a;
        if (toastImpl != null) {
            toastImpl.h();
        }
    }
}
