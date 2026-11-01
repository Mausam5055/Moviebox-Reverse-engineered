.class public final Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;
.super Landroidx/lifecycle/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$a;


# instance fields
.field private final a:Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;

.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/LiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->d:Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;

    invoke-direct {v0}, Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;-><init>()V

    iput-object v0, p0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->a:Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->b:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->c:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;)Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;
    .locals 0

    iget-object p0, p0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->a:Lcom/transsion/usercenter/devicemanagement/repository/DeviceManagementRepository;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->b:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;Ljava/lang/Integer;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->m(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static final synthetic f(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;)Ljw/d;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->n(Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;)Ljw/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightDto;)Ljw/e;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->o(Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightDto;)Ljw/e;

    move-result-object p0

    return-object p0
.end method

.method private final h(Ljava/lang/Long;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yy"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, p1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd, yyyy"

    invoke-direct {p0}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->j()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_1
    return-object p1

    :cond_4
    :goto_2
    return-object v0
.end method

.method private final j()Ljava/util/Locale;
    .locals 6

    sget-object v0, Lcom/transsion/baselib/locale/d;->f:Lcom/transsion/baselib/locale/d$b;

    invoke-virtual {v0}, Lcom/transsion/baselib/locale/d$b;->e()Lcom/transsion/baselib/locale/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/baselib/locale/d;->j()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "ENGLISH"

    if-nez v1, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/baselib/locale/d$b;->f()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->S([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    instance-of v3, v0, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method

.method private final m(Ljava/lang/Integer;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result p1

    return p1
.end method

.method private final n(Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;)Ljw/d;
    .locals 9

    sget-object v0, Lih/b;->a:Lih/b;

    invoke-virtual {v0}, Lih/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    new-instance v0, Ljw/d;

    invoke-virtual {p1}, Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-nez v1, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;->getLoginTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->h(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;->getIcon()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v3

    :cond_2
    const-string v8, "tv"

    invoke-static {v1, v8, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v1, v3

    :cond_3
    const-string v8, "television"

    invoke-static {v1, v8, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move-object v1, v3

    :cond_5
    const-string v8, "web"

    invoke-static {v1, v8, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move-object v3, p1

    :goto_2
    const-string p1, "browser"

    invoke-static {v3, p1, v2}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    sget p1, Lcom/transsion/usercenter/R$drawable;->ic_device_linked_phone:I

    :goto_3
    move v8, p1

    goto :goto_6

    :cond_8
    :goto_4
    sget p1, Lcom/transsion/usercenter/R$drawable;->ic_device_linked_phone:I

    goto :goto_3

    :cond_9
    :goto_5
    sget p1, Lcom/transsion/usercenter/R$drawable;->ic_device_linked_tv:I

    goto :goto_3

    :goto_6
    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Ljw/d;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    return-object v0
.end method

.method private final o(Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightDto;)Ljw/e;
    .locals 7

    new-instance v6, Ljw/e;

    invoke-virtual {p1}, Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightDto;->getFeatureIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightDto;->getFeatureName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v2, v0

    invoke-virtual {p1}, Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightDto;->getFeatureLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightDto;->getBasicCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->m(Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightDto;->getProCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->m(Ljava/lang/Integer;)I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljw/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v6
.end method


# virtual methods
.method public final k()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->c:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final l()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;-><init>(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
