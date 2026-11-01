package com.transsion.shorttv_pugc.ui.adapter;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CalendarContract;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.PermissionUtils;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.u;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.mmkv.MMKV;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv_pugc.bean.AppointSubject;
import com.transsion.shorttv_pugc.bean.Cover;
import com.transsion.shorttv_pugc.bean.OperateItem;
import com.transsion.shorttv_pugc.bean.Subject;
import com.transsion.shorttv_pugc.bean.SubjectType;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J+\u0010\u001b\u001a\u00020\f2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\f0\u00182\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\f0\u0018H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010\u001f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u001f\u0010\u001eJ\u001f\u0010\"\u001a\u00020\f2\u0006\u0010!\u001a\u00020 2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020\f2\u0006\u0010$\u001a\u00020\u0004H\u0002¢\u0006\u0004\b%\u0010&J\u0011\u0010(\u001a\u0004\u0018\u00010'H\u0002¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b*\u0010+J\u0017\u0010,\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0002¢\u0006\u0004\b,\u0010+J\u001f\u0010-\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0003H\u0002¢\u0006\u0004\b-\u0010.J7\u00102\u001a\u00020\f2\u0006\u0010/\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u000fH\u0002¢\u0006\u0004\b2\u00103JK\u00106\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000604j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`52\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u000fH\u0002¢\u0006\u0004\b6\u00107J\u0015\u00109\u001a\u00020\f2\u0006\u0010\u000b\u001a\u000208¢\u0006\u0004\b9\u0010:J\u001f\u0010;\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0014¢\u0006\u0004\b;\u0010<R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u0018\u0010E\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006F"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/adapter/n;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/shorttv_pugc/bean/AppointSubject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "", "pageName", "<init>", "(ILjava/lang/String;)V", "Lcom/transsion/shorttv_pugc/bean/Subject;", WebConstants.FIELD_ITEM, "", "R1", "(Lcom/transsion/shorttv_pugc/bean/Subject;)V", "", "hasAdded", "holder", RequestParameters.POSITION, "S1", "(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/AppointSubject;I)V", "isAdd", "V1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/AppointSubject;Z)V", "Lkotlin/Function0;", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "error", "I1", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "G1", "(Lcom/transsion/shorttv_pugc/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "M1", "Landroid/widget/TextView;", "textView", "L1", "(Landroid/widget/TextView;Lcom/transsion/shorttv_pugc/bean/AppointSubject;)V", "id", "a2", "(I)V", "", "P1", "()Ljava/lang/Long;", "O1", "(Lcom/transsion/shorttv_pugc/bean/AppointSubject;)Ljava/lang/String;", "N1", "H1", "(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "isBrowse", "eventType", "added", "Y1", "(ZLcom/transsion/shorttv_pugc/bean/AppointSubject;ILjava/lang/String;Z)V", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "Q1", "(Lcom/transsion/shorttv_pugc/bean/AppointSubject;ILjava/lang/String;Z)Ljava/util/HashMap;", "Lcom/transsion/shorttv_pugc/bean/OperateItem;", "Z1", "(Lcom/transsion/shorttv_pugc/bean/OperateItem;)V", "J1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/AppointSubject;)V", "F", "Ljava/lang/String;", "Lcom/tencent/mmkv/MMKV;", "G", "Lcom/tencent/mmkv/MMKV;", "appointMMKV", "H", "Lcom/transsion/shorttv_pugc/bean/OperateItem;", "operateItem", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class n extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final String pageName;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final MMKV appointMMKV;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private OperateItem operateItem;

    public static final class a implements PermissionUtils.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function0 f54047a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function0 f54048b;

        a(Function0 function0, Function0 function1) {
            this.f54047a = function0;
            this.f54048b = function1;
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.b
        public void onDenied() {
            this.f54048b.invoke();
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.b
        public void onGranted() {
            this.f54047a.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(int i11, String pageName) {
        super(i11, null, 2, null);
        Intrinsics.h(pageName, "pageName");
        this.pageName = pageName;
        MMKV mmkvI = MMKV.I("kv_app_home_appointment");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        this.appointMMKV = mmkvI;
    }

    public /* synthetic */ n(int i11, String str, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? R$layout.pugc_short_tv_op_appointment_item : i11, str);
    }

    private final void G1(AppointSubject item, BaseViewHolder holder) {
        Date date;
        String lastPathSegment;
        String lastPathSegment2;
        Uri uriInsert = null;
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
            String appointmentDate = item.getAppointmentDate();
            if (appointmentDate == null) {
                appointmentDate = "";
            }
            date = simpleDateFormat.parse(appointmentDate);
        } catch (Exception e11) {
            e11.printStackTrace();
            date = null;
        }
        if (date == null) {
            return;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(11, 18);
        long timeInMillis = calendar.getTimeInMillis();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date);
        calendar2.set(11, 19);
        long timeInMillis2 = calendar2.getTimeInMillis();
        Long lP1 = P1();
        ContentValues contentValues = new ContentValues();
        contentValues.put("dtstart", Long.valueOf(timeInMillis));
        contentValues.put("dtend", Long.valueOf(timeInMillis2));
        contentValues.put(CampaignEx.JSON_KEY_TITLE, O1(item));
        contentValues.put(TrackingKey.DESCRIPTION, N1(item));
        contentValues.put("calendar_id", lP1);
        contentValues.put("eventTimezone", TimeZone.getDefault().getID());
        contentValues.put("hasAlarm", (Integer) 1);
        try {
            uriInsert = getContext().getContentResolver().insert(CalendarContract.Events.CONTENT_URI, contentValues);
        } catch (Throwable unused) {
        }
        if (uriInsert != null && (lastPathSegment2 = uriInsert.getLastPathSegment()) != null) {
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("minutes", (Integer) 0);
            contentValues2.put("event_id", lastPathSegment2);
            contentValues2.put("method", (Integer) 1);
            try {
                getContext().getContentResolver().insert(CalendarContract.Reminders.CONTENT_URI, contentValues2);
            } catch (Throwable unused2) {
                Unit unit = Unit.f67061a;
            }
        }
        this.appointMMKV.putLong(item.getSubjectId(), (uriInsert == null || (lastPathSegment = uriInsert.getLastPathSegment()) == null) ? -1L : Long.parseLong(lastPathSegment));
        H1(true, holder);
        a2(R$string.short_tv_appointment_add_success);
        Y1(false, item, ht.b.a(getData(), item), "click_appointment_alert_success", true);
    }

    private final void H1(boolean hasAdded, BaseViewHolder holder) {
        View view = holder.getView(R$id.sub_operation_appointment_unchecked);
        View view2 = holder.getView(R$id.sub_operation_appointment_checked);
        if (hasAdded) {
            ct.b.c(view);
            ct.b.d(view2);
        } else {
            ct.b.d(view);
            ct.b.c(view2);
        }
    }

    private final void I1(Function0<Unit> success, Function0<Unit> error) {
        if (PermissionUtils.s("android.permission.WRITE_CALENDAR", "android.permission.READ_CALENDAR")) {
            success.invoke();
        } else {
            PermissionUtils.x("android.permission.WRITE_CALENDAR", "android.permission.READ_CALENDAR").m(new a(success, error)).y();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K1(n nVar, AppointSubject appointSubject, int i11, boolean z10, View view) {
        nVar.R1(appointSubject);
        nVar.Y1(false, appointSubject, i11, "click_appointment_poster", z10);
    }

    private final void L1(TextView textView, AppointSubject item) {
        try {
            Locale locale = Locale.ENGLISH;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", locale);
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("MMM d", locale);
            String appointmentDate = item.getAppointmentDate();
            if (appointmentDate == null || appointmentDate.length() == 0) {
                ct.b.c(textView);
            } else {
                Date date = simpleDateFormat.parse(appointmentDate);
                Intrinsics.e(date);
                textView.setText(simpleDateFormat2.format(date));
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            ct.b.c(textView);
        }
    }

    private final void M1(AppointSubject item, BaseViewHolder holder) {
        Uri uriWithAppendedId = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, this.appointMMKV.getLong(item.getSubjectId(), -1L));
        Intrinsics.g(uriWithAppendedId, "withAppendedId(...)");
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m454constructorimpl(Integer.valueOf(getContext().getContentResolver().delete(uriWithAppendedId, null, null)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        this.appointMMKV.remove(item.getSubjectId());
        H1(false, holder);
        a2(R$string.short_tv_appointment_delete_success);
    }

    private final String N1(AppointSubject item) {
        Integer subjectType = item.getSubjectType();
        int value = SubjectType.MOVIE.getValue();
        if (subjectType != null && subjectType.intValue() == value) {
            String string = Utils.a().getString(R$string.short_tv_appointment_movie_alert_description, item.getTitle());
            Intrinsics.e(string);
            return string;
        }
        String string2 = Utils.a().getString(R$string.short_tv_appointment_series_alert_description, item.getTitle());
        Intrinsics.e(string2);
        return string2;
    }

    private final String O1(AppointSubject item) {
        Integer subjectType = item.getSubjectType();
        int value = SubjectType.MOVIE.getValue();
        if (subjectType != null && subjectType.intValue() == value) {
            String string = Utils.a().getString(R$string.short_tv_appointment_movie_alert_title, item.getTitle());
            Intrinsics.e(string);
            return string;
        }
        String string2 = Utils.a().getString(R$string.short_tv_appointment_episode_alert_title, item.getTitle());
        Intrinsics.e(string2);
        return string2;
    }

    private final Long P1() {
        try {
            Cursor cursorQuery = getContext().getContentResolver().query(CalendarContract.Calendars.CONTENT_URI, new String[]{"_id", "calendar_displayName"}, "visible = 1 AND sync_events = 1", null, null);
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
        } catch (Throwable unused) {
        }
        return null;
    }

    private final HashMap<String, String> Q1(AppointSubject item, int position, String eventType, boolean added) {
        String string;
        HashMap<String, String> map = new HashMap<>();
        map.put("event_type", eventType);
        String subjectId = item.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        Integer subjectType = item.getSubjectType();
        if (subjectType == null || (string = subjectType.toString()) == null) {
            string = "";
        }
        map.put("subject_type", string);
        map.put("sequence", String.valueOf(position));
        String appointmentDate = item.getAppointmentDate();
        if (appointmentDate == null) {
            appointmentDate = "";
        }
        map.put("appointment_date", appointmentDate);
        String ops = item.getOps();
        map.put("ops", ops != null ? ops : "");
        map.put("added", String.valueOf(added));
        ShortTvExtKt.c(item, map);
        OperateItem operateItem = this.operateItem;
        if (operateItem != null) {
            ShortTvExtKt.a(operateItem, map);
        }
        return map;
    }

    private final void R1(Subject item) {
        Navigator navigatorC = TheRouter.c("/movie/detail");
        Integer subjectType = item.getSubjectType();
        Navigator.x(navigatorC.F("subject_type", subjectType != null ? subjectType.intValue() : SubjectType.MOVIE.getValue()).K("id", item.getSubjectId()).z("without_intercept", true), getContext(), null, 2, null);
    }

    private final void S1(final boolean hasAdded, final BaseViewHolder holder, final AppointSubject item, final int position) {
        String subjectId = item.getSubjectId();
        if (subjectId == null || subjectId.length() == 0) {
            return;
        }
        H1(hasAdded, holder);
        int i11 = R$id.sub_operation_appointment_checked;
        final int i12 = i11 + position;
        holder.getView(i11).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.adapter.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                n.T1(i12, this, holder, item, position, hasAdded, view);
            }
        });
        holder.getView(R$id.sub_operation_appointment_unchecked).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.adapter.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                n.U1(i12, this, holder, item, position, hasAdded, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T1(int i11, n nVar, BaseViewHolder baseViewHolder, AppointSubject appointSubject, int i12, boolean z10, View view) {
        if (ht.c.f64838a.a(i11, 2000L)) {
            return;
        }
        nVar.V1(baseViewHolder, appointSubject, false);
        nVar.Y1(false, appointSubject, i12, "click_appointment_cancel", z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U1(int i11, n nVar, BaseViewHolder baseViewHolder, AppointSubject appointSubject, int i12, boolean z10, View view) {
        if (ht.c.f64838a.a(i11, 2000L)) {
            return;
        }
        nVar.V1(baseViewHolder, appointSubject, true);
        nVar.Y1(false, appointSubject, i12, "click_appointment_add", z10);
    }

    private final void V1(final BaseViewHolder holder, final AppointSubject item, final boolean isAdd) {
        I1(new Function0() { // from class: com.transsion.shorttv_pugc.ui.adapter.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return n.W1(isAdd, this, item, holder);
            }
        }, new Function0() { // from class: com.transsion.shorttv_pugc.ui.adapter.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return n.X1(this.f54046a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit W1(boolean z10, n nVar, AppointSubject appointSubject, BaseViewHolder baseViewHolder) {
        if (z10) {
            nVar.G1(appointSubject, baseViewHolder);
        } else {
            nVar.M1(appointSubject, baseViewHolder);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit X1(n nVar) {
        nVar.a2(R$string.short_tv_no_calender_permission);
        return Unit.f67061a;
    }

    private final void Y1(boolean isBrowse, AppointSubject item, int position, String eventType, boolean added) {
        HashMap<String, String> mapQ1 = Q1(item, position, eventType, added);
        if (isBrowse) {
            hj.i.f64505a.D(this.pageName, mapQ1);
        } else {
            hj.i.f64505a.p(this.pageName, mapQ1);
        }
    }

    private final void a2(int id2) {
        Toast.makeText(getContext(), getContext().getString(id2), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: J1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, final AppointSubject item) {
        String thumbnail;
        String url;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        TextView textView = (TextView) holder.getView(R$id.sub_operation_appointment_corner);
        ImageView imageView = (ImageView) holder.getView(R$id.sub_operation_appointment_image);
        TextView textView2 = (TextView) holder.getView(R$id.sub_operation_appointment_item_title);
        TextView textView3 = (TextView) holder.getView(R$id.sub_operation_appointment_booked);
        View view = holder.getView(R$id.sub_operation_appointment_booked_layout);
        View view2 = holder.getView(R$id.sub_operation_appointment_booked_hot);
        L1(textView, item);
        et.b.a aVar = et.b.f61995a;
        Context context = getContext();
        Cover cover = item.getCover();
        String str = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
        Cover cover2 = item.getCover();
        aVar.j(context, imageView, str, (8120 & 8) != 0 ? aVar.c() : 0, (8120 & 16) != 0 ? aVar.b() : 0, (8120 & 32) != 0, (8120 & 64) != 0 ? "" : (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail, (8120 & 128) != 0, (8120 & 256) != 0, (8120 & 512) != 0 ? false : false, (8120 & 1024) != 0 ? false : false, (8120 & 2048) != 0 ? false : false, (8120 & 4096) != 0 ? 25 : 0);
        textView2.setText(item.getTitle());
        Long appointmentCnt = item.getAppointmentCnt();
        if ((appointmentCnt != null ? appointmentCnt.longValue() : 0L) > 0) {
            NumberFormat numberInstance = NumberFormat.getNumberInstance(Locale.US);
            Long appointmentCnt2 = item.getAppointmentCnt();
            String str2 = numberInstance.format(appointmentCnt2 != null ? appointmentCnt2.longValue() : 0L) + " booked";
            ct.b.d(view);
            textView3.setText(str2);
            Long appointmentCnt3 = item.getAppointmentCnt();
            if ((appointmentCnt3 != null ? appointmentCnt3.longValue() : 0L) > 10000) {
                ct.b.d(view2);
            } else {
                ct.b.b(view2);
            }
        } else {
            ct.b.c(view);
        }
        final boolean z10 = this.appointMMKV.getLong(item.getSubjectId(), -1L) > -1;
        final int iA = ht.b.a(getData(), item);
        S1(z10, holder, item, iA);
        Y1(true, item, iA, "browse_appointment", z10);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.adapter.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                n.K1(this.f54026a, item, iA, z10, view3);
            }
        });
    }

    public final void Z1(OperateItem item) {
        Intrinsics.h(item, "item");
        this.operateItem = item;
    }
}
