.class public abstract Landroidx/activity/result/f;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lf/g$f;IZLf/g$b;)Landroidx/activity/result/e;
    .locals 1

    const-string v0, "mediaType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultTab"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/activity/result/e$a;

    invoke-direct {v0}, Landroidx/activity/result/e$a;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/activity/result/e$a;->d(Lf/g$f;)Landroidx/activity/result/e$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/activity/result/e$a;->c(I)Landroidx/activity/result/e$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/activity/result/e$a;->e(Z)Landroidx/activity/result/e$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroidx/activity/result/e$a;->b(Lf/g$b;)Landroidx/activity/result/e$a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/result/e$a;->a()Landroidx/activity/result/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lf/g$f;IZLf/g$b;ILjava/lang/Object;)Landroidx/activity/result/e;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p0, Lf/g$c;->a:Lf/g$c;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    sget-object p1, Lf/e;->b:Lf/e$a;

    invoke-virtual {p1}, Lf/e$a;->a()I

    move-result p1

    :cond_1
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_2

    const/4 p2, 0x0

    :cond_2
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_3

    sget-object p3, Lf/g$b$a;->a:Lf/g$b$a;

    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/activity/result/f;->a(Lf/g$f;IZLf/g$b;)Landroidx/activity/result/e;

    move-result-object p0

    return-object p0
.end method
