package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;

/* JADX INFO: loaded from: classes4.dex */
class n extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CalendarConstraints f28899a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DateSelector f28900b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DayViewDecorator f28901c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final MaterialCalendar.k f28902d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f28903e;

    class a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MaterialCalendarGridView f28904a;

        a(MaterialCalendarGridView materialCalendarGridView) {
            this.f28904a = materialCalendarGridView;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView adapterView, View view, int i11, long j11) {
            if (this.f28904a.getAdapter().r(i11)) {
                n.this.f28902d.a(this.f28904a.getAdapter().getItem(i11).longValue());
            }
        }
    }

    public static class b extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final TextView f28906a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final MaterialCalendarGridView f28907b;

        b(LinearLayout linearLayout, boolean z10) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R$id.month_title);
            this.f28906a = textView;
            ViewCompat.setAccessibilityHeading(textView, true);
            this.f28907b = (MaterialCalendarGridView) linearLayout.findViewById(R$id.month_grid);
            if (z10) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    n(Context context, DateSelector dateSelector, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator, MaterialCalendar.k kVar) {
        Month start = calendarConstraints.getStart();
        Month end = calendarConstraints.getEnd();
        Month openAt = calendarConstraints.getOpenAt();
        if (start.compareTo(openAt) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (openAt.compareTo(end) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f28903e = (m.f28891g * MaterialCalendar.k0(context)) + (MaterialDatePicker.m0(context) ? MaterialCalendar.k0(context) : 0);
        this.f28899a = calendarConstraints;
        this.f28900b = dateSelector;
        this.f28901c = dayViewDecorator;
        this.f28902d = kVar;
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f28899a.getMonthSpan();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i11) {
        return this.f28899a.getStart().k(i11).j();
    }

    Month h(int i11) {
        return this.f28899a.getStart().k(i11);
    }

    CharSequence i(int i11) {
        return h(i11).i();
    }

    int j(Month month) {
        return this.f28899a.getStart().l(month);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(b bVar, int i11) {
        Month monthK = this.f28899a.getStart().k(i11);
        bVar.f28906a.setText(monthK.i());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) bVar.f28907b.findViewById(R$id.month_grid);
        if (materialCalendarGridView.getAdapter() == null || !monthK.equals(materialCalendarGridView.getAdapter().f28893a)) {
            m mVar = new m(monthK, this.f28900b, this.f28899a, this.f28901c);
            materialCalendarGridView.setNumColumns(monthK.f28844c);
            materialCalendarGridView.setAdapter((ListAdapter) mVar);
        } else {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter().q(materialCalendarGridView);
        }
        materialCalendarGridView.setOnItemClickListener(new a(materialCalendarGridView));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(ViewGroup viewGroup, int i11) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!MaterialDatePicker.m0(viewGroup.getContext())) {
            return new b(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.n(-1, this.f28903e));
        return new b(linearLayout, true);
    }
}
