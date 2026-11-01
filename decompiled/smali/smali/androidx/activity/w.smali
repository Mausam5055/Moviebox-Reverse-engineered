.class public abstract Landroidx/activity/w;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/u;ZLkotlin/jvm/functions/Function1;)Landroidx/activity/u;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBackPressed"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/activity/w$a;

    invoke-direct {v0, p2, p3}, Landroidx/activity/w$a;-><init>(ZLkotlin/jvm/functions/Function1;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/activity/OnBackPressedDispatcher;->i(Landroidx/lifecycle/u;Landroidx/activity/u;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->h(Landroidx/activity/u;)V

    :goto_0
    return-object v0
.end method

.method public static synthetic b(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/u;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/u;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/activity/w;->a(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/u;ZLkotlin/jvm/functions/Function1;)Landroidx/activity/u;

    move-result-object p0

    return-object p0
.end method
