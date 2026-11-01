.class public final Lcom/transsion/shorttv/ui/adapter/q;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ/\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\'\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J+\u0010\u001b\u001a\u00020\u000c2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00182\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0018H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001f\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ\u001f\u0010\"\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020 2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010%\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0011\u0010(\u001a\u0004\u0018\u00010\'H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010*\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010,\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008,\u0010+J\u001f\u0010-\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008-\u0010.J7\u00102\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u00082\u00103JK\u00106\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000604j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`52\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u00086\u00107J\u0015\u00109\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u000208\u00a2\u0006\u0004\u00089\u0010:J\u001f\u0010;\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008;\u0010<R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0018\u0010E\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010D\u00a8\u0006F"
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/adapter/q;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/shorttv/bean/AppointSubject;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "layoutResId",
        "",
        "pageName",
        "<init>",
        "(ILjava/lang/String;)V",
        "Lcom/transsion/shorttv/bean/Subject;",
        "item",
        "",
        "R1",
        "(Lcom/transsion/shorttv/bean/Subject;)V",
        "",
        "hasAdded",
        "holder",
        "position",
        "S1",
        "(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;I)V",
        "isAdd",
        "V1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;Z)V",
        "Lkotlin/Function0;",
        "success",
        "error",
        "I1",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V",
        "G1",
        "(Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "M1",
        "Landroid/widget/TextView;",
        "textView",
        "L1",
        "(Landroid/widget/TextView;Lcom/transsion/shorttv/bean/AppointSubject;)V",
        "id",
        "a2",
        "(I)V",
        "",
        "P1",
        "()Ljava/lang/Long;",
        "O1",
        "(Lcom/transsion/shorttv/bean/AppointSubject;)Ljava/lang/String;",
        "N1",
        "H1",
        "(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "isBrowse",
        "eventType",
        "added",
        "Y1",
        "(ZLcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)V",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "Q1",
        "(Lcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)Ljava/util/HashMap;",
        "Lcom/transsion/shorttv/bean/OperateItem;",
        "Z1",
        "(Lcom/transsion/shorttv/bean/OperateItem;)V",
        "J1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;)V",
        "F",
        "Ljava/lang/String;",
        "Lcom/tencent/mmkv/MMKV;",
        "G",
        "Lcom/tencent/mmkv/MMKV;",
        "appointMMKV",
        "H",
        "Lcom/transsion/shorttv/bean/OperateItem;",
        "operateItem",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final F:Ljava/lang/String;

.field private final G:Lcom/tencent/mmkv/MMKV;

.field private H:Lcom/transsion/shorttv/bean/OperateItem;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const-string v0, "pageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/transsion/shorttv/ui/adapter/q;->F:Ljava/lang/String;

    const-string p1, "kv_app_home_appointment"

    invoke-static {p1}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "mmkvWithID(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/q;->G:Lcom/tencent/mmkv/MMKV;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget p1, Lcom/transsion/shorttv/R$layout;->short_tv_op_appointment_item:I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/q;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/shorttv/ui/adapter/q;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/ui/adapter/q;->X1(Lcom/transsion/shorttv/ui/adapter/q;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C1(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/shorttv/ui/adapter/q;->T1(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic D1(ZLcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/adapter/q;->W1(ZLcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E1(Lcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/shorttv/ui/adapter/q;->K1(Lcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic F1(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/shorttv/ui/adapter/q;->U1(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V

    return-void
.end method

