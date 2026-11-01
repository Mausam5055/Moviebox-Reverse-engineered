package com.google.android.flexbox;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f28139e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f28140f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f28141g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f28142h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f28143i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f28144j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    float f28145k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f28146l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f28147m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f28149o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f28150p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f28151q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    boolean f28152r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f28135a = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f28136b = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f28137c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f28138d = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    List f28148n = new ArrayList();

    b() {
    }

    public int a() {
        return this.f28141g;
    }

    public int b() {
        return this.f28142h;
    }

    public int c() {
        return this.f28142h - this.f28143i;
    }

    void d(View view, int i11, int i12, int i13, int i14) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        this.f28135a = Math.min(this.f28135a, (view.getLeft() - flexItem.getMarginLeft()) - i11);
        this.f28136b = Math.min(this.f28136b, (view.getTop() - flexItem.getMarginTop()) - i12);
        this.f28137c = Math.max(this.f28137c, view.getRight() + flexItem.getMarginRight() + i13);
        this.f28138d = Math.max(this.f28138d, view.getBottom() + flexItem.getMarginBottom() + i14);
    }
}
