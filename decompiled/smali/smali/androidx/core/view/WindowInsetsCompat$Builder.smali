.class public final Landroidx/core/view/WindowInsetsCompat$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mImpl:Landroidx/core/view/WindowInsetsCompat$e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$d;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$d;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$c;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$c;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$b;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$b;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    goto :goto_0

    :cond_2
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$a;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$a;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$d;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$d;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$c;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$c;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    new-instance v0, Landroidx/core/view/WindowInsetsCompat$b;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$b;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    goto :goto_0

    :cond_2
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$a;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$a;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    :goto_0
    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$e;->b()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayCutout(Landroidx/core/view/DisplayCutoutCompat;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$e;->c(Landroidx/core/view/DisplayCutoutCompat;)V

    return-object p0
.end method

.method public setInsets(ILz0/c;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$e;->d(ILz0/c;)V

    return-object p0
.end method

.method public setInsetsIgnoringVisibility(ILz0/c;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$e;->e(ILz0/c;)V

    return-object p0
.end method

.method public setMandatorySystemGestureInsets(Lz0/c;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$e;->f(Lz0/c;)V

    return-object p0
.end method

.method public setStableInsets(Lz0/c;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$e;->g(Lz0/c;)V

    return-object p0
.end method

.method public setSystemGestureInsets(Lz0/c;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$e;->h(Lz0/c;)V

    return-object p0
.end method

.method public setSystemWindowInsets(Lz0/c;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$e;->i(Lz0/c;)V

    return-object p0
.end method

.method public setTappableElementInsets(Lz0/c;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$e;->j(Lz0/c;)V

    return-object p0
.end method

.method public setVisible(IZ)Landroidx/core/view/WindowInsetsCompat$Builder;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$e;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$e;->k(IZ)V

    return-object p0
.end method
