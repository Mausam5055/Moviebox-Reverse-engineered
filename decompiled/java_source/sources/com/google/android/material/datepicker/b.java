package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes4.dex */
final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final a f28864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final a f28865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final a f28866c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final a f28867d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final a f28868e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final a f28869f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final a f28870g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Paint f28871h;

    b(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(xa.b.d(context, R$attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), R$styleable.MaterialCalendar);
        this.f28864a = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_dayStyle, 0));
        this.f28870g = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_dayInvalidStyle, 0));
        this.f28865b = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_daySelectedStyle, 0));
        this.f28866c = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList colorStateListA = xa.c.a(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendar_rangeFillColor);
        this.f28867d = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_yearStyle, 0));
        this.f28868e = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_yearSelectedStyle, 0));
        this.f28869f = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_yearTodayStyle, 0));
        Paint paint = new Paint();
        this.f28871h = paint;
        paint.setColor(colorStateListA.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
