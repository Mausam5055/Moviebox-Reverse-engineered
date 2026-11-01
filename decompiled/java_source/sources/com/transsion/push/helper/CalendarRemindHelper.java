package com.transsion.push.helper;

import android.app.Application;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CalendarContract;
import android.util.Log;
import com.blankj.utilcode.util.PermissionUtils;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.u;
import com.google.android.gms.common.util.GmsVersion;
import com.google.gson.Gson;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.mmkv.MMKV;
import com.transsion.mbtools.MD5HashProvider;
import com.transsion.push.bean.CalendarData;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n1;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class CalendarRemindHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static HashMap f50849b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CalendarRemindHelper f50848a = new CalendarRemindHelper();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f50850c = LazyKt.b(new Function0() { // from class: com.transsion.push.helper.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CalendarRemindHelper.u();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f50851d = LazyKt.b(new Function0() { // from class: com.transsion.push.helper.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CalendarRemindHelper.t();
        }
    });

    public static final class a implements PermissionUtils.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function0 f50852a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function0 f50853b;

        a(Function0 function0, Function0 function1) {
            this.f50852a = function0;
            this.f50853b = function1;
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.b
        public void onDenied() {
            this.f50853b.invoke();
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.b
        public void onGranted() {
            this.f50852a.invoke();
        }
    }

    private CalendarRemindHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(CalendarData calendarData, Function1 function1, Function0 function0) throws NoSuchAlgorithmException {
        String lastPathSegment;
        CalendarRemindHelper calendarRemindHelper = f50848a;
        if (calendarRemindHelper.r(calendarData)) {
            function1.invoke("Appointment has added");
            return Unit.f67061a;
        }
        Long lO = calendarRemindHelper.o();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("calendarId ");
        sb2.append(lO);
        ContentValues contentValues = new ContentValues();
        String id2 = TimeZone.getDefault().getID();
        contentValues.put("dtstart", calendarData.getStartTime());
        Long startTime = calendarData.getStartTime();
        Intrinsics.e(startTime);
        contentValues.put("dtend", Long.valueOf(startTime.longValue() + ((long) GmsVersion.VERSION_PARMESAN)));
        contentValues.put(CampaignEx.JSON_KEY_TITLE, calendarData.getTitle());
        contentValues.put(TrackingKey.DESCRIPTION, calendarData.getDes());
        contentValues.put("eventLocation", calendarData.getLocation());
        contentValues.put("calendar_id", lO);
        String timeZone = calendarData.getTimeZone();
        if (timeZone == null) {
            timeZone = id2;
        }
        contentValues.put("eventTimezone", timeZone);
        String endTimeZone = calendarData.getEndTimeZone();
        if (endTimeZone != null) {
            id2 = endTimeZone;
        }
        contentValues.put("eventEndTimezone", id2);
        contentValues.put("hasAlarm", (Integer) 1);
        Application applicationA = Utils.a();
        Uri uriInsert = applicationA.getContentResolver().insert(CalendarContract.Events.CONTENT_URI, contentValues);
        if (uriInsert != null && (lastPathSegment = uriInsert.getLastPathSegment()) != null) {
            ContentValues contentValues2 = new ContentValues();
            Integer remindTime = calendarData.getRemindTime();
            contentValues2.put("minutes", Integer.valueOf(remindTime != null ? remindTime.intValue() : 0));
            contentValues2.put("event_id", lastPathSegment);
            contentValues2.put("method", (Integer) 1);
            applicationA.getContentResolver().insert(CalendarContract.Reminders.CONTENT_URI, contentValues2);
        }
        String strA = MD5HashProvider.f46224a.a(String.valueOf(calendarData.getCalendarId()));
        StringBuilder sb3 = new StringBuilder();
        sb3.append("md5 :");
        sb3.append(strA);
        function0.invoke();
        HashMap map = f50849b;
        if (map != null) {
        }
        calendarRemindHelper.w();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(Function1 function1) {
        function1.invoke("checkPermission-onDenied");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(CalendarData calendarData, String str, Function1 function1, Function0 function0) {
        Application applicationA = Utils.a();
        CalendarRemindHelper calendarRemindHelper = f50848a;
        Long lO = calendarRemindHelper.o();
        if (lO == null) {
            function1.invoke("getDefaultCalendarId failed");
            return Unit.f67061a;
        }
        long jLongValue = lO.longValue();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("calendarId ");
        sb2.append(jLongValue);
        Intrinsics.e(applicationA);
        List listV = calendarRemindHelper.v(applicationA, calendarData, jLongValue, str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("eventIds  ");
        sb3.append(listV);
        if (listV.isEmpty()) {
            function1.invoke("No matched event found");
            return Unit.f67061a;
        }
        Iterator it = listV.iterator();
        boolean z10 = true;
        while (it.hasNext()) {
            long jLongValue2 = ((Number) it.next()).longValue();
            try {
                applicationA.getContentResolver().delete(CalendarContract.Reminders.CONTENT_URI, "event_id = ?", new String[]{String.valueOf(jLongValue2)});
                Uri uriWithAppendedId = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, jLongValue2);
                Intrinsics.g(uriWithAppendedId, "withAppendedId(...)");
                if (applicationA.getContentResolver().delete(uriWithAppendedId, null, null) <= 0) {
                    z10 = false;
                }
            } catch (Exception e11) {
                Log.e("CalendarRemindHelper", "delete event error:" + e11.getMessage(), e11);
            }
        }
        if (z10) {
            HashMap map = f50849b;
            if (map != null) {
            }
            f50848a.w();
            function0.invoke();
        } else {
            function1.invoke("Delete event failed");
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(Function1 function1) {
        function1.invoke("checkPermission-onDenied");
        return Unit.f67061a;
    }

    private final void n(Function0 function0, Function0 function1) {
        if (PermissionUtils.s("android.permission.WRITE_CALENDAR", "android.permission.READ_CALENDAR", "android.permission.POST_NOTIFICATIONS")) {
            function0.invoke();
        } else {
            PermissionUtils.x("android.permission.WRITE_CALENDAR", "android.permission.READ_CALENDAR").m(new a(function0, function1)).y();
        }
    }

    private final Long o() {
        Cursor cursorQuery = Utils.a().getContentResolver().query(CalendarContract.Calendars.CONTENT_URI, new String[]{"_id", "calendar_displayName"}, "visible = 1 AND sync_events = 1", null, null);
        if (cursorQuery != null) {
            long j11 = -1;
            while (cursorQuery.moveToNext()) {
                try {
                    long j12 = cursorQuery.getLong(0);
                    if (u.b(cursorQuery.getString(1))) {
                        j11 = j12;
                    }
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(cursorQuery, th2);
                        throw th3;
                    }
                }
            }
            if (j11 > 0) {
                Long lValueOf = Long.valueOf(j11);
                CloseableKt.a(cursorQuery, null);
                return lValueOf;
            }
            if (cursorQuery.moveToFirst()) {
                Long lValueOf2 = Long.valueOf(cursorQuery.getLong(0));
                CloseableKt.a(cursorQuery, null);
                return lValueOf2;
            }
            Unit unit = Unit.f67061a;
            CloseableKt.a(cursorQuery, null);
        }
        return null;
    }

    private final String p() {
        return (String) f50851d.getValue();
    }

    private final void s() {
        Object objM454constructorimpl;
        if (f50849b == null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl((HashMap) new Gson().fromJson(p(), HashMap.class));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            if (Result.m460isFailureimpl(objM454constructorimpl)) {
                objM454constructorimpl = null;
            }
            HashMap map = (HashMap) objM454constructorimpl;
            if (map == null) {
                map = new HashMap();
            }
            f50849b = map;
            String strP = p();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("md5Json：");
            sb2.append(strP);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String t() {
        return f50848a.q().getString("calendar_md5_list", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV u() {
        MMKV mmkvI = MMKV.I("kv_calendar");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    private final List v(Context context, CalendarData calendarData, long j11, String str) {
        ArrayList arrayList = new ArrayList();
        String[] strArr = {"_id"};
        String strQ = StringsKt.Q("description = ? \nAND  dtstart BETWEEN ? AND ? \nAND calendar_id = ?", "\n", "", false, 4, null);
        HashMap map = f50849b;
        String str2 = map != null ? (String) map.get(str) : null;
        Long startTime = calendarData.getStartTime();
        Intrinsics.e(startTime);
        long j12 = 60000;
        String strValueOf = String.valueOf(startTime.longValue() - j12);
        Long startTime2 = calendarData.getStartTime();
        Intrinsics.e(startTime2);
        Cursor cursorQuery = context.getContentResolver().query(CalendarContract.Events.CONTENT_URI, strArr, strQ, new String[]{str2, strValueOf, String.valueOf(startTime2.longValue() + j12), String.valueOf(j11)}, null);
        if (cursorQuery != null) {
            while (cursorQuery.moveToNext()) {
                try {
                    arrayList.add(Long.valueOf(cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("_id"))));
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(cursorQuery, th2);
                        throw th3;
                    }
                }
            }
            Unit unit = Unit.f67061a;
            CloseableKt.a(cursorQuery, null);
        }
        return arrayList;
    }

    private final void w() {
        k.d(n1.f67901a, y0.b(), null, new CalendarRemindHelper$saveMd5$1(null), 2, null);
    }

    public final void h(final CalendarData bean, final Function0 success, final Function1 error) {
        String title;
        Intrinsics.h(bean, "bean");
        Intrinsics.h(success, "success");
        Intrinsics.h(error, "error");
        if (bean.getStartTime() != null && (title = bean.getTitle()) != null && title.length() != 0) {
            n(new Function0() { // from class: com.transsion.push.helper.e
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CalendarRemindHelper.i(bean, error, success);
                }
            }, new Function0() { // from class: com.transsion.push.helper.f
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CalendarRemindHelper.j(error);
                }
            });
            return;
        }
        error.invoke("bean is null, startTime:" + bean.getStartTime() + ", title:" + bean.getTitle());
    }

    public final void k(final CalendarData bean, final Function0 success, final Function1 error) {
        String title;
        Intrinsics.h(bean, "bean");
        Intrinsics.h(success, "success");
        Intrinsics.h(error, "error");
        if (bean.getStartTime() == null || (title = bean.getTitle()) == null || title.length() == 0) {
            error.invoke("bean is null, startTime:" + bean.getStartTime() + ", title:" + bean.getTitle());
            return;
        }
        s();
        final String strA = MD5HashProvider.f46224a.a(String.valueOf(bean.getCalendarId()));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("md5 : ");
        sb2.append(strA);
        sb2.append(" ");
        HashMap map = f50849b;
        Boolean boolValueOf = map != null ? Boolean.valueOf(map.containsKey(strA)) : null;
        Intrinsics.e(boolValueOf);
        if (boolValueOf.booleanValue()) {
            n(new Function0() { // from class: com.transsion.push.helper.c
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CalendarRemindHelper.l(bean, strA, error, success);
                }
            }, new Function0() { // from class: com.transsion.push.helper.d
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CalendarRemindHelper.m(error);
                }
            });
        } else {
            error.invoke("Appointment not exists");
        }
    }

    public final MMKV q() {
        return (MMKV) f50850c.getValue();
    }

    public final boolean r(CalendarData bean) throws NoSuchAlgorithmException {
        Intrinsics.h(bean, "bean");
        s();
        String strA = MD5HashProvider.f46224a.a(String.valueOf(bean.getCalendarId()));
        HashMap map = f50849b;
        return map != null && map.containsKey(strA);
    }
}
