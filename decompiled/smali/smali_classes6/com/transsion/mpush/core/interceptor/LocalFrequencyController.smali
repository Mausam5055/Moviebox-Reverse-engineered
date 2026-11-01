.class public final Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;

    invoke-direct {v0}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;-><init>()V

    sput-object v0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->a:Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private final b(Lcom/transsion/mpush/api/LocalPushMessage;ILcom/transsion/mpush/core/config/PushConfig;)Z
    .locals 8

    sget-object v6, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFrequency: msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", source="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p3}, Lcom/transsion/mpush/core/config/PushConfig;->getEnable()Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const-string v2, "checkFrequency: global switch disabled"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v7

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Lcom/transsion/mpush/core/config/PushConfig;->getBrightScreen()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const-string v2, "checkFrequency: screen_on disabled in config"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v7

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    invoke-virtual {p3}, Lcom/transsion/mpush/core/config/PushConfig;->getUnlock()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const-string v2, "checkFrequency: unlock disabled in config"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v7

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/transsion/mpush/core/config/PushConfig;->getStartTime()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_3
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {p3}, Lcom/transsion/mpush/core/config/PushConfig;->getEndTime()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-static {p3}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_1

    :cond_4
    const/16 p3, 0x16

    :goto_1
    if-gt v3, v2, :cond_8

    if-gt v2, p3, :cond_8

    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getMsgStatus()I

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getMsgStatus()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "checkFrequency: message already shown/clicked status="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v7

    :cond_5
    if-ne p2, v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getHasScreenOn()Z

    move-result p3

    if-eqz p3, :cond_6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const-string v2, "checkFrequency: message already shown for screen_on"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v7

    :cond_6
    if-ne p2, v1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getForceShow()Z

    move-result p3

    if-eqz p3, :cond_7

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const-string v2, "checkFrequency: message already force shown for unlock"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v7

    :cond_7
    invoke-virtual {p1, p2}, Lcom/transsion/mpush/api/LocalPushMessage;->setTriggerSource(I)V

    return v0

    :cond_8
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "M_PUSH_SDK"

    const-string v2, "checkFrequency: outside active hours"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v7
.end method

.method private final c(Ljava/util/List;)Ljava/util/List;
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->a1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;

    invoke-virtual {v3}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->b()I

    move-result v3

    invoke-virtual {v2}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->b()I

    move-result v2

    if-gt v3, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$ensurePushTimeAscOrder$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$ensurePushTimeAscOrder$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method private final d(Landroid/content/Context;)Lcom/transsion/mpush/core/config/PushConfig;
    .locals 12

    sget-object v0, Lcom/transsion/mpush/core/utils/PushPreference;->a:Lcom/transsion/mpush/core/utils/PushPreference;

    invoke-virtual {v0, p1}, Lcom/transsion/mpush/core/utils/PushPreference;->a(Landroid/content/Context;)Lcom/transsion/mpush/core/config/PushConfig;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/mpush/core/config/PushConfig;

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcom/transsion/mpush/core/config/PushConfig;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    return-object p1
.end method

