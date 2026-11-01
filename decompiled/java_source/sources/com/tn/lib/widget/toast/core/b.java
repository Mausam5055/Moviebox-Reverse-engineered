package com.tn.lib.widget.toast.core;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements vh.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ToastImpl f41461a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f41462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f41463c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f41464d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f41465e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f41466f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f41467g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f41468h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f41469i;

    public b(Activity activity) {
        this.f41461a = new ToastImpl(activity, this);
    }

    @Override // vh.a
    public boolean a() {
        return this.f41463c == null;
    }

    @Override // vh.a
    public void b(View view) {
        this.f41462b = view;
        if (view == null) {
            this.f41463c = null;
        } else {
            Intrinsics.e(view);
            this.f41463c = d(view);
        }
    }

    @Override // vh.a
    public View c() {
        return this.f41462b;
    }

    @Override // vh.a
    public void cancel() {
        ToastImpl toastImpl = this.f41461a;
        if (toastImpl != null) {
            toastImpl.e();
        }
    }

    public TextView d(View view) {
        return vh.a.C0950a.a(this, view);
    }

    public final void e(View view) {
        Intrinsics.h(view, "view");
        this.f41462b = view;
    }

    @Override // vh.a
    public int getDuration() {
        return this.f41465e;
    }

    @Override // vh.a
    public int getGravity() {
        return this.f41464d;
    }

    @Override // vh.a
    public float getHorizontalMargin() {
        return this.f41468h;
    }

    @Override // vh.a
    public float getVerticalMargin() {
        return this.f41469i;
    }

    @Override // vh.a
    public int getXOffset() {
        return this.f41466f;
    }

    @Override // vh.a
    public int getYOffset() {
        return this.f41467g;
    }

    @Override // vh.a
    public void setDuration(int i11) {
        this.f41465e = i11;
    }

    @Override // vh.a
    public void setGravity(int i11, int i12, int i13) {
        this.f41464d = i11;
        this.f41466f = i12;
        this.f41467g = i13;
    }

    @Override // vh.a
    public void setMargin(float f11, float f12) {
        this.f41468h = f11;
        this.f41469i = f12;
    }

    @Override // vh.a
    public void setText(CharSequence charSequence) {
        TextView textView = this.f41463c;
        if (textView == null) {
            return;
        }
        Intrinsics.e(textView);
        textView.setText(charSequence);
    }

    @Override // vh.a
    public void show() {
        ToastImpl toastImpl = this.f41461a;
        if (toastImpl != null) {
            toastImpl.h();
        }
    }
}
