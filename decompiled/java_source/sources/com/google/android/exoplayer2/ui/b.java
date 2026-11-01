package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class b extends View implements SubtitleView.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f27103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f27104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f27105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f27106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f27107e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f27108f;

    public b(Context context) {
        this(context, null);
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27103a = new ArrayList();
        this.f27104b = Collections.emptyList();
        this.f27105c = 0;
        this.f27106d = 0.0533f;
        this.f27107e = c.f27110g;
        this.f27108f = 0.08f;
    }

    private static ba.b b(ba.b bVar) {
        ba.b.C0143b c0143bP = bVar.b().k(-3.4028235E38f).l(Integer.MIN_VALUE).p(null);
        if (bVar.f16256f == 0) {
            c0143bP.h(1.0f - bVar.f16255e, 0);
        } else {
            c0143bP.h((-bVar.f16255e) - 1.0f, 1);
        }
        int i11 = bVar.f16257g;
        if (i11 == 0) {
            c0143bP.i(2);
        } else if (i11 == 2) {
            c0143bP.i(0);
        }
        return c0143bP.a();
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public void a(List list, c cVar, float f11, int i11, float f12) {
        this.f27104b = list;
        this.f27107e = cVar;
        this.f27106d = f11;
        this.f27105c = i11;
        this.f27108f = f12;
        while (this.f27103a.size() < list.size()) {
            this.f27103a.add(new j0(getContext()));
        }
        invalidate();
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List list = this.f27104b;
        if (list.isEmpty()) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i11 = paddingBottom - paddingTop;
        float fH = m0.h(this.f27105c, this.f27106d, height, i11);
        if (fH <= 0.0f) {
            return;
        }
        int size = list.size();
        int i12 = 0;
        while (i12 < size) {
            ba.b bVarB = (ba.b) list.get(i12);
            if (bVarB.f16266p != Integer.MIN_VALUE) {
                bVarB = b(bVarB);
            }
            ba.b bVar = bVarB;
            int i13 = paddingBottom;
            ((j0) this.f27103a.get(i12)).b(bVar, this.f27107e, fH, m0.h(bVar.f16264n, bVar.f16265o, height, i11), this.f27108f, canvas, paddingLeft, paddingTop, width, i13);
            i12++;
            size = size;
            i11 = i11;
            paddingBottom = i13;
            width = width;
        }
    }
}
