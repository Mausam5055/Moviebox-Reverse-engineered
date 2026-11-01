package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Build;
import android.text.format.DateUtils;
import com.google.android.material.R$string;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
abstract class j {
    static androidx.core.util.e a(Long l11, Long l12) {
        return b(l11, l12, null);
    }

    static androidx.core.util.e b(Long l11, Long l12, SimpleDateFormat simpleDateFormat) {
        if (l11 == null && l12 == null) {
            return androidx.core.util.e.a(null, null);
        }
        if (l11 == null) {
            return androidx.core.util.e.a(null, d(l12.longValue(), simpleDateFormat));
        }
        if (l12 == null) {
            return androidx.core.util.e.a(d(l11.longValue(), simpleDateFormat), null);
        }
        Calendar calendarQ = x.q();
        Calendar calendarS = x.s();
        calendarS.setTimeInMillis(l11.longValue());
        Calendar calendarS2 = x.s();
        calendarS2.setTimeInMillis(l12.longValue());
        if (simpleDateFormat != null) {
            return androidx.core.util.e.a(simpleDateFormat.format(new Date(l11.longValue())), simpleDateFormat.format(new Date(l12.longValue())));
        }
        if (calendarS.get(1) == calendarS2.get(1)) {
            return calendarS.get(1) == calendarQ.get(1) ? androidx.core.util.e.a(g(l11.longValue(), Locale.getDefault()), g(l12.longValue(), Locale.getDefault())) : androidx.core.util.e.a(g(l11.longValue(), Locale.getDefault()), n(l12.longValue(), Locale.getDefault()));
        }
        return androidx.core.util.e.a(n(l11.longValue(), Locale.getDefault()), n(l12.longValue(), Locale.getDefault()));
    }

    static String c(long j11) {
        return d(j11, null);
    }

    static String d(long j11, SimpleDateFormat simpleDateFormat) {
        if (simpleDateFormat != null) {
            return simpleDateFormat.format(new Date(j11));
        }
        return q(j11) ? f(j11) : m(j11);
    }

    static String e(Context context, long j11, boolean z10, boolean z11, boolean z12) {
        String strJ = j(j11);
        if (z10) {
            strJ = String.format(context.getString(R$string.mtrl_picker_today_description), strJ);
        }
        if (z11) {
            return String.format(context.getString(R$string.mtrl_picker_start_date_description), strJ);
        }
        return z12 ? String.format(context.getString(R$string.mtrl_picker_end_date_description), strJ) : strJ;
    }

    static String f(long j11) {
        return g(j11, Locale.getDefault());
    }

    static String g(long j11, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? x.c(locale).format(new Date(j11)) : x.l(locale).format(new Date(j11));
    }

    static String h(long j11) {
        return i(j11, Locale.getDefault());
    }

    static String i(long j11, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? x.m(locale).format(new Date(j11)) : x.j(locale).format(new Date(j11));
    }

    static String j(long j11) {
        return q(j11) ? h(j11) : o(j11);
    }

    static String k(Context context, int i11) {
        return x.q().get(1) == i11 ? String.format(context.getString(R$string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i11)) : String.format(context.getString(R$string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i11));
    }

    static String l(long j11) {
        return Build.VERSION.SDK_INT >= 24 ? x.v(Locale.getDefault()).format(new Date(j11)) : DateUtils.formatDateTime(null, j11, 8228);
    }

    static String m(long j11) {
        return n(j11, Locale.getDefault());
    }

    static String n(long j11, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? x.u(locale).format(new Date(j11)) : x.k(locale).format(new Date(j11));
    }

    static String o(long j11) {
        return p(j11, Locale.getDefault());
    }

    static String p(long j11, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? x.w(locale).format(new Date(j11)) : x.j(locale).format(new Date(j11));
    }

    private static boolean q(long j11) {
        Calendar calendarQ = x.q();
        Calendar calendarS = x.s();
        calendarS.setTimeInMillis(j11);
        return calendarQ.get(1) == calendarS.get(1);
    }
}
