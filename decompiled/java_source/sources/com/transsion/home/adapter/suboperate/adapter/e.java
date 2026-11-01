package com.transsion.home.adapter.suboperate.adapter;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CalendarContract;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.mmkv.MMKV;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.R$string;
import com.transsion.home.bean.AppointSubject;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001BA\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u001e\u0010\t\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J/\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010\u001f\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u001f\u0010\u001eJ\u001f\u0010\"\u001a\u00020\b2\u0006\u0010!\u001a\u00020 2\u0006\u0010\u0012\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020\b2\u0006\u0010$\u001a\u00020\u0004H\u0002¢\u0006\u0004\b%\u0010&J\u0011\u0010(\u001a\u0004\u0018\u00010'H\u0002¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020*2\u0006\u0010\u0012\u001a\u00020\u0002H\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020*2\u0006\u0010\u0012\u001a\u00020\u0002H\u0002¢\u0006\u0004\b-\u0010,J\u001f\u0010.\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0003H\u0002¢\u0006\u0004\b.\u0010/J7\u00103\u001a\u00020\b2\u0006\u00100\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u00101\u001a\u00020*2\u0006\u00102\u001a\u00020\u0007H\u0002¢\u0006\u0004\b3\u00104JK\u00107\u001a\u001e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020*05j\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020*`62\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u00101\u001a\u00020*2\u0006\u00102\u001a\u00020\u0007H\u0002¢\u0006\u0004\b7\u00108J\u001f\u0010<\u001a\u00020\u00032\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u00020\u0004H\u0014¢\u0006\u0004\b<\u0010=J\u001f\u0010>\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0014¢\u0006\u0004\b>\u0010?R,\u0010\t\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006\u0012\u0004\u0012\u00020\b0\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u0014\u0010\n\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010CR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER\u0014\u0010H\u001a\u00020F8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010GR\u0014\u0010J\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010C¨\u0006K"}, d2 = {"Lcom/transsion/home/adapter/suboperate/adapter/e;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/bean/AppointSubject;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "layoutResId", "Lkotlin/Function1;", "", "", "onAppointmentCLick", "tabId", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "<init>", "(ILkotlin/jvm/functions/Function1;ILcom/transsion/home/bean/OperateItem;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lcom/transsion/moviedetailapi/bean/Subject;", WebConstants.FIELD_ITEM, "O1", "(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/Subject;)V", "hasAdded", "holder", RequestParameters.POSITION, "P1", "(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/AppointSubject;I)V", "isAdd", "R1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/AppointSubject;Z)V", "E1", "(Lcom/transsion/home/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "J1", "Landroid/widget/TextView;", "textView", "I1", "(Landroid/widget/TextView;Lcom/transsion/home/bean/AppointSubject;)V", "id", "U1", "(I)V", "", "M1", "()Ljava/lang/Long;", "", "L1", "(Lcom/transsion/home/bean/AppointSubject;)Ljava/lang/String;", "K1", "F1", "(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "isBrowse", "eventType", "added", "T1", "(ZLcom/transsion/home/bean/AppointSubject;ILjava/lang/String;Z)V", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "N1", "(Lcom/transsion/home/bean/AppointSubject;ILjava/lang/String;Z)Ljava/util/HashMap;", "Landroid/view/ViewGroup;", "parent", "viewType", "y0", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "G1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/AppointSubject;)V", "F", "Lkotlin/jvm/functions/Function1;", "G", "I", "H", "Lcom/transsion/home/bean/OperateItem;", "Lcom/tencent/mmkv/MMKV;", "Lcom/tencent/mmkv/MMKV;", "appointMMKV", "J", "itemWidth", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class e extends BaseQuickAdapter {
    public static final int K = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private final Function1<Function1<? super Boolean, Unit>, Unit> onAppointmentCLick;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int tabId;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final OperateItem operateItem;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private final MMKV appointMMKV;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private final int itemWidth;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public e(int i11, Function1<? super Function1<? super Boolean, Unit>, Unit> onAppointmentCLick, int i12, OperateItem operateItem) {
        super(i11, null, 2, null);
        Intrinsics.h(onAppointmentCLick, "onAppointmentCLick");
        Intrinsics.h(operateItem, "operateItem");
        this.onAppointmentCLick = onAppointmentCLick;
        this.tabId = i12;
        this.operateItem = operateItem;
        MMKV mmkvI = MMKV.I("kv_app_home_appointment");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        this.appointMMKV = mmkvI;
        this.itemWidth = a0.a(((a0.b(RangesKt.i(y.e(), y.c())) - 60) * 1.0f) / 3);
    }

    public /* synthetic */ e(int i11, Function1 function1, int i12, OperateItem operateItem, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? R$layout.item_sub_operation_appointment_item : i11, function1, i12, operateItem);
    }

    private final void E1(AppointSubject item, BaseViewHolder holder) {
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
        Long lM1 = M1();
        ContentValues contentValues = new ContentValues();
        contentValues.put("dtstart", Long.valueOf(timeInMillis));
        contentValues.put("dtend", Long.valueOf(timeInMillis2));
        contentValues.put(CampaignEx.JSON_KEY_TITLE, L1(item));
        contentValues.put(TrackingKey.DESCRIPTION, K1(item));
        contentValues.put("calendar_id", lM1);
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
        F1(true, holder);
        U1(R$string.appointment_add_success);
        T1(false, item, ak.k.e(getData(), item), "click_appointment_alert_success", true);
    }

    private final void F1(boolean hasAdded, BaseViewHolder holder) {
        ImageView imageView = (ImageView) holder.getView(R$id.sub_operation_appointment_icon);
        if (hasAdded) {
            imageView.setImageResource(R$drawable.ic_sub_operation_appointment);
        } else {
            imageView.setImageResource(R$drawable.ic_sub_operation_appointment_uncheck);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H1(e eVar, AppointSubject appointSubject, int i11, boolean z10, View view) {
        Intrinsics.e(view);
        eVar.O1(view, appointSubject);
        eVar.T1(false, appointSubject, i11, "click_appointment_poster", z10);
    }

    private final void I1(TextView textView, AppointSubject item) {
        try {
            Locale locale = Locale.ENGLISH;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", locale);
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("MMM d", locale);
            String appointmentDate = item.getAppointmentDate();
            if (appointmentDate == null || appointmentDate.length() == 0) {
                jg.c.h(textView);
            } else {
                Date date = simpleDateFormat.parse(appointmentDate);
                Intrinsics.e(date);
                textView.setText(simpleDateFormat2.format(date));
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            jg.c.h(textView);
        }
    }

    private final void J1(AppointSubject item, BaseViewHolder holder) {
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
        F1(false, holder);
        U1(R$string.appointment_delete_success);
    }

    private final String K1(AppointSubject item) {
        Integer subjectType = item.getSubjectType();
        int value = SubjectType.MOVIE.getValue();
        if (subjectType != null && subjectType.intValue() == value) {
            String string = Utils.a().getString(R$string.appointment_movie_alert_description, item.getTitle());
            Intrinsics.e(string);
            return string;
        }
        String string2 = Utils.a().getString(R$string.appointment_series_alert_description, item.getTitle());
        Intrinsics.e(string2);
        return string2;
    }

    private final String L1(AppointSubject item) {
        Integer subjectType = item.getSubjectType();
        int value = SubjectType.MOVIE.getValue();
        if (subjectType != null && subjectType.intValue() == value) {
            String string = Utils.a().getString(R$string.appointment_movie_alert_title, item.getTitle());
            Intrinsics.e(string);
            return string;
        }
        String string2 = Utils.a().getString(R$string.appointment_episode_alert_title, item.getTitle());
        Intrinsics.e(string2);
        return string2;
    }

    private final Long M1() {
        try {
            Cursor cursorQuery = getContext().getContentResolver().query(CalendarContract.Calendars.CONTENT_URI, new String[]{"_id", "calendar_displayName"}, "visible = 1 AND sync_events = 1", null, null);
            if (cursorQuery != null) {
                long j11 = -1;
                while (cursorQuery.moveToNext()) {
                    try {
                        long j12 = cursorQuery.getLong(0);
                        if (com.blankj.utilcode.util.u.b(cursorQuery.getString(1))) {
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

    private final HashMap<String, String> N1(AppointSubject item, int position, String eventType, boolean added) {
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
        map.put("tabId", String.valueOf(this.tabId));
        map.put("added", String.valueOf(added));
        il.b.e(item, map);
        il.b.a(this.operateItem, map);
        return map;
    }

    private final void O1(View view, Subject item) {
        Integer subjectType = item.getSubjectType();
        int value = SubjectType.SHORT_TV.getValue();
        if (subjectType == null || subjectType.intValue() != value) {
            Navigator navigatorC = TheRouter.c("/movie/detail");
            Integer subjectType2 = item.getSubjectType();
            Navigator.x(navigatorC.F("subject_type", subjectType2 != null ? subjectType2.intValue() : SubjectType.MOVIE.getValue()).K("id", item.getSubjectId()).K("module_name", "opt_sub_appointment").K("ops", item.getOps()), view.getContext(), null, 2, null);
        } else {
            DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
            Context context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            downloadManagerApiA.d0((FragmentActivity) context, SubTabFragment.INSTANCE.a(this.tabId), (384 & 4) != 0 ? "" : "", item.getOps(), (384 & 16) != 0 ? null : "opt_sub_appointment", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : item, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
        }
    }

    private final void P1(boolean hasAdded, final BaseViewHolder holder, final AppointSubject item, final int position) {
        String subjectId = item.getSubjectId();
        if (subjectId == null || subjectId.length() == 0) {
            return;
        }
        F1(hasAdded, holder);
        int i11 = R$id.sub_operation_appointment_icon_bg;
        final int i12 = i11 + position;
        holder.getView(i11).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.adapter.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                e.Q1(i12, this, item, holder, position, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q1(int i11, e eVar, AppointSubject appointSubject, BaseViewHolder baseViewHolder, int i12, View view) {
        if (com.transsion.baseui.util.c.f43504a.a(i11, 2000L)) {
            return;
        }
        boolean z10 = eVar.appointMMKV.getLong(appointSubject.getSubjectId(), -1L) > -1;
        if (z10) {
            eVar.R1(baseViewHolder, appointSubject, false);
            eVar.T1(false, appointSubject, i12, "click_appointment_cancel", z10);
        } else {
            eVar.R1(baseViewHolder, appointSubject, true);
            eVar.T1(false, appointSubject, i12, "click_appointment_add", z10);
        }
    }

    private final void R1(final BaseViewHolder holder, final AppointSubject item, final boolean isAdd) {
        this.onAppointmentCLick.invoke(new Function1() { // from class: com.transsion.home.adapter.suboperate.adapter.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return e.S1(isAdd, this, item, holder, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S1(boolean z10, e eVar, AppointSubject appointSubject, BaseViewHolder baseViewHolder, boolean z11) {
        if (!z11) {
            eVar.U1(R$string.no_calender_permission);
        } else if (z10) {
            eVar.E1(appointSubject, baseViewHolder);
        } else {
            eVar.J1(appointSubject, baseViewHolder);
        }
        return Unit.f67061a;
    }

    private final void T1(boolean isBrowse, AppointSubject item, int position, String eventType, boolean added) {
        HashMap<String, String> mapN1 = N1(item, position, eventType, added);
        if (isBrowse) {
            com.transsion.baselib.helper.a.f43262a.e(SubTabFragment.INSTANCE.a(this.tabId), mapN1);
        } else {
            com.transsion.baselib.helper.a.f43262a.f(SubTabFragment.INSTANCE.a(this.tabId), mapN1);
        }
    }

    private final void U1(int id2) {
        if (n0() == null) {
            return;
        }
        Toast.makeText(getContext(), getContext().getString(id2), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: G1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, final AppointSubject item) {
        String url;
        String thumbnail;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        TextView textView = (TextView) holder.getView(R$id.sub_operation_appointment_corner);
        ImageView imageView = (ImageView) holder.getView(R$id.sub_operation_appointment_image);
        TextView textView2 = (TextView) holder.getView(R$id.sub_operation_appointment_item_title);
        TextView textView3 = (TextView) holder.getView(R$id.sub_operation_appointment_booked);
        View view = holder.getView(R$id.sub_operation_appointment_booked_layout);
        View view2 = holder.getView(R$id.sub_operation_appointment_booked_hot);
        I1(textView, item);
        ej.f.b bVarM = ej.f.f61882a.m(getContext());
        Cover cover = item.getCover();
        String str = "";
        if (cover == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        ej.f.b bVarG = bVarM.g(url);
        Cover cover2 = item.getCover();
        if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
            str = thumbnail;
        }
        bVarG.l(str).d(imageView);
        textView2.setText(item.getTitle());
        Long appointmentCnt = item.getAppointmentCnt();
        if ((appointmentCnt != null ? appointmentCnt.longValue() : 0L) > 0) {
            NumberFormat numberInstance = NumberFormat.getNumberInstance(Locale.US);
            Long appointmentCnt2 = item.getAppointmentCnt();
            String str2 = numberInstance.format(appointmentCnt2 != null ? appointmentCnt2.longValue() : 0L) + " booked";
            jg.c.k(view);
            textView3.setText(str2);
            Long appointmentCnt3 = item.getAppointmentCnt();
            if ((appointmentCnt3 != null ? appointmentCnt3.longValue() : 0L) > 10000) {
                jg.c.k(view2);
            } else {
                jg.c.g(view2);
            }
        } else {
            jg.c.h(view);
        }
        final boolean z10 = this.appointMMKV.getLong(item.getSubjectId(), -1L) > -1;
        final int iE = ak.k.e(getData(), item);
        P1(z10, holder, item, iE);
        T1(true, item, iE, "browse_appointment", z10);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.adapter.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                e.H1(this.f44475a, item, iE, z10, view3);
            }
        });
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected BaseViewHolder y0(ViewGroup parent, int viewType) {
        Intrinsics.h(parent, "parent");
        BaseViewHolder baseViewHolderY0 = super.y0(parent, viewType);
        baseViewHolderY0.itemView.getLayoutParams().width = this.itemWidth;
        return baseViewHolderY0;
    }
}
