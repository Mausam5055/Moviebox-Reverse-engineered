.class public final Lcom/transsion/player/longvideo/member/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/player/longvideo/member/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/player/longvideo/member/q;

    invoke-direct {v0}, Lcom/transsion/player/longvideo/member/q;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/member/q;->a:Lcom/transsion/player/longvideo/member/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lgo/b;
    .locals 5

    const-string v0, "resolutionList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    check-cast v1, Lgo/b;

    sget-object v2, Lcom/transsion/player/longvideo/member/q;->a:Lcom/transsion/player/longvideo/member/q;

    invoke-virtual {v1}, Lgo/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/player/longvideo/member/q;->e(Ljava/lang/String;)I

    move-result v1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lgo/b;

    sget-object v4, Lcom/transsion/player/longvideo/member/q;->a:Lcom/transsion/player/longvideo/member/q;

    invoke-virtual {v3}, Lgo/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/player/longvideo/member/q;->e(Ljava/lang/String;)I

    move-result v3

    if-ge v1, v3, :cond_3

    move-object v0, v2

    move v1, v3

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :goto_1
    check-cast p1, Lgo/b;

    return-object p1
.end method

.method public final b(Ljava/util/List;)Lgo/b;
    .locals 5

    const-string v0, "resolutionList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    check-cast v1, Lgo/b;

    sget-object v2, Lcom/transsion/player/longvideo/member/q;->a:Lcom/transsion/player/longvideo/member/q;

    invoke-virtual {v1}, Lgo/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/player/longvideo/member/q;->e(Ljava/lang/String;)I

    move-result v1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lgo/b;

    sget-object v4, Lcom/transsion/player/longvideo/member/q;->a:Lcom/transsion/player/longvideo/member/q;

    invoke-virtual {v3}, Lgo/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/player/longvideo/member/q;->e(Ljava/lang/String;)I

    move-result v3

    if-le v1, v3, :cond_3

    move-object v0, v2

    move v1, v3

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :goto_1
    check-cast p1, Lgo/b;

    return-object p1
.end method

.method public final c()I
    .locals 3

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "stream_resolution_ratio"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, ""

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "vipResolutionRatio"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    const/16 v0, 0x438

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/transsion/player/longvideo/member/q;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/player/longvideo/member/q;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/transsion/player/longvideo/member/q;->a:Lcom/transsion/player/longvideo/member/q;

    invoke-virtual {v0}, Lcom/transsion/player/longvideo/member/q;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toUpperCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x659

    if-eq v1, v2, :cond_7

    const/16 v2, 0x697

    if-eq v1, v2, :cond_5

    const/16 v2, 0x6b6

    if-eq v1, v2, :cond_3

    const/16 v2, 0x713

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "8K"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x10e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v1, "5K"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0xb40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string v1, "4K"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x870

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_7
    const-string v1, "2K"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x5a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_9
    const-string v1, "P"

    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->J0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_a
    :goto_2
    return v0
.end method

.method public final f(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10e0

    if-lt p1, v0, :cond_0

    const-string p1, "8K"

    goto :goto_0

    :cond_0
    const/16 v0, 0xb40

    if-lt p1, v0, :cond_1

    const-string p1, "5K"

    goto :goto_0

    :cond_1
    const/16 v0, 0x870

    if-lt p1, v0, :cond_2

    const-string p1, "4K"

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a0

    if-lt p1, v0, :cond_3

    const-string p1, "2K"

    goto :goto_0

    :cond_3
    const/16 v0, 0x438

    if-lt p1, v0, :cond_4

    const-string p1, "1080P"

    goto :goto_0

    :cond_4
    const/16 v0, 0x2d0

    if-lt p1, v0, :cond_5

    const-string p1, "720P"

    goto :goto_0

    :cond_5
    const/16 v0, 0x240

    if-lt p1, v0, :cond_6

    const-string p1, "576P"

    goto :goto_0

    :cond_6
    const/16 v0, 0x1e0

    if-lt p1, v0, :cond_7

    const-string p1, "480P"

    goto :goto_0

    :cond_7
    const/16 v0, 0x168

    if-lt p1, v0, :cond_8

    const-string p1, "360P"

    goto :goto_0

    :cond_8
    const/16 v0, 0xf0

    if-lt p1, v0, :cond_9

    const-string p1, "240P"

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "P"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
