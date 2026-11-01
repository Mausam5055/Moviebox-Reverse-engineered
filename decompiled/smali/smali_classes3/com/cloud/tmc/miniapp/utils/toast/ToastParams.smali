.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;
.super Ljava/lang/Object;


# instance fields
.field private final delayMillis:J

.field private drawableResId:I

.field private duration:I

.field private icon:Ljava/io/File;

.field private interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

.field private final mask:Z

.field private showCallBack:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

.field private style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "IJZ",
            "Ljava/io/File;",
            "I",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    iput-wide p3, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    iput-boolean p5, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    iput p7, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    iput-object p8, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    iput-object p9, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    iput-object p10, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    iput-object p11, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_1
    move-wide v2, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move/from16 v4, p5

    :goto_2
    and-int/lit8 v6, v0, 0x10

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    move-object v6, v7

    goto :goto_3

    :cond_3
    move-object/from16 v6, p6

    :goto_3
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v5, p7

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    move-object v8, v7

    goto :goto_5

    :cond_5
    move-object/from16 v8, p8

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    move-object v9, v7

    goto :goto_6

    :cond_6
    move-object/from16 v9, p9

    :goto_6
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_7

    move-object v10, v7

    goto :goto_7

    :cond_7
    move-object/from16 v10, p10

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v7, p11

    :goto_8
    move-object p2, p0

    move-object p3, p1

    move p4, v1

    move-wide/from16 p5, v2

    move/from16 p7, v4

    move-object/from16 p8, v6

    move/from16 p9, v5

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v10

    move-object/from16 p13, v7

    invoke-direct/range {p2 .. p13}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;-><init>(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    goto :goto_2

    :cond_2
    move-wide v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p11

    :goto_9
    move-object p1, v2

    move p2, v3

    move-wide p3, v4

    move/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->copy(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;)Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final component10()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    return-wide v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    return v0
.end method

.method public final component5()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    return v0
.end method

.method public final component7()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    return-object v0
.end method

.method public final component8()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    return-object v0
.end method

.method public final component9()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    return-object v0
.end method

.method public final copy(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;)Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "IJZ",
            "Ljava/io/File;",
            "I",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;"
        }
    .end annotation

    const-string v0, "text"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    move-object v1, v0

    move v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;-><init>(Ljava/lang/CharSequence;IJZLjava/io/File;ILcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    iget-wide v5, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getDelayMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    return-wide v0
.end method

.method public final getDrawableResId()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    return v0
.end method

.method public final getIcon()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    return-object v0
.end method

.method public final getInterceptor()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    return-object v0
.end method

.method public final getMask()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    return v0
.end method

.method public final getShowCallBack()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getStrategy()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    return-object v0
.end method

.method public final getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    invoke-static {v2, v3}, Landroidx/collection/s;->a(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    return v1
.end method

.method public final setDrawableResId(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    return-void
.end method

.method public final setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    return-void
.end method

.method public final setIcon(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    return-void
.end method

.method public final setInterceptor(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    return-void
.end method

.method public final setShowCallBack(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setStrategy(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    return-void
.end method

.method public final setStyle(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->duration:I

    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->delayMillis:J

    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->mask:Z

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->icon:Ljava/io/File;

    iget v6, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->drawableResId:I

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->style:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    iget-object v8, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->strategy:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStrategy;

    iget-object v9, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->interceptor:Lcom/cloud/tmc/miniapp/utils/toast/config/IToastInterceptor;

    iget-object v10, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->showCallBack:Lkotlin/jvm/functions/Function0;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ToastParams(text="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", delayMillis="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mask="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", drawableResId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", style="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", strategy="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", interceptor="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", showCallBack="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
