.class public Landroidx/core/view/WindowInsetsCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsCompat$k;,
        Landroidx/core/view/WindowInsetsCompat$l;,
        Landroidx/core/view/WindowInsetsCompat$j;,
        Landroidx/core/view/WindowInsetsCompat$i;,
        Landroidx/core/view/WindowInsetsCompat$h;,
        Landroidx/core/view/WindowInsetsCompat$g;,
        Landroidx/core/view/WindowInsetsCompat$f;,
        Landroidx/core/view/WindowInsetsCompat$Type;,
        Landroidx/core/view/WindowInsetsCompat$Builder;,
        Landroidx/core/view/WindowInsetsCompat$n;,
        Landroidx/core/view/WindowInsetsCompat$m;,
        Landroidx/core/view/WindowInsetsCompat$Side;,
        Landroidx/core/view/WindowInsetsCompat$d;,
        Landroidx/core/view/WindowInsetsCompat$c;,
        Landroidx/core/view/WindowInsetsCompat$b;,
        Landroidx/core/view/WindowInsetsCompat$a;,
        Landroidx/core/view/WindowInsetsCompat$e;
    }
.end annotation


# static fields
.field public static final CONSUMED:Landroidx/core/view/WindowInsetsCompat;

.field private static final TAG:Ljava/lang/String; = "WindowInsetsCompat"


# instance fields
.field private final mImpl:Landroidx/core/view/WindowInsetsCompat$l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/core/view/WindowInsetsCompat$k;->s:Landroidx/core/view/WindowInsetsCompat;

    sput-object v0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    sget-object v0, Landroidx/core/view/WindowInsetsCompat$j;->r:Landroidx/core/view/WindowInsetsCompat;

    sput-object v0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$l;->b:Landroidx/core/view/WindowInsetsCompat;

    sput-object v0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$k;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$k;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$j;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$j;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$i;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$i;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    goto :goto_0

    :cond_2
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$h;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$h;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    goto :goto_0

    :cond_3
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$g;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$g;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    instance-of v1, p1, Landroidx/core/view/WindowInsetsCompat$k;

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$k;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$k;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$k;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$k;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    instance-of v1, p1, Landroidx/core/view/WindowInsetsCompat$j;

    if-eqz v1, :cond_1

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$j;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$j;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$j;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$j;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    instance-of v1, p1, Landroidx/core/view/WindowInsetsCompat$i;

    if-eqz v1, :cond_2

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$i;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$i;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$i;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$i;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    goto :goto_0

    :cond_2
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$h;

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$h;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$h;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$h;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$h;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$g;

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$g;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$g;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$g;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$g;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$f;

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$f;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$f;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$f;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$f;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    goto :goto_0

    :cond_5
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$l;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat$l;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/core/view/WindowInsetsCompat$l;->e(Landroidx/core/view/WindowInsetsCompat;)V

    goto :goto_1

    :cond_6
    new-instance p1, Landroidx/core/view/WindowInsetsCompat$l;

    invoke-direct {p1, p0}, Landroidx/core/view/WindowInsetsCompat$l;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    :goto_1
    return-void
.end method

.method static insetInsets(Lz0/c;IIII)Lz0/c;
    .locals 5

    iget v0, p0, Lz0/c;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lz0/c;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lz0/c;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lz0/c;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lz0/c;->c(IIII)Lz0/c;

    move-result-object p0

    return-object p0
.end method

