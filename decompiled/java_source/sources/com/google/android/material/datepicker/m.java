package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.R$layout;
import com.google.android.material.timepicker.TimeModel;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
class m extends BaseAdapter {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final int f28891g = x.s().getMaximum(4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f28892h = (x.s().getMaximum(5) + x.s().getMaximum(7)) - 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Month f28893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final DateSelector f28894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Collection f28895c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    b f28896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final CalendarConstraints f28897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final DayViewDecorator f28898f;

    m(Month month, DateSelector dateSelector, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator) {
        this.f28893a = month;
        this.f28894b = dateSelector;
        this.f28897e = calendarConstraints;
        this.f28898f = dayViewDecorator;
        this.f28895c = dateSelector.getSelectedDays();
    }

    private String c(Context context, long j11) {
        return j.e(context, j11, l(j11), k(j11), g(j11));
    }

    private void f(Context context) {
        if (this.f28896d == null) {
            this.f28896d = new b(context);
        }
    }

    private boolean j(long j11) {
        Iterator<Long> it = this.f28894b.getSelectedDays().iterator();
        while (it.hasNext()) {
            if (x.a(j11) == x.a(it.next().longValue())) {
                return true;
            }
        }
        return false;
    }

    private boolean l(long j11) {
        return x.q().getTimeInMillis() == j11;
    }

    private void o(TextView textView, long j11, int i11) {
        boolean z10;
        a aVar;
        a aVar2;
        if (textView == null) {
            return;
        }
        Context context = textView.getContext();
        String strC = c(context, j11);
        textView.setContentDescription(strC);
        boolean zIsValid = this.f28897e.getDateValidator().isValid(j11);
        if (zIsValid) {
            textView.setEnabled(true);
            boolean zJ = j(j11);
            textView.setSelected(zJ);
            if (zJ) {
                aVar2 = this.f28896d.f28865b;
            } else {
                aVar2 = l(j11) ? this.f28896d.f28866c : this.f28896d.f28864a;
            }
            aVar = aVar2;
            z10 = zJ;
        } else {
            textView.setEnabled(false);
            z10 = false;
            aVar = this.f28896d.f28870g;
        }
        DayViewDecorator dayViewDecorator = this.f28898f;
        if (dayViewDecorator == null || i11 == -1) {
            aVar.d(textView);
            return;
        }
        Month month = this.f28893a;
        int i12 = month.f28843b;
        int i13 = month.f28842a;
        ColorStateList backgroundColor = dayViewDecorator.getBackgroundColor(context, i12, i13, i11, zIsValid, z10);
        boolean z11 = z10;
        aVar.e(textView, backgroundColor, this.f28898f.getTextColor(context, i12, i13, i11, zIsValid, z11));
        Drawable compoundDrawableLeft = this.f28898f.getCompoundDrawableLeft(context, i12, i13, i11, zIsValid, z11);
        Drawable compoundDrawableTop = this.f28898f.getCompoundDrawableTop(context, i12, i13, i11, zIsValid, z11);
        Drawable compoundDrawableRight = this.f28898f.getCompoundDrawableRight(context, i12, i13, i11, zIsValid, z11);
        boolean z12 = z10;
        textView.setCompoundDrawables(compoundDrawableLeft, compoundDrawableTop, compoundDrawableRight, this.f28898f.getCompoundDrawableBottom(context, i12, i13, i11, zIsValid, z12));
        textView.setContentDescription(this.f28898f.getContentDescription(context, i12, i13, i11, zIsValid, z12, strC));
    }

    private void p(MaterialCalendarGridView materialCalendarGridView, long j11) {
        if (Month.d(j11).equals(this.f28893a)) {
            int iH = this.f28893a.h(j11);
            o((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().a(iH) - materialCalendarGridView.getFirstVisiblePosition()), j11, iH);
        }
    }

    int a(int i11) {
        return b() + (i11 - 1);
    }

    int b() {
        return this.f28893a.f(this.f28897e.getFirstDayOfWeek());
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Long getItem(int i11) {
        if (i11 < b() || i11 > m()) {
            return null;
        }
        return Long.valueOf(this.f28893a.g(n(i11)));
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0054  */
    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public TextView getView(int i11, View view, ViewGroup viewGroup) {
        int i12;
        f(viewGroup.getContext());
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.mtrl_calendar_day, viewGroup, false);
        }
        int iB = i11 - b();
        if (iB >= 0) {
            Month month = this.f28893a;
            if (iB >= month.f28845d) {
                textView.setVisibility(8);
                textView.setEnabled(false);
                i12 = -1;
            } else {
                i12 = iB + 1;
                textView.setTag(month);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, TimeModel.NUMBER_FORMAT, Integer.valueOf(i12)));
                textView.setVisibility(0);
                textView.setEnabled(true);
            }
        } else {
            textView.setVisibility(8);
            textView.setEnabled(false);
            i12 = -1;
        }
        Long item = getItem(i11);
        if (item == null) {
            return textView;
        }
        o(textView, item.longValue(), i12);
        return textView;
    }

    boolean g(long j11) {
        Iterator<androidx.core.util.e> it = this.f28894b.getSelectedRanges().iterator();
        while (it.hasNext()) {
            Object obj = it.next().f8268b;
            if (obj != null && ((Long) obj).longValue() == j11) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return f28892h;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i11) {
        return i11 / this.f28893a.f28844c;
    }

    boolean h(int i11) {
        return i11 % this.f28893a.f28844c == 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    boolean i(int i11) {
        return (i11 + 1) % this.f28893a.f28844c == 0;
    }

    boolean k(long j11) {
        Iterator<androidx.core.util.e> it = this.f28894b.getSelectedRanges().iterator();
        while (it.hasNext()) {
            Object obj = it.next().f8267a;
            if (obj != null && ((Long) obj).longValue() == j11) {
                return true;
            }
        }
        return false;
    }

    int m() {
        return (b() + this.f28893a.f28845d) - 1;
    }

    int n(int i11) {
        return (i11 - b()) + 1;
    }

    public void q(MaterialCalendarGridView materialCalendarGridView) {
        Iterator it = this.f28895c.iterator();
        while (it.hasNext()) {
            p(materialCalendarGridView, ((Long) it.next()).longValue());
        }
        DateSelector dateSelector = this.f28894b;
        if (dateSelector != null) {
            Iterator<Long> it2 = dateSelector.getSelectedDays().iterator();
            while (it2.hasNext()) {
                p(materialCalendarGridView, it2.next().longValue());
            }
            this.f28895c = this.f28894b.getSelectedDays();
        }
    }

    boolean r(int i11) {
        return i11 >= b() && i11 <= m();
    }
}
