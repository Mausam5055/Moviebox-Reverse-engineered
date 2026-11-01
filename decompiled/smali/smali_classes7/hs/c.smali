.class public final Lhs/c;
.super Ljava/lang/Object;

# interfaces
.implements Lgs/c;


# instance fields
.field private final a:I

.field private final b:Lgs/c;


# direct methods
.method public constructor <init>(ILgs/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lhs/c;->a:I

    iput-object p2, p0, Lhs/c;->b:Lgs/c;

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Lhs/c;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getGravity()I
    .locals 1

    iget-object v0, p0, Lhs/c;->b:Lgs/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lgs/c;->getGravity()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    iget-object v0, p0, Lhs/c;->b:Lgs/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lgs/c;->getHorizontalMargin()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    iget-object v0, p0, Lhs/c;->b:Lgs/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lgs/c;->getVerticalMargin()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getXOffset()I
    .locals 1

    iget-object v0, p0, Lhs/c;->b:Lgs/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lgs/c;->getXOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getYOffset()I
    .locals 1

    iget-object v0, p0, Lhs/c;->b:Lgs/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lgs/c;->getYOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
