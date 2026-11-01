package androidx.media3.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class a extends View implements SubtitleView.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f13623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List f13624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f13625c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f13626d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f13627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f13628f;

    public a(Context context) {
        this(context, null);
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13623a = new ArrayList();
        this.f13624b = Collections.emptyList();
        this.f13625c = 0;
        this.f13626d = 0.0533f;
        this.f13627e = b.f13631g;
        this.f13628f = 0.08f;
    }

    private static u1.a b(u1.a aVar) {
        u1.a.b bVarP = aVar.a().k(-3.4028235E38f).l(Integer.MIN_VALUE).p(null);
        if (aVar.f76563f == 0) {
            bVarP.h(1.0f - aVar.f76562e, 0);
        } else {
            bVarP.h((-aVar.f76562e) - 1.0f, 1);
        }
        int i11 = aVar.f76564g;
        if (i11 == 0) {
            bVarP.i(2);
        } else if (i11 == 2) {
            bVarP.i(0);
        }
        return bVarP.a();
    }

    @Override // androidx.media3.ui.SubtitleView.a
    public void a(List list, b bVar, float f11, int i11, float f12) {
        this.f13624b = list;
        this.f13627e = bVar;
        this.f13626d = f11;
        this.f13625c = i11;
        this.f13628f = f12;
        while (this.f13623a.size() < list.size()) {
            this.f13623a.add(new u0(getContext()));
        }
        invalidate();
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        List list = this.f13624b;
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
        float fH = x0.h(this.f13625c, this.f13626d, height, i11);
        if (fH <= 0.0f) {
            return;
        }
        int size = list.size();
        int i12 = 0;
        while (i12 < size) {
            u1.a aVarB = (u1.a) list.get(i12);
            if (aVarB.f76573p != Integer.MIN_VALUE) {
                aVarB = b(aVarB);
            }
            u1.a aVar = aVarB;
            int i13 = paddingBottom;
            ((u0) this.f13623a.get(i12)).b(aVar, this.f13627e, fH, x0.h(aVar.f76571n, aVar.f76572o, height, i11), this.f13628f, canvas, paddingLeft, paddingTop, width, i13);
            i12++;
            size = size;
            i11 = i11;
            paddingBottom = i13;
            width = width;
        }
    }
}
