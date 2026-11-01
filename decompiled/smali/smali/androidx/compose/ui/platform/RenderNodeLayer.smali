.class public final Landroidx/compose/ui/platform/RenderNodeLayer;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/node/w0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/RenderNodeLayer$a;
    }
.end annotation


# static fields
.field public static final n:Landroidx/compose/ui/platform/RenderNodeLayer$a;

.field public static final o:I

.field private static final p:Lkotlin/jvm/functions/Function2;


# instance fields
.field private final a:Landroidx/compose/ui/platform/AndroidComposeView;

.field private b:Lkotlin/jvm/functions/Function2;

.field private c:Lkotlin/jvm/functions/Function0;

.field private d:Z

.field private final e:Landroidx/compose/ui/platform/i1;

.field private f:Z

.field private g:Z

.field private h:Landroidx/compose/ui/graphics/m4;

.field private final i:Landroidx/compose/ui/platform/d1;

.field private final j:Landroidx/compose/ui/graphics/n1;

.field private k:J

.field private final l:Landroidx/compose/ui/platform/t0;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/RenderNodeLayer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/RenderNodeLayer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/RenderNodeLayer;->n:Landroidx/compose/ui/platform/RenderNodeLayer$a;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/platform/RenderNodeLayer;->o:I

    sget-object v0, Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;->INSTANCE:Landroidx/compose/ui/platform/RenderNodeLayer$Companion$getMatrix$1;

    sput-object v0, Landroidx/compose/ui/platform/RenderNodeLayer;->p:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->b:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->c:Lkotlin/jvm/functions/Function0;

    new-instance p2, Landroidx/compose/ui/platform/i1;

    invoke-direct {p2}, Landroidx/compose/ui/platform/i1;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->e:Landroidx/compose/ui/platform/i1;

    new-instance p2, Landroidx/compose/ui/platform/d1;

    sget-object p3, Landroidx/compose/ui/platform/RenderNodeLayer;->p:Lkotlin/jvm/functions/Function2;

    invoke-direct {p2, p3}, Landroidx/compose/ui/platform/d1;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->i:Landroidx/compose/ui/platform/d1;

    new-instance p2, Landroidx/compose/ui/graphics/n1;

    invoke-direct {p2}, Landroidx/compose/ui/graphics/n1;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->j:Landroidx/compose/ui/graphics/n1;

    sget-object p2, Landroidx/compose/ui/graphics/e5;->a:Landroidx/compose/ui/graphics/e5$a;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/e5$a;->a()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->k:J

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    if-lt p2, p3, :cond_0

    new-instance p2, Landroidx/compose/ui/platform/w1;

    invoke-direct {p2, p1}, Landroidx/compose/ui/platform/w1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/compose/ui/platform/j1;

    invoke-direct {p2, p1}, Landroidx/compose/ui/platform/j1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;)V

    :goto_0
    const/4 p1, 0x1

    invoke-interface {p2, p1}, Landroidx/compose/ui/platform/t0;->w(Z)Z

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroidx/compose/ui/platform/t0;->p(Z)V

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    return-void
.end method

.method private final a(Landroidx/compose/ui/graphics/m1;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v0}, Landroidx/compose/ui/platform/t0;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v0}, Landroidx/compose/ui/platform/t0;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->e:Landroidx/compose/ui/platform/i1;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/platform/i1;->a(Landroidx/compose/ui/graphics/m1;)V

    :cond_1
    return-void
.end method

.method private final b(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->d:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->d:Z

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/w0;Z)V

    :cond_0
    return-void
.end method

.method private final c()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/compose/ui/platform/a3;->a:Landroidx/compose/ui/platform/a3;

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/a3;->a(Landroidx/compose/ui/platform/AndroidComposeView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v0}, Landroidx/compose/ui/platform/t0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v0}, Landroidx/compose/ui/platform/t0;->k()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->b:Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->c:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->f:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->b(Z)V

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->requestClearInvalidObservations()V

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recycle$ui_release(Landroidx/compose/ui/node/w0;)Z

    return-void
.end method

