.class final Landroidx/compose/material/ripple/k;
.super Landroid/graphics/drawable/RippleDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/ripple/k$a;,
        Landroidx/compose/material/ripple/k$b;
    }
.end annotation


# static fields
.field public static final e:Landroidx/compose/material/ripple/k$a;


# instance fields
.field private final a:Z

.field private b:Landroidx/compose/ui/graphics/u1;

.field private c:Ljava/lang/Integer;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material/ripple/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material/ripple/k$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material/ripple/k;->e:Landroidx/compose/material/ripple/k$a;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-boolean p1, p0, Landroidx/compose/material/ripple/k;->a:Z

    return-void
.end method

.method private final a(JF)J
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr p3, v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Lkotlin/ranges/RangesKt;->h(FF)F

    move-result v3

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v1, p1

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public final b(JF)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material/ripple/k;->a(JF)J

    move-result-wide p1

    iget-object p3, p0, Landroidx/compose/material/ripple/k;->b:Landroidx/compose/ui/graphics/u1;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result p3

    :goto_0
    if-nez p3, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->g(J)Landroidx/compose/ui/graphics/u1;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material/ripple/k;->b:Landroidx/compose/ui/graphics/u1;

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/k;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/ripple/k;->c:Ljava/lang/Integer;

    sget-object v0, Landroidx/compose/material/ripple/k$b;->a:Landroidx/compose/material/ripple/k$b;

    invoke-virtual {v0, p0, p1}, Landroidx/compose/material/ripple/k$b;->a(Landroid/graphics/drawable/RippleDrawable;I)V

    :cond_1
    return-void
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/material/ripple/k;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/material/ripple/k;->d:Z

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/compose/material/ripple/k;->d:Z

    return-object v0
.end method

.method public isProjected()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/material/ripple/k;->d:Z

    return v0
.end method