.method private final e(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string p1, ":"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v2, v1, :cond_3

    const/4 v3, 0x4

    if-ge v1, v3, :cond_3

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    if-ltz v3, :cond_3

    const/16 p1, 0x18

    if-ge v3, p1, :cond_3

    if-ltz v4, :cond_3

    const/16 p1, 0x3c

    if-ge v4, p1, :cond_3

    if-ltz v1, :cond_3

    if-ge v1, p1, :cond_3

    mul-int/lit16 v3, v3, 0xe10

    mul-int/2addr v4, p1

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method private final f(Ljava/util/List;IILcom/transsion/mpush/core/config/PushConfig;)Lcom/transsion/mpush/api/LocalPushMessage;
    .locals 1

    invoke-virtual {p4}, Lcom/transsion/mpush/core/config/PushConfig;->getPushGap()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-static {p4}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x2

    :goto_0
    const/4 v0, 0x1

    invoke-static {p4, v0}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result p4

    sub-int/2addr p2, p3

    div-int/2addr p2, p4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    rem-int/2addr p2, p3

    if-ltz p2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/mpush/api/LocalPushMessage;

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final g(Ljava/util/List;II)Lcom/transsion/mpush/api/LocalPushMessage;
    .locals 6

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    check-cast v2, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->b()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v1, v5, :cond_3

    invoke-virtual {v2}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->b()I

    move-result v1

    if-gt v1, p2, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p2, v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->b()I

    move-result v1

    if-gt v1, p2, :cond_3

    if-gt p2, p3, :cond_3

    :goto_1
    invoke-virtual {v2}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;->a()Lcom/transsion/mpush/api/LocalPushMessage;

    move-result-object p1

    return-object p1

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    return-object v3
.end method


# virtual methods
.method public final h(Landroid/content/Context;Ljava/util/List;)Lcom/transsion/mpush/api/LocalPushMessage;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->d(Landroid/content/Context;)Lcom/transsion/mpush/core/config/PushConfig;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/mpush/core/config/PushConfig;->getStartTime()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/mpush/core/config/PushConfig;->getEndTime()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_2
    const/16 v4, 0x16

    :goto_1
    if-gt v3, v2, :cond_9

    if-gt v2, v4, :cond_9

    move-object v5, p2

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/mpush/api/LocalPushMessage;

    sget-object v8, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->a:Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;

    invoke-virtual {v7}, Lcom/transsion/mpush/api/LocalPushMessage;->getPushTime()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    new-instance v9, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;

    invoke-direct {v9, v7, v8}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$a;-><init>(Lcom/transsion/mpush/api/LocalPushMessage;I)V

    goto :goto_3

    :cond_4
    move-object v9, v1

    :goto_3
    if-eqz v9, :cond_3

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ne v5, v7, :cond_6

    invoke-direct {p0, v6}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    mul-int/lit16 v2, v2, 0xe10

    const/16 p2, 0xc

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr v2, p2

    const/16 p2, 0xd

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr v2, p2

    mul-int/lit16 v4, v4, 0xe10

    add-int/lit16 v4, v4, 0xe0f

    invoke-direct {p0, p1, v2, v4}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->g(Ljava/util/List;II)Lcom/transsion/mpush/api/LocalPushMessage;

    move-result-object p1

    goto :goto_4

    :cond_6
    sget-object v4, Llg/a;->a:Llg/a$a;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selectMessage: pushTime \u5b58\u5728\u65e0\u6548\u503c\uff0c\u56de\u9000\u5230\u5c0f\u65f6\u95f4\u9694\u9009\u53d6\uff0cvalid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "M_PUSH_SDK"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0, p2, v2, v3, p1}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->f(Ljava/util/List;IILcom/transsion/mpush/core/config/PushConfig;)Lcom/transsion/mpush/api/LocalPushMessage;

    move-result-object p1

    :goto_4
    if-nez p1, :cond_7

    return-object v1

    :cond_7
    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getMsgStatus()I

    move-result p2

    if-eqz p2, :cond_8

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "selectMessage: target message "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already shown today. Skipping."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "M_PUSH_SDK"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-object v1

    :cond_8
    return-object p1

    :cond_9
    return-object v1
.end method

.method public final i(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;I)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->d(Landroid/content/Context;)Lcom/transsion/mpush/core/config/PushConfig;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->b(Lcom/transsion/mpush/api/LocalPushMessage;ILcom/transsion/mpush/core/config/PushConfig;)Z

    move-result p1

    return p1
.end method

.method public final j(Ljava/util/List;)Ljava/util/List;
    .locals 2

    const-string v0, "messages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$sortByPushTimeAsc$$inlined$compareBy$1;

    invoke-direct {v0}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$sortByPushTimeAsc$$inlined$compareBy$1;-><init>()V

    new-instance v1, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$sortByPushTimeAsc$$inlined$thenByDescending$1;

    invoke-direct {v1, v0}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$sortByPushTimeAsc$$inlined$thenByDescending$1;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