.method public drawLayer(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 8

    invoke-static {p1}, Landroidx/compose/ui/graphics/h0;->d(Landroidx/compose/ui/graphics/m1;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p2

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->updateDisplayList()V

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {p2}, Landroidx/compose/ui/platform/t0;->H()F

    move-result p2

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-lez p2, :cond_0

    const/4 v6, 0x1

    :cond_0
    iput-boolean v6, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->g:Z

    if-eqz v6, :cond_1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->k()V

    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {p2, v0}, Landroidx/compose/ui/platform/t0;->o(Landroid/graphics/Canvas;)V

    iget-boolean p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->g:Z

    if-eqz p2, :cond_6

    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->o()V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {p2}, Landroidx/compose/ui/platform/t0;->i()I

    move-result p2

    int-to-float p2, p2

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v1}, Landroidx/compose/ui/platform/t0;->u()I

    move-result v1

    int-to-float v7, v1

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v1}, Landroidx/compose/ui/platform/t0;->m()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v1}, Landroidx/compose/ui/platform/t0;->z()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v1}, Landroidx/compose/ui/platform/t0;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->h:Landroidx/compose/ui/graphics/m4;

    if-nez v1, :cond_3

    invoke-static {}, Landroidx/compose/ui/graphics/t0;->a()Landroidx/compose/ui/graphics/m4;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->h:Landroidx/compose/ui/graphics/m4;

    :cond_3
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v2}, Landroidx/compose/ui/platform/t0;->getAlpha()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/graphics/m4;->setAlpha(F)V

    invoke-interface {v1}, Landroidx/compose/ui/graphics/m4;->w()Landroid/graphics/Paint;

    move-result-object v5

    move v1, p2

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->n()V

    :goto_0
    invoke-interface {p1, p2, v7}, Landroidx/compose/ui/graphics/m1;->c(FF)V

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->i:Landroidx/compose/ui/platform/d1;

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p2, v0}, Landroidx/compose/ui/platform/d1;->b(Ljava/lang/Object;)[F

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/ui/graphics/m1;->p([F)V

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/RenderNodeLayer;->a(Landroidx/compose/ui/graphics/m1;)V

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->b:Lkotlin/jvm/functions/Function2;

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->j()V

    invoke-direct {p0, v6}, Landroidx/compose/ui/platform/RenderNodeLayer;->b(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public invalidate()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->b(Z)V

    :cond_0
    return-void
.end method

.method public isInLayer-k-4lQ0M(J)Z
    .locals 4

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v0

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result v1

    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v2}, Landroidx/compose/ui/platform/t0;->t()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    cmpg-float p2, p1, v0

    if-gtz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {p2}, Landroidx/compose/ui/platform/t0;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {p1}, Landroidx/compose/ui/platform/t0;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v0}, Landroidx/compose/ui/platform/t0;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->e:Landroidx/compose/ui/platform/i1;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/platform/i1;->f(J)Z

    move-result p1

    return p1

    :cond_2
    return v3
.end method

.method public mapBounds(Ly/e;Z)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->i:Landroidx/compose/ui/platform/d1;

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p2, v0}, Landroidx/compose/ui/platform/d1;->a(Ljava/lang/Object;)[F

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Ly/e;->g(FFFF)V

    goto :goto_0

    :cond_0
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/i4;->g([FLy/e;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->i:Landroidx/compose/ui/platform/d1;

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p2, v0}, Landroidx/compose/ui/platform/d1;->b(Ljava/lang/Object;)[F

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/i4;->g([FLy/e;)V

    :goto_0
    return-void
.end method

.method public mapOffset-8S9VItk(JZ)J
    .locals 1

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->i:Landroidx/compose/ui/platform/d1;

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p3, v0}, Landroidx/compose/ui/platform/d1;->a(Ljava/lang/Object;)[F

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-static {p3, p1, p2}, Landroidx/compose/ui/graphics/i4;->f([FJ)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    sget-object p1, Ly/g;->b:Ly/g$a;

    invoke-virtual {p1}, Ly/g$a;->a()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->i:Landroidx/compose/ui/platform/d1;

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p3, v0}, Landroidx/compose/ui/platform/d1;->b(Ljava/lang/Object;)[F

    move-result-object p3

    invoke-static {p3, p1, p2}, Landroidx/compose/ui/graphics/i4;->f([FJ)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public move--gyyYBs(J)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v0}, Landroidx/compose/ui/platform/t0;->i()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v1}, Landroidx/compose/ui/platform/t0;->u()I

    move-result v1

    invoke-static {p1, p2}, Lo0/p;->h(J)I

    move-result v2

    invoke-static {p1, p2}, Lo0/p;->i(J)I

    move-result p1

    if-ne v0, v2, :cond_0

    if-eq v1, p1, :cond_3

    :cond_0
    if-eq v0, v2, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    sub-int/2addr v2, v0

    invoke-interface {p2, v2}, Landroidx/compose/ui/platform/t0;->y(I)V

    :cond_1
    if-eq v1, p1, :cond_2

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    sub-int/2addr p1, v1

    invoke-interface {p2, p1}, Landroidx/compose/ui/platform/t0;->s(I)V

    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->c()V

    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->i:Landroidx/compose/ui/platform/d1;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/d1;->c()V

    :cond_3
    return-void
.end method

.method public resize-ozmzZPI(J)V
    .locals 4

    invoke-static {p1, p2}, Lo0/t;->g(J)I

    move-result v0

    invoke-static {p1, p2}, Lo0/t;->f(J)I

    move-result p1

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    iget-wide v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->k:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/e5;->d(J)F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-interface {p2, v1}, Landroidx/compose/ui/platform/t0;->A(F)V

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    iget-wide v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->k:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/e5;->e(J)F

    move-result v1

    int-to-float v2, p1

    mul-float/2addr v1, v2

    invoke-interface {p2, v1}, Landroidx/compose/ui/platform/t0;->B(F)V

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {p2}, Landroidx/compose/ui/platform/t0;->i()I

    move-result v1

    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v2}, Landroidx/compose/ui/platform/t0;->u()I

    move-result v2

    iget-object v3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v3}, Landroidx/compose/ui/platform/t0;->i()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v0}, Landroidx/compose/ui/platform/t0;->u()I

    move-result v0

    add-int/2addr v0, p1

    invoke-interface {p2, v1, v2, v3, v0}, Landroidx/compose/ui/platform/t0;->q(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    iget-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->e:Landroidx/compose/ui/platform/i1;

    invoke-virtual {p2}, Landroidx/compose/ui/platform/i1;->b()Landroid/graphics/Outline;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/ui/platform/t0;->C(Landroid/graphics/Outline;)V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidate()V

    iget-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->i:Landroidx/compose/ui/platform/d1;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/d1;->c()V

    :cond_0
    return-void
.end method

.method public reuseLayer(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->b(Z)V

    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->f:Z

    iput-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->g:Z

    sget-object v0, Landroidx/compose/ui/graphics/e5;->a:Landroidx/compose/ui/graphics/e5$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/e5$a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->k:J

    iput-object p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->b:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public updateDisplayList()V
    .locals 5

    iget-boolean v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v0}, Landroidx/compose/ui/platform/t0;->n()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v0}, Landroidx/compose/ui/platform/t0;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->e:Landroidx/compose/ui/platform/i1;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/i1;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->e:Landroidx/compose/ui/platform/i1;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/i1;->d()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->b:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    iget-object v3, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->j:Landroidx/compose/ui/graphics/n1;

    new-instance v4, Landroidx/compose/ui/platform/RenderNodeLayer$updateDisplayList$1$1;

    invoke-direct {v4, v1}, Landroidx/compose/ui/platform/RenderNodeLayer$updateDisplayList$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v2, v3, v0, v4}, Landroidx/compose/ui/platform/t0;->F(Landroidx/compose/ui/graphics/n1;Landroidx/compose/ui/graphics/Path;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/RenderNodeLayer;->b(Z)V

    :cond_3
    return-void
.end method

.method public updateLayerProperties(Landroidx/compose/ui/graphics/x4;)V
    .locals 13

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->F()I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->m:I

    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->b0()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->k:J

    :cond_0
    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v2}, Landroidx/compose/ui/platform/t0;->v()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->e:Landroidx/compose/ui/platform/i1;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/i1;->e()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->t()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->b(F)V

    :cond_2
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->A()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->h(F)V

    :cond_3
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->n()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->setAlpha(F)V

    :cond_4
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->x()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->j(F)V

    :cond_5
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->w()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->a(F)V

    :cond_6
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->L()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->r(F)V

    :cond_7
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->v()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->D(I)V

    :cond_8
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->O()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->G(I)V

    :cond_9
    and-int/lit16 v5, v0, 0x400

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->o()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->g(F)V

    :cond_a
    and-int/lit16 v5, v0, 0x100

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->y()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->e(F)V

    :cond_b
    and-int/lit16 v5, v0, 0x200

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->m()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->f(F)V

    :cond_c
    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_d

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->q()F

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->d(F)V

    :cond_d
    if-eqz v1, :cond_e

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    iget-wide v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->k:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/e5;->d(J)F

    move-result v5

    iget-object v6, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v6}, Landroidx/compose/ui/platform/t0;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-interface {v1, v5}, Landroidx/compose/ui/platform/t0;->A(F)V

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    iget-wide v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->k:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/e5;->e(J)F

    move-result v5

    iget-object v6, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v6}, Landroidx/compose/ui/platform/t0;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-interface {v1, v5}, Landroidx/compose/ui/platform/t0;->B(F)V

    :cond_e
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->z()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->M()Landroidx/compose/ui/graphics/a5;

    move-result-object v1

    invoke-static {}, Landroidx/compose/ui/graphics/v4;->a()Landroidx/compose/ui/graphics/a5;

    move-result-object v5

    if-eq v1, v5, :cond_f

    move v1, v4

    goto :goto_1

    :cond_f
    move v1, v3

    :goto_1
    and-int/lit16 v5, v0, 0x6000

    if-eqz v5, :cond_11

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v5, v1}, Landroidx/compose/ui/platform/t0;->E(Z)V

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->z()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->M()Landroidx/compose/ui/graphics/a5;

    move-result-object v6

    invoke-static {}, Landroidx/compose/ui/graphics/v4;->a()Landroidx/compose/ui/graphics/a5;

    move-result-object v7

    if-ne v6, v7, :cond_10

    move v6, v4

    goto :goto_2

    :cond_10
    move v6, v3

    :goto_2
    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->p(Z)V

    :cond_11
    const/high16 v5, 0x20000

    and-int/2addr v5, v0

    if-eqz v5, :cond_12

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->I()Landroidx/compose/ui/graphics/w4;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->c(Landroidx/compose/ui/graphics/w4;)V

    :cond_12
    const v5, 0x8000

    and-int/2addr v5, v0

    if-eqz v5, :cond_13

    iget-object v5, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->B()I

    move-result v6

    invoke-interface {v5, v6}, Landroidx/compose/ui/platform/t0;->l(I)V

    :cond_13
    iget-object v6, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->e:Landroidx/compose/ui/platform/i1;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->G()Landroidx/compose/ui/graphics/k4;

    move-result-object v7

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->n()F

    move-result v8

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->L()F

    move-result v10

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->i()J

    move-result-wide v11

    move v9, v1

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/platform/i1;->h(Landroidx/compose/ui/graphics/k4;FZFJ)Z

    move-result v5

    iget-object v6, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->e:Landroidx/compose/ui/platform/i1;

    invoke-virtual {v6}, Landroidx/compose/ui/platform/i1;->c()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    iget-object v7, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->e:Landroidx/compose/ui/platform/i1;

    invoke-virtual {v7}, Landroidx/compose/ui/platform/i1;->b()Landroid/graphics/Outline;

    move-result-object v7

    invoke-interface {v6, v7}, Landroidx/compose/ui/platform/t0;->C(Landroid/graphics/Outline;)V

    :cond_14
    if-eqz v1, :cond_15

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->e:Landroidx/compose/ui/platform/i1;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/i1;->e()Z

    move-result v1

    if-nez v1, :cond_15

    move v3, v4

    :cond_15
    if-ne v2, v3, :cond_17

    if-eqz v3, :cond_16

    if-eqz v5, :cond_16

    goto :goto_3

    :cond_16
    invoke-direct {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->c()V

    goto :goto_4

    :cond_17
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/ui/platform/RenderNodeLayer;->invalidate()V

    :goto_4
    iget-boolean v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->g:Z

    if-nez v1, :cond_18

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->l:Landroidx/compose/ui/platform/t0;

    invoke-interface {v1}, Landroidx/compose/ui/platform/t0;->H()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_18

    iget-object v1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->c:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_18

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_18
    and-int/lit16 v0, v0, 0x1f1b

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->i:Landroidx/compose/ui/platform/d1;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/d1;->c()V

    :cond_19
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/x4;->F()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/platform/RenderNodeLayer;->m:I

    return-void
.end method