.method private final G1(Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/AppointSubject;->getAppointmentDate()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    :goto_2
    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v3, 0x12

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0x13

    invoke-virtual {v5, v4, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/adapter/q;->P1()Ljava/lang/Long;

    move-result-object v1

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "dtstart"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "dtend"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "title"

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/adapter/q;->O1(Lcom/transsion/shorttv/bean/AppointSubject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "description"

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/adapter/q;->N1(Lcom/transsion/shorttv/bean/AppointSubject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "calendar_id"

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventTimezone"

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "hasAlarm"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "minutes"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "event_id"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "method"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_4

    :cond_3
    const-wide/16 v2, -0x1

    :goto_4
    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/q;->G:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v1, p2}, Lcom/transsion/shorttv/ui/adapter/q;->H1(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    sget p2, Lcom/transsion/shorttv/R$string;->short_tv_appointment_add_success:I

    invoke-direct {p0, p2}, Lcom/transsion/shorttv/ui/adapter/q;->a2(I)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p1}, Lds/c;->c(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    const-string v4, "click_appointment_alert_success"

    const/4 v5, 0x1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/adapter/q;->Y1(ZLcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)V

    return-void
.end method

.method private final H1(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 2

    sget v0, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_unchecked:I

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_checked:I

    invoke-virtual {p2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-static {v0}, Lyr/b;->c(Landroid/view/View;)V

    invoke-static {p2}, Lyr/b;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lyr/b;->e(Landroid/view/View;)V

    invoke-static {p2}, Lyr/b;->c(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private final I1(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "android.permission.WRITE_CALENDAR"

    const-string v1, "android.permission.READ_CALENDAR"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/PermissionUtils;->s([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->x([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    new-instance v1, Lcom/transsion/shorttv/ui/adapter/q$a;

    invoke-direct {v1, p1, p2}, Lcom/transsion/shorttv/ui/adapter/q$a;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->m(Lcom/blankj/utilcode/util/PermissionUtils$b;)Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/PermissionUtils;->y()V

    return-void

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final K1(Lcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/adapter/q;->R1(Lcom/transsion/shorttv/bean/Subject;)V

    const/4 v1, 0x0

    const-string v4, "click_appointment_poster"

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/adapter/q;->Y1(ZLcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)V

    return-void
.end method

.method private final L1(Landroid/widget/TextView;Lcom/transsion/shorttv/bean/AppointSubject;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM d"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/AppointSubject;->getAppointmentDate()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Lyr/b;->c(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p1}, Lyr/b;->c(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method private final M1(Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/q;->G:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "withAppendedId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/q;->G:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/q;->H1(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_appointment_delete_success:I

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/adapter/q;->a2(I)V

    return-void
.end method

.method private final N1(Lcom/transsion/shorttv/bean/AppointSubject;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/transsion/shorttv/bean/SubjectType;->MOVIE:Lcom/transsion/shorttv/bean/SubjectType;

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/SubjectType;->getValue()I

    move-result v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_appointment_movie_alert_description:I

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_appointment_series_alert_description:I

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_1
    return-object p1
.end method

.method private final O1(Lcom/transsion/shorttv/bean/AppointSubject;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/transsion/shorttv/bean/SubjectType;->MOVIE:Lcom/transsion/shorttv/bean/SubjectType;

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/SubjectType;->getValue()I

    move-result v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_appointment_movie_alert_title:I

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_appointment_episode_alert_title:I

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_1
    return-object p1
.end method

.method private final P1()Ljava/lang/Long;
    .locals 8

    const-string v0, "_id"

    const-string v1, "calendar_displayName"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "visible = 1 AND sync_events = 1"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_4

    const-wide/16 v2, -0x1

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/blankj/utilcode/util/u;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-wide v2, v4

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-lez v4, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v2

    :cond_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v2

    :cond_3
    :try_start_5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :goto_1
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_8
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    :cond_4
    :goto_2
    return-object v0
.end method

.method private final Q1(Lcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/bean/AppointSubject;",
            "I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p3

    const-string v1, ""

    if-nez p3, :cond_0

    move-object p3, v1

    :cond_0
    const-string v2, "subject_id"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    :cond_1
    move-object p3, v1

    :cond_2
    const-string v2, "subject_type"

    invoke-interface {v0, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "sequence"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/AppointSubject;->getAppointmentDate()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    move-object p2, v1

    :cond_3
    const-string p3, "appointment_date"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, p2

    :goto_0
    const-string p2, "ops"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "added"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/transsion/shorttv/utils/i;->c(Lcom/transsion/shorttv/bean/Subject;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/adapter/q;->H:Lcom/transsion/shorttv/bean/OperateItem;

    if-eqz p1, :cond_5

    invoke-static {p1, v0}, Lcom/transsion/shorttv/utils/i;->a(Lcom/transsion/shorttv/bean/OperateItem;Ljava/util/Map;)V

    :cond_5
    sget-object p1, Lks/b;->a:Lks/b;

    invoke-virtual {p1}, Lks/b;->a()Lks/a;

    return-object v0
.end method

.method private final R1(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 3

    const-string v0, "/shorts/detail"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/shorttv/bean/SubjectType;->MOVIE:Lcom/transsion/shorttv/bean/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/SubjectType;->getValue()I

    move-result v1

    :goto_0
    const-string v2, "subject_type"

    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "without_intercept"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private final S1(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;I)V
    .locals 10

    invoke-virtual {p3}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/q;->H1(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    sget v0, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_checked:I

    add-int v8, v0, p4

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v9, Lcom/transsion/shorttv/ui/adapter/o;

    move-object v1, v9

    move v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/shorttv/ui/adapter/o;-><init>(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZ)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_unchecked:I

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v9, Lcom/transsion/shorttv/ui/adapter/p;

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/transsion/shorttv/ui/adapter/p;-><init>(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZ)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final T1(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V
    .locals 6

    sget-object p6, Lds/d;->a:Lds/d;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p6, p0, v0, v1}, Lds/d;->a(IJ)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-direct {p1, p2, p3, p0}, Lcom/transsion/shorttv/ui/adapter/q;->V1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;Z)V

    const/4 v1, 0x0

    const-string v4, "click_appointment_cancel"

    move-object v0, p1

    move-object v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/adapter/q;->Y1(ZLcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)V

    return-void
.end method

.method private static final U1(ILcom/transsion/shorttv/ui/adapter/q;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;IZLandroid/view/View;)V
    .locals 6

    sget-object p6, Lds/d;->a:Lds/d;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p6, p0, v0, v1}, Lds/d;->a(IJ)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    invoke-direct {p1, p2, p3, p0}, Lcom/transsion/shorttv/ui/adapter/q;->V1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;Z)V

    const/4 v1, 0x0

    const-string v4, "click_appointment_add"

    move-object v0, p1

    move-object v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/adapter/q;->Y1(ZLcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)V

    return-void
.end method

.method private final V1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;Z)V
    .locals 1

    new-instance v0, Lcom/transsion/shorttv/ui/adapter/l;

    invoke-direct {v0, p3, p0, p2, p1}, Lcom/transsion/shorttv/ui/adapter/l;-><init>(ZLcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    new-instance p1, Lcom/transsion/shorttv/ui/adapter/m;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/adapter/m;-><init>(Lcom/transsion/shorttv/ui/adapter/q;)V

    invoke-direct {p0, v0, p1}, Lcom/transsion/shorttv/ui/adapter/q;->I1(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final W1(ZLcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_0

    invoke-direct {p1, p2, p3}, Lcom/transsion/shorttv/ui/adapter/q;->G1(Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    goto :goto_0

    :cond_0
    invoke-direct {p1, p2, p3}, Lcom/transsion/shorttv/ui/adapter/q;->M1(Lcom/transsion/shorttv/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final X1(Lcom/transsion/shorttv/ui/adapter/q;)Lkotlin/Unit;
    .locals 1

    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_no_calender_permission:I

    invoke-direct {p0, v0}, Lcom/transsion/shorttv/ui/adapter/q;->a2(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final Y1(ZLcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/transsion/shorttv/ui/adapter/q;->Q1(Lcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p1, :cond_0

    sget-object p1, Lhj/i;->a:Lhj/i;

    iget-object p3, p0, Lcom/transsion/shorttv/ui/adapter/q;->F:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lhj/i;->a:Lhj/i;

    iget-object p3, p0, Lcom/transsion/shorttv/ui/adapter/q;->F:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private final a2(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/shorttv/bean/AppointSubject;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/adapter/q;->J1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;)V

    return-void
.end method

.method protected J1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;)V
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    const-string v1, "holder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "item"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_corner:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_image:I

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    sget v2, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_item_title:I

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_booked:I

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_booked_layout:I

    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    sget v8, Lcom/transsion/shorttv/R$id;->sub_operation_appointment_booked_hot:I

    invoke-virtual {v0, v8}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v24

    invoke-direct {v6, v1, v7}, Lcom/transsion/shorttv/ui/adapter/q;->L1(Landroid/widget/TextView;Lcom/transsion/shorttv/bean/AppointSubject;)V

    sget-object v8, Las/b;->a:Las/b$a;

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v1

    const-string v10, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v11, v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v11, v10

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v15, v1

    goto :goto_3

    :cond_3
    :goto_2
    move-object v15, v10

    :goto_3
    const/16 v22, 0x1fb8

    const/16 v23, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v10, v5

    invoke-static/range {v8 .. v23}, Las/b$a;->m(Las/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZLjava/lang/String;ZZZZZIILjava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getAppointmentCnt()Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_4

    :cond_4
    move-wide v1, v8

    :goto_4
    cmp-long v1, v1, v8

    if-lez v1, :cond_8

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getAppointmentCnt()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_5

    :cond_5
    move-wide v10, v8

    :goto_5
    invoke-virtual {v1, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " booked"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lyr/b;->e(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getAppointmentCnt()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :cond_6
    const-wide/16 v1, 0x2710

    cmp-long v1, v8, v1

    if-lez v1, :cond_7

    invoke-static/range {v24 .. v24}, Lyr/b;->e(Landroid/view/View;)V

    goto :goto_6

    :cond_7
    invoke-static/range {v24 .. v24}, Lyr/b;->b(Landroid/view/View;)V

    goto :goto_6

    :cond_8
    invoke-static {v4}, Lyr/b;->c(Landroid/view/View;)V

    :goto_6
    iget-object v1, v6, Lcom/transsion/shorttv/ui/adapter/q;->G:Lcom/tencent/mmkv/MMKV;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_9

    const/4 v1, 0x1

    :goto_7
    move v8, v1

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    goto :goto_7

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v7}, Lds/c;->c(Ljava/util/List;Ljava/lang/Object;)I

    move-result v9

    invoke-direct {v6, v8, v0, v7, v9}, Lcom/transsion/shorttv/ui/adapter/q;->S1(ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/AppointSubject;I)V

    const/4 v1, 0x1

    const-string v4, "browse_appointment"

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move v3, v9

    move-object v10, v5

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/adapter/q;->Y1(ZLcom/transsion/shorttv/bean/AppointSubject;ILjava/lang/String;Z)V

    new-instance v0, Lcom/transsion/shorttv/ui/adapter/n;

    invoke-direct {v0, v6, v7, v9, v8}, Lcom/transsion/shorttv/ui/adapter/n;-><init>(Lcom/transsion/shorttv/ui/adapter/q;Lcom/transsion/shorttv/bean/AppointSubject;IZ)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final Z1(Lcom/transsion/shorttv/bean/OperateItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/q;->H:Lcom/transsion/shorttv/bean/OperateItem;

    return-void
.end method
