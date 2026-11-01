package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes4.dex */
class r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final r f28910c = new r(null, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Long f28911a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TimeZone f28912b;

    private r(Long l11, TimeZone timeZone) {
        this.f28911a = l11;
        this.f28912b = timeZone;
    }

    static r c() {
        return f28910c;
    }

    Calendar a() {
        return b(this.f28912b);
    }

    Calendar b(TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l11 = this.f28911a;
        if (l11 != null) {
            calendar.setTimeInMillis(l11.longValue());
        }
        return calendar;
    }
}
