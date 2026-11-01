package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Rect f28858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ColorStateList f28859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ColorStateList f28860c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ColorStateList f28861d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f28862e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ab.n f28863f;

    private a(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i11, ab.n nVar, Rect rect) {
        androidx.core.util.i.d(rect.left);
        androidx.core.util.i.d(rect.top);
        androidx.core.util.i.d(rect.right);
        androidx.core.util.i.d(rect.bottom);
        this.f28858a = rect;
        this.f28859b = colorStateList2;
        this.f28860c = colorStateList;
        this.f28861d = colorStateList3;
        this.f28862e = i11;
        this.f28863f = nVar;
    }

    static a a(Context context, int i11) {
        androidx.core.util.i.b(i11 != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i11, R$styleable.MaterialCalendarItem);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetLeft, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetTop, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetRight, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R$styleable.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList colorStateListA = xa.c.a(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendarItem_itemFillColor);
        ColorStateList colorStateListA2 = xa.c.a(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendarItem_itemTextColor);
        ColorStateList colorStateListA3 = xa.c.a(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.MaterialCalendarItem_itemStrokeWidth, 0);
        ab.n nVarM = ab.n.b(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendarItem_itemShapeAppearance, 0), typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).m();
        typedArrayObtainStyledAttributes.recycle();
        return new a(colorStateListA, colorStateListA2, colorStateListA3, dimensionPixelSize, nVarM, rect);
    }

    int b() {
        return this.f28858a.bottom;
    }

    int c() {
        return this.f28858a.top;
    }

    void d(TextView textView) {
        e(textView, null, null);
    }

    void e(TextView textView, ColorStateList colorStateList, ColorStateList colorStateList2) {
        ab.i iVar = new ab.i();
        ab.i iVar2 = new ab.i();
        iVar.setShapeAppearanceModel(this.f28863f);
        iVar2.setShapeAppearanceModel(this.f28863f);
        if (colorStateList == null) {
            colorStateList = this.f28860c;
        }
        iVar.d0(colorStateList);
        iVar.m0(this.f28862e, this.f28861d);
        if (colorStateList2 == null) {
            colorStateList2 = this.f28859b;
        }
        textView.setTextColor(colorStateList2);
        RippleDrawable rippleDrawable = new RippleDrawable(this.f28859b.withAlpha(30), iVar, iVar2);
        Rect rect = this.f28858a;
        ViewCompat.setBackground(textView, new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }
}
