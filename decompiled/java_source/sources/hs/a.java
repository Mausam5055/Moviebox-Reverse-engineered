package hs;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a implements gs.c {
    @Override // gs.c
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public TextView createView(Context context) {
        TextView textView = new TextView(context);
        textView.setId(R.id.message);
        textView.setGravity(f(context));
        textView.setTextColor(e(context));
        textView.setTextSize(0, g(context));
        int iC = c(context);
        int i11 = i(context);
        textView.setPaddingRelative(iC, i11, iC, i11);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        textView.setBackground(b(context));
        textView.setZ(h(context));
        textView.setMaxLines(d(context));
        return textView;
    }

    protected final Drawable b(Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-2013265920);
        Intrinsics.e(context);
        gradientDrawable.setCornerRadius(TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics()));
        return gradientDrawable;
    }

    protected final int c(Context context) {
        Intrinsics.e(context);
        return (int) TypedValue.applyDimension(1, 24.0f, context.getResources().getDisplayMetrics());
    }

    protected final int d(Context context) {
        return 5;
    }

    protected final int e(Context context) {
        return -285212673;
    }

    protected final int f(Context context) {
        return 17;
    }

    protected final float g(Context context) {
        Intrinsics.e(context);
        return TypedValue.applyDimension(2, 14.0f, context.getResources().getDisplayMetrics());
    }

    @Override // gs.c
    public int getGravity() {
        return gs.c.a.a(this);
    }

    @Override // gs.c
    public float getHorizontalMargin() {
        return gs.c.a.b(this);
    }

    @Override // gs.c
    public float getVerticalMargin() {
        return gs.c.a.c(this);
    }

    @Override // gs.c
    public int getXOffset() {
        return gs.c.a.d(this);
    }

    @Override // gs.c
    public int getYOffset() {
        return gs.c.a.e(this);
    }

    protected final float h(Context context) {
        Intrinsics.e(context);
        return TypedValue.applyDimension(1, 3.0f, context.getResources().getDisplayMetrics());
    }

    protected final int i(Context context) {
        Intrinsics.e(context);
        return (int) TypedValue.applyDimension(1, 16.0f, context.getResources().getDisplayMetrics());
    }
}
