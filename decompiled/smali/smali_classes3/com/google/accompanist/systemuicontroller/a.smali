.class public final Lcom/google/accompanist/systemuicontroller/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/accompanist/systemuicontroller/c;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/Window;

.field private final c:Landroidx/core/view/WindowInsetsControllerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/Window;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/accompanist/systemuicontroller/a;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/google/accompanist/systemuicontroller/a;->b:Landroid/view/Window;

    if-eqz p2, :cond_0

    invoke-static {p2, p1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/accompanist/systemuicontroller/a;->c:Landroidx/core/view/WindowInsetsControllerCompat;

    return-void
.end method


# virtual methods
.method public a(JZLkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "transformColorForLightContent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/accompanist/systemuicontroller/a;->f(Z)V

    iget-object v0, p0, Lcom/google/accompanist/systemuicontroller/a;->b:Landroid/view/Window;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/accompanist/systemuicontroller/a;->c:Landroidx/core/view/WindowInsetsControllerCompat;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroidx/core/view/WindowInsetsControllerCompat;->isAppearanceLightStatusBars()Z

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->g(J)Landroidx/compose/ui/graphics/u1;

    move-result-object p1

    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/graphics/u1;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide p1

    :cond_2
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_1
    return-void
.end method

.method public b(JZZLkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "transformColorForLightContent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/google/accompanist/systemuicontroller/a;->e(Z)V

    invoke-virtual {p0, p4}, Lcom/google/accompanist/systemuicontroller/a;->d(Z)V

    iget-object p4, p0, Lcom/google/accompanist/systemuicontroller/a;->b:Landroid/view/Window;

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/accompanist/systemuicontroller/a;->c:Landroidx/core/view/WindowInsetsControllerCompat;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroidx/core/view/WindowInsetsControllerCompat;->isAppearanceLightNavigationBars()Z

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->g(J)Landroidx/compose/ui/graphics/u1;

    move-result-object p1

    invoke-interface {p5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/graphics/u1;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide p1

    :cond_2
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_1
    return-void
.end method

.method public synthetic c(JZZLkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/accompanist/systemuicontroller/b;->a(Lcom/google/accompanist/systemuicontroller/c;JZZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/accompanist/systemuicontroller/a;->b:Landroid/view/Window;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/l;->a(Landroid/view/Window;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/accompanist/systemuicontroller/a;->c:Landroidx/core/view/WindowInsetsControllerCompat;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    :goto_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/accompanist/systemuicontroller/a;->c:Landroidx/core/view/WindowInsetsControllerCompat;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    :goto_0
    return-void
.end method
