package com.google.android.material.datepicker;

import android.content.res.Resources;
import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import com.google.android.material.R$string;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
abstract class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static AtomicReference f28913a = new AtomicReference();

    static long a(long j11) {
        Calendar calendarS = s();
        calendarS.setTimeInMillis(j11);
        return f(calendarS).getTimeInMillis();
    }

    private static int b(String str, String str2, int i11, int i12) {
        while (i12 >= 0 && i12 < str.length() && str2.indexOf(str.charAt(i12)) == -1) {
            if (str.charAt(i12) == '\'') {
                do {
                    i12 += i11;
                    if (i12 < 0 || i12 >= str.length()) {
                        break;
                    }
                } while (str.charAt(i12) != '\'');
            }
            i12 += i11;
        }
        return i12;
    }

    static DateFormat c(Locale locale) {
        return d("MMMd", locale);
    }

    private static DateFormat d(String str, Locale locale) {
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(r());
        instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
        return instanceForSkeleton;
    }

    static String e(String str) {
        return str.replaceAll("[^dMy/\\-.]", "").replaceAll("d{1,2}", "dd").replaceAll("M{1,2}", "MM").replaceAll("y{1,4}", "yyyy").replaceAll("\\.$", "").replaceAll("My", "M/y");
    }

    static Calendar f(Calendar calendar) {
        Calendar calendarT = t(calendar);
        Calendar calendarS = s();
        calendarS.set(calendarT.get(1), calendarT.get(2), calendarT.get(5));
        return calendarS;
    }

    static SimpleDateFormat g() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(e(((SimpleDateFormat) java.text.DateFormat.getDateInstance(3, Locale.getDefault())).toPattern()), Locale.getDefault());
        simpleDateFormat.setTimeZone(p());
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }

    static String h(Resources resources, SimpleDateFormat simpleDateFormat) {
        String pattern = simpleDateFormat.toPattern();
        String string = resources.getString(R$string.mtrl_picker_text_input_year_abbr);
        String string2 = resources.getString(R$string.mtrl_picker_text_input_month_abbr);
        String string3 = resources.getString(R$string.mtrl_picker_text_input_day_abbr);
        if (Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage())) {
            pattern = pattern.replaceAll("d+", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D).replaceAll("M+", "M").replaceAll("y+", "y");
        }
        return pattern.replace(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, string3).replace("M", string2).replace("y", string);
    }

    private static java.text.DateFormat i(int i11, Locale locale) {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(i11, locale);
        dateInstance.setTimeZone(p());
        return dateInstance;
    }

    static java.text.DateFormat j(Locale locale) {
        return i(0, locale);
    }

    static java.text.DateFormat k(Locale locale) {
        return i(2, locale);
    }

    static java.text.DateFormat l(Locale locale) {
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) k(locale);
        simpleDateFormat.applyPattern(x(simpleDateFormat.toPattern()));
        return simpleDateFormat;
    }

    static DateFormat m(Locale locale) {
        return d("MMMMEEEEd", locale);
    }

    static java.text.DateFormat n(java.text.DateFormat dateFormat) {
        java.text.DateFormat dateFormat2 = (java.text.DateFormat) dateFormat.clone();
        dateFormat2.setTimeZone(p());
        return dateFormat2;
    }

    static r o() {
        r rVar = (r) f28913a.get();
        return rVar == null ? r.c() : rVar;
    }

    private static TimeZone p() {
        return TimeZone.getTimeZone("UTC");
    }

    static Calendar q() {
        Calendar calendarA = o().a();
        calendarA.set(11, 0);
        calendarA.set(12, 0);
        calendarA.set(13, 0);
        calendarA.set(14, 0);
        calendarA.setTimeZone(p());
        return calendarA;
    }

    private static android.icu.util.TimeZone r() {
        return android.icu.util.TimeZone.getTimeZone("UTC");
    }

    static Calendar s() {
        return t(null);
    }

    static Calendar t(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(p());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }

    static DateFormat u(Locale locale) {
        return d("yMMMd", locale);
    }

    static DateFormat v(Locale locale) {
        return d("yMMMM", locale);
    }

    static DateFormat w(Locale locale) {
        return d("yMMMMEEEEd", locale);
    }

    private static String x(String str) {
        int iB = b(str, "yY", 1, 0);
        if (iB >= str.length()) {
            return str;
        }
        String str2 = "EMd";
        int iB2 = b(str, "EMd", 1, iB);
        if (iB2 < str.length()) {
            str2 = "EMd,";
        }
        return str.replace(str.substring(b(str, str2, -1, iB) + 1, iB2), " ").trim();
    }
}