.method public static toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    new-instance v0, Landroidx/core/view/WindowInsetsCompat;

    invoke-static {p0}, Landroidx/core/util/i;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->copyRootViewBounds(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->setSystemUiVisibility(I)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public consumeDisplayCutout()Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->a()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->b()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->c()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method copyRootViewBounds(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->d(Landroid/view/View;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroidx/core/view/WindowInsetsCompat;

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-static {v0, p1}, Landroidx/core/util/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->f()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    return-object v0
.end method

.method public getInsets(I)Lz0/c;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->g(I)Lz0/c;

    move-result-object p1

    return-object p1
.end method

.method public getInsetsIgnoringVisibility(I)Lz0/c;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->h(I)Lz0/c;

    move-result-object p1

    return-object p1
.end method

.method public getMandatorySystemGestureInsets()Lz0/c;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->i()Lz0/c;

    move-result-object v0

    return-object v0
.end method

.method public getStableInsetBottom()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->j()Lz0/c;

    move-result-object v0

    iget v0, v0, Lz0/c;->d:I

    return v0
.end method

.method public getStableInsetLeft()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->j()Lz0/c;

    move-result-object v0

    iget v0, v0, Lz0/c;->a:I

    return v0
.end method

.method public getStableInsetRight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->j()Lz0/c;

    move-result-object v0

    iget v0, v0, Lz0/c;->c:I

    return v0
.end method

.method public getStableInsetTop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->j()Lz0/c;

    move-result-object v0

    iget v0, v0, Lz0/c;->b:I

    return v0
.end method

.method public getStableInsets()Lz0/c;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->j()Lz0/c;

    move-result-object v0

    return-object v0
.end method

.method public getSystemGestureInsets()Lz0/c;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->k()Lz0/c;

    move-result-object v0

    return-object v0
.end method

.method public getSystemWindowInsetBottom()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Lz0/c;

    move-result-object v0

    iget v0, v0, Lz0/c;->d:I

    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Lz0/c;

    move-result-object v0

    iget v0, v0, Lz0/c;->a:I

    return v0
.end method

.method public getSystemWindowInsetRight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Lz0/c;

    move-result-object v0

    iget v0, v0, Lz0/c;->c:I

    return v0
.end method

.method public getSystemWindowInsetTop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Lz0/c;

    move-result-object v0

    iget v0, v0, Lz0/c;->b:I

    return v0
.end method

.method public getSystemWindowInsets()Lz0/c;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Lz0/c;

    move-result-object v0

    return-object v0
.end method

.method public getTappableElementInsets()Lz0/c;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->m()Lz0/c;

    move-result-object v0

    return-object v0
.end method

.method public hasInsets()Z
    .locals 3

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->all()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    move-result-object v0

    sget-object v1, Lz0/c;->e:Lz0/c;

    invoke-virtual {v0, v1}, Lz0/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->all()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Lz0/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lz0/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasStableInsets()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->j()Lz0/c;

    move-result-object v0

    sget-object v1, Lz0/c;->e:Lz0/c;

    invoke-virtual {v0, v1}, Lz0/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasSystemWindowInsets()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->l()Lz0/c;

    move-result-object v0

    sget-object v1, Lz0/c;->e:Lz0/c;

    invoke-virtual {v0, v1}, Lz0/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public inset(IIII)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat$l;->n(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public inset(Lz0/c;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    iget v0, p1, Lz0/c;->a:I

    iget v1, p1, Lz0/c;->b:I

    iget v2, p1, Lz0/c;->c:I

    iget p1, p1, Lz0/c;->d:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/core/view/WindowInsetsCompat;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public isConsumed()Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->o()Z

    move-result v0

    return v0
.end method

.method public isRound()Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$l;->p()Z

    move-result v0

    return v0
.end method

.method public isVisible(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->q(I)Z

    move-result p1

    return p1
.end method

.method public replaceSystemWindowInsets(IIII)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-static {p1, p2, p3, p4}, Lz0/c;->c(IIII)Lz0/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Lz0/c;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-static {p1}, Lz0/c;->d(Landroid/graphics/Rect;)Lz0/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Lz0/c;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method setOverriddenInsets([Lz0/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->r([Lz0/c;)V

    return-void
.end method

.method setRootViewData(Lz0/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->s(Lz0/c;)V

    return-void
.end method

.method setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->t(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method

.method setStableInsets(Lz0/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->u(Lz0/c;)V

    return-void
.end method

.method setSystemUiVisibility(I)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->v(I)V

    return-void
.end method

.method public toWindowInsets()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$l;

    instance-of v1, v0, Landroidx/core/view/WindowInsetsCompat$f;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/core/view/WindowInsetsCompat$f;

    iget-object v0, v0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
