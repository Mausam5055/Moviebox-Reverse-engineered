.class public abstract synthetic Lcom/google/accompanist/systemuicontroller/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/accompanist/systemuicontroller/c;JZZLkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "transformColorForLightContent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2, p3, p5}, Lcom/google/accompanist/systemuicontroller/c;->a(JZLkotlin/jvm/functions/Function1;)V

    invoke-interface/range {p0 .. p5}, Lcom/google/accompanist/systemuicontroller/c;->b(JZZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/accompanist/systemuicontroller/c;JZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 7

    if-nez p7, :cond_4

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x1

    if-eqz p7, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->i(J)F

    move-result p3

    const/high16 p7, 0x3f000000    # 0.5f

    cmpl-float p3, p3, p7

    if-lez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    move v4, p3

    and-int/lit8 p3, p6, 0x4

    if-eqz p3, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt;->b()Lkotlin/jvm/functions/Function1;

    move-result-object p5

    :cond_3
    move-object v6, p5

    move-object v1, p0

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/accompanist/systemuicontroller/c;->c(JZZLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setSystemBarsColor-Iv8Zu3U"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
