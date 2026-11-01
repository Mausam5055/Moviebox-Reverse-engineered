package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$layout;
import com.google.android.material.timepicker.TimeModel;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
class y extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MaterialCalendar f28914a;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f28915a;

        a(int i11) {
            this.f28915a = i11;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y.this.f28914a.p0(y.this.f28914a.g0().clamp(Month.b(this.f28915a, y.this.f28914a.i0().f28842a)));
            y.this.f28914a.q0(MaterialCalendar.CalendarSelector.DAY);
        }
    }

    public static class b extends RecyclerView.b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final TextView f28917a;

        b(TextView textView) {
            super(textView);
            this.f28917a = textView;
        }
    }

    y(MaterialCalendar materialCalendar) {
        this.f28914a = materialCalendar;
    }

    private View.OnClickListener h(int i11) {
        return new a(i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f28914a.g0().getYearSpan();
    }

    int i(int i11) {
        return i11 - this.f28914a.g0().getStart().f28843b;
    }

    int j(int i11) {
        return this.f28914a.g0().getStart().f28843b + i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(b bVar, int i11) {
        int iJ = j(i11);
        bVar.f28917a.setText(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(iJ)));
        TextView textView = bVar.f28917a;
        textView.setContentDescription(j.k(textView.getContext(), iJ));
        com.google.android.material.datepicker.b bVarH0 = this.f28914a.h0();
        Calendar calendarQ = x.q();
        com.google.android.material.datepicker.a aVar = calendarQ.get(1) == iJ ? bVarH0.f28869f : bVarH0.f28867d;
        Iterator<Long> it = this.f28914a.j0().getSelectedDays().iterator();
        while (it.hasNext()) {
            calendarQ.setTimeInMillis(it.next().longValue());
            if (calendarQ.get(1) == iJ) {
                aVar = bVarH0.f28868e;
            }
        }
        aVar.d(bVar.f28917a);
        bVar.f28917a.setOnClickListener(h(iJ));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(ViewGroup viewGroup, int i11) {
        return new b((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.mtrl_calendar_year, viewGroup, false));
    }
}
