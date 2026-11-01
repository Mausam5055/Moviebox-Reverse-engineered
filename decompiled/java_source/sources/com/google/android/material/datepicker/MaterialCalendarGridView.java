package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$id;
import com.google.android.material.internal.f0;
import java.util.Calendar;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
final class MaterialCalendarGridView extends GridView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Calendar f28802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f28803b;

    class a extends AccessibilityDelegateCompat {
        a() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(null);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f28802a = x.s();
        if (MaterialDatePicker.m0(getContext())) {
            setNextFocusLeftId(R$id.cancel_button);
            setNextFocusRightId(R$id.confirm_button);
        }
        this.f28803b = MaterialDatePicker.o0(getContext());
        ViewCompat.setAccessibilityDelegate(this, new a());
    }

    private void a(int i11, Rect rect) {
        if (i11 == 33) {
            setSelection(getAdapter().m());
        } else if (i11 == 130) {
            setSelection(getAdapter().b());
        } else {
            super.onFocusChanged(true, i11, rect);
        }
    }

    private View c(int i11) {
        return getChildAt(i11 - getFirstVisiblePosition());
    }

    private static int d(View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    private static boolean e(Long l11, Long l12, Long l13, Long l14) {
        return l11 == null || l12 == null || l13 == null || l14 == null || l13.longValue() > l12.longValue() || l14.longValue() < l11.longValue();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public m getAdapter() {
        return (m) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        int iA;
        int iD;
        int iA2;
        int iD2;
        int width;
        int i11;
        int right;
        int right2;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        m adapter = getAdapter();
        DateSelector dateSelector = adapter.f28894b;
        b bVar = adapter.f28896d;
        int iMax = Math.max(adapter.b(), getFirstVisiblePosition());
        int iMin = Math.min(adapter.m(), getLastVisiblePosition());
        Long item = adapter.getItem(iMax);
        Long item2 = adapter.getItem(iMin);
        Iterator<androidx.core.util.e> it = dateSelector.getSelectedRanges().iterator();
        while (it.hasNext()) {
            androidx.core.util.e next = it.next();
            Object obj = next.f8267a;
            if (obj == null) {
                materialCalendarGridView = this;
            } else if (next.f8268b != null) {
                Long l11 = (Long) obj;
                long jLongValue = l11.longValue();
                Long l12 = (Long) next.f8268b;
                long jLongValue2 = l12.longValue();
                if (!e(item, item2, l11, l12)) {
                    boolean zP = f0.p(this);
                    if (jLongValue < item.longValue()) {
                        if (adapter.h(iMax)) {
                            right2 = 0;
                        } else {
                            right2 = !zP ? materialCalendarGridView.c(iMax - 1).getRight() : materialCalendarGridView.c(iMax - 1).getLeft();
                        }
                        iD = right2;
                        iA = iMax;
                    } else {
                        materialCalendarGridView.f28802a.setTimeInMillis(jLongValue);
                        iA = adapter.a(materialCalendarGridView.f28802a.get(5));
                        iD = d(materialCalendarGridView.c(iA));
                    }
                    if (jLongValue2 > item2.longValue()) {
                        if (adapter.i(iMin)) {
                            right = getWidth();
                        } else {
                            right = !zP ? materialCalendarGridView.c(iMin).getRight() : materialCalendarGridView.c(iMin).getLeft();
                        }
                        iD2 = right;
                        iA2 = iMin;
                    } else {
                        materialCalendarGridView.f28802a.setTimeInMillis(jLongValue2);
                        iA2 = adapter.a(materialCalendarGridView.f28802a.get(5));
                        iD2 = d(materialCalendarGridView.c(iA2));
                    }
                    int itemId = (int) adapter.getItemId(iA);
                    int i12 = iMax;
                    int i13 = iMin;
                    int itemId2 = (int) adapter.getItemId(iA2);
                    while (itemId <= itemId2) {
                        int numColumns = getNumColumns() * itemId;
                        int numColumns2 = (numColumns + getNumColumns()) - 1;
                        View viewC = materialCalendarGridView.c(numColumns);
                        int top = viewC.getTop() + bVar.f28864a.c();
                        m mVar = adapter;
                        int bottom = viewC.getBottom() - bVar.f28864a.b();
                        if (zP) {
                            int i14 = iA2 > numColumns2 ? 0 : iD2;
                            width = numColumns > iA ? getWidth() : iD;
                            i11 = i14;
                        } else {
                            i11 = numColumns > iA ? 0 : iD;
                            width = iA2 > numColumns2 ? getWidth() : iD2;
                        }
                        canvas.drawRect(i11, top, width, bottom, bVar.f28871h);
                        itemId++;
                        materialCalendarGridView = this;
                        it = it;
                        adapter = mVar;
                    }
                    materialCalendarGridView = this;
                    iMax = i12;
                    iMin = i13;
                }
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z10, int i11, Rect rect) {
        if (z10) {
            a(i11, rect);
        } else {
            super.onFocusChanged(false, i11, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i11, KeyEvent keyEvent) {
        if (!super.onKeyDown(i11, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().b()) {
            return true;
        }
        if (19 != i11) {
            return false;
        }
        setSelection(getAdapter().b());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i11, int i12) {
        if (!this.f28803b) {
            super.onMeasure(i11, i12);
            return;
        }
        super.onMeasure(i11, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof m)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), m.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i11) {
        if (i11 < getAdapter().b()) {
            super.setSelection(getAdapter().b());
        } else {
            super.setSelection(i11);
        }
    }
}
