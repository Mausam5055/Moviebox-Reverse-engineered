package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$styleable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
abstract class g extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Runnable f30119a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f30120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ab.i f30121c;

    public g(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        LayoutInflater.from(context).inflate(R$layout.material_radial_view_group, this);
        ViewCompat.setBackground(this, i());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RadialViewGroup, i11, 0);
        this.f30120b = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.RadialViewGroup_materialCircleRadius, 0);
        this.f30119a = new Runnable() { // from class: com.google.android.material.timepicker.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f30118a.n();
            }
        };
        typedArrayObtainStyledAttributes.recycle();
    }

    private void h(List list, androidx.constraintlayout.widget.b bVar, int i11) {
        Iterator it = list.iterator();
        float size = 0.0f;
        while (it.hasNext()) {
            bVar.u(((View) it.next()).getId(), R$id.circle_center, i11, size);
            size += 360.0f / list.size();
        }
    }

    private Drawable i() {
        ab.i iVar = new ab.i();
        this.f30121c = iVar;
        iVar.b0(new ab.l(0.5f));
        this.f30121c.d0(ColorStateList.valueOf(-1));
        return this.f30121c;
    }

    private static boolean m(View view) {
        return "skip".equals(view.getTag());
    }

    private void o() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f30119a);
            handler.post(this.f30119a);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i11, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i11, layoutParams);
        if (view.getId() == -1) {
            view.setId(ViewCompat.generateViewId());
        }
        o();
    }

    int j(int i11) {
        return i11 == 2 ? Math.round(this.f30120b * 0.66f) : this.f30120b;
    }

    public int k() {
        return this.f30120b;
    }

    public void l(int i11) {
        this.f30120b = i11;
        n();
    }

    protected void n() {
        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
        bVar.q(this);
        HashMap map = new HashMap();
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getId() != R$id.circle_center && !m(childAt)) {
                int i12 = (Integer) childAt.getTag(R$id.material_clock_level);
                if (i12 == null) {
                    i12 = 1;
                }
                if (!map.containsKey(i12)) {
                    map.put(i12, new ArrayList());
                }
                ((List) map.get(i12)).add(childAt);
            }
        }
        for (Map.Entry entry : map.entrySet()) {
            h((List) entry.getValue(), bVar, j(((Integer) entry.getKey()).intValue()));
        }
        bVar.i(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        n();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        o();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i11) {
        this.f30121c.d0(ColorStateList.valueOf(i11));
    }
}
