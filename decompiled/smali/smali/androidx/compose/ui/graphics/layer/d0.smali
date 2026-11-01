.class public final Landroidx/compose/ui/graphics/layer/d0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/layer/d0$b;
    }
.end annotation


# static fields
.field public static final J:Landroidx/compose/ui/graphics/layer/d0$b;

.field private static final K:Z

.field private static final L:Landroid/graphics/Canvas;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:J

.field private F:J

.field private G:F

.field private H:F

.field private I:F

.field private final b:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

.field private final c:J

.field private final d:Landroidx/compose/ui/graphics/n1;

.field private final e:Landroidx/compose/ui/graphics/layer/ViewLayer;

.field private final f:Landroid/content/res/Resources;

.field private final g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Picture;

.field private final j:Lz/a;

.field private final k:Landroidx/compose/ui/graphics/n1;

.field private l:I

.field private m:I

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private final s:J

.field private t:I

.field private u:Landroidx/compose/ui/graphics/v1;

.field private v:I

.field private w:F

.field private x:Z

.field private y:J

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/layer/d0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/layer/d0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/layer/d0;->J:Landroidx/compose/ui/graphics/layer/d0$b;

    sget-object v0, Landroidx/compose/ui/graphics/layer/r0;->a:Landroidx/compose/ui/graphics/layer/r0;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/r0;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroidx/compose/ui/graphics/layer/d0;->K:Z

    new-instance v0, Landroidx/compose/ui/graphics/layer/d0$a;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/layer/d0$a;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/layer/d0;->L:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;JLandroidx/compose/ui/graphics/n1;Lz/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/d0;->b:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/d0;->c:J

    iput-object p4, p0, Landroidx/compose/ui/graphics/layer/d0;->d:Landroidx/compose/ui/graphics/n1;

    new-instance p2, Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-direct {p2, p1, p4, p5}, Landroidx/compose/ui/graphics/layer/ViewLayer;-><init>(Landroid/view/View;Landroidx/compose/ui/graphics/n1;Lz/a;)V

    iput-object p2, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/ui/graphics/layer/d0;->f:Landroid/content/res/Resources;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/compose/ui/graphics/layer/d0;->g:Landroid/graphics/Rect;

    sget-boolean p3, Landroidx/compose/ui/graphics/layer/d0;->K:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    new-instance p5, Landroid/graphics/Picture;

    invoke-direct {p5}, Landroid/graphics/Picture;-><init>()V

    goto :goto_0

    :cond_0
    move-object p5, p4

    :goto_0
    iput-object p5, p0, Landroidx/compose/ui/graphics/layer/d0;->i:Landroid/graphics/Picture;

    if-eqz p3, :cond_1

    new-instance p5, Lz/a;

    invoke-direct {p5}, Lz/a;-><init>()V

    goto :goto_1

    :cond_1
    move-object p5, p4

    :goto_1
    iput-object p5, p0, Landroidx/compose/ui/graphics/layer/d0;->j:Lz/a;

    if-eqz p3, :cond_2

    new-instance p3, Landroidx/compose/ui/graphics/n1;

    invoke-direct {p3}, Landroidx/compose/ui/graphics/n1;-><init>()V

    goto :goto_2

    :cond_2
    move-object p3, p4

    :goto_2
    iput-object p3, p0, Landroidx/compose/ui/graphics/layer/d0;->k:Landroidx/compose/ui/graphics/n1;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    sget-object p1, Lo0/t;->b:Lo0/t$a;

    invoke-virtual {p1}, Lo0/t$a;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/d0;->n:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/d0;->p:Z

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/d0;->s:J

    sget-object p1, Landroidx/compose/ui/graphics/c1;->a:Landroidx/compose/ui/graphics/c1$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/c1$a;->B()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->t:I

    sget-object p1, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/b$a;->a()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->v:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->w:F

    sget-object p2, Ly/g;->b:Ly/g$a;

    invoke-virtual {p2}, Ly/g$a;->c()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/d0;->y:J

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->z:F

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->A:F

    sget-object p1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/d0;->E:J

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/d0;->F:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;JLandroidx/compose/ui/graphics/n1;Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    new-instance p4, Landroidx/compose/ui/graphics/n1;

    invoke-direct {p4}, Landroidx/compose/ui/graphics/n1;-><init>()V

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    new-instance p5, Lz/a;

    invoke-direct {p5}, Lz/a;-><init>()V

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/graphics/layer/d0;-><init>(Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;JLandroidx/compose/ui/graphics/n1;Lz/a;)V

    return-void
.end method

.method private final M(I)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    sget-object v1, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/b$a;->c()I

    move-result v2

    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/layer/b;->e(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/d0;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/b$a;->b()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/layer/b;->e(II)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/d0;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    move v3, v1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/d0;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/layer/ViewLayer;->setCanUseCompositingLayer$ui_graphics_release(Z)V

    return-void
.end method

.method private final O()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->d:Landroidx/compose/ui/graphics/n1;

    sget-object v1, Landroidx/compose/ui/graphics/layer/d0;->L:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/g0;->v()Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v1

    iget-object v3, p0, Landroidx/compose/ui/graphics/layer/d0;->b:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    iget-object v4, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v5

    invoke-virtual {v3, v1, v4, v5, v6}, Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;->drawChild$ui_graphics_release(Landroidx/compose/ui/graphics/m1;Landroid/view/View;J)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private final P()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/d0;->z()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/b$a;->c()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/b;->e(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/d0;->Q()Z

    move-result v0

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

.method private final Q()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/d0;->l()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/graphics/c1;->a:Landroidx/compose/ui/graphics/c1$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/c1$a;->B()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/c1;->E(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/d0;->i()Landroidx/compose/ui/graphics/v1;

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

.method private final R()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/d0;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/d0;->N()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/compose/ui/graphics/layer/d0;->q:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/d0;->g:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private final S()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/d0;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/b$a;->c()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/layer/d0;->M(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/d0;->z()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/layer/d0;->M(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/d0;->A:F

    return v0
.end method

.method public B(IIJ)V
    .locals 3

    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/d0;->n:J

    invoke-static {v0, v1, p3, p4}, Lo0/t;->e(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/d0;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/d0;->o:Z

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-static {p3, p4}, Lo0/t;->g(J)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p3, p4}, Lo0/t;->f(J)I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/View;->layout(IIII)V

    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/d0;->n:J

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/d0;->x:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-static {p3, p4}, Lo0/t;->g(J)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-static {p3, p4}, Lo0/t;->f(J)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, v2

    invoke-virtual {v0, p3}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    :cond_1
    iget p3, p0, Landroidx/compose/ui/graphics/layer/d0;->l:I

    if-eq p3, p1, :cond_2

    iget-object p4, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    sub-int p3, p1, p3

    invoke-virtual {p4, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_2
    iget p3, p0, Landroidx/compose/ui/graphics/layer/d0;->m:I

    if-eq p3, p2, :cond_3

    iget-object p4, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    sub-int p3, p2, p3

    invoke-virtual {p4, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_3
    :goto_0
    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->l:I

    iput p2, p0, Landroidx/compose/ui/graphics/layer/d0;->m:I

    return-void
.end method

.method public C()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/d0;->E:J

    return-wide v0
.end method

.method public D()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/d0;->F:J

    return-wide v0
.end method

.method public E()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public F(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/d0;->p:Z

    return-void
.end method

.method public G(Landroid/graphics/Outline;J)V
    .locals 2

    iget-object p2, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/graphics/layer/ViewLayer;->setLayerOutline(Landroid/graphics/Outline;)Z

    move-result p2

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/d0;->N()Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    iget-object p3, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {p3, v1}, Landroid/view/View;->setClipToOutline(Z)V

    iget-boolean p3, p0, Landroidx/compose/ui/graphics/layer/d0;->r:Z

    if-eqz p3, :cond_0

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/d0;->r:Z

    iput-boolean v1, p0, Landroidx/compose/ui/graphics/layer/d0;->o:Z

    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/d0;->q:Z

    if-nez p2, :cond_2

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/ViewLayer;->invalidate()V

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/d0;->O()V

    :cond_2
    return-void
.end method

.method public H(J)V
    .locals 3

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/d0;->y:J

    invoke-static {p1, p2}, Ly/h;->d(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-lt p1, p2, :cond_0

    sget-object p1, Landroidx/compose/ui/graphics/layer/v0;->a:Landroidx/compose/ui/graphics/layer/v0;

    iget-object p2, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/graphics/layer/v0;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/d0;->x:Z

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/d0;->n:J

    invoke-static {v0, v1}, Lo0/t;->g(J)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/layer/d0;->n:J

    invoke-static {v1, v2}, Lo0/t;->f(J)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/d0;->x:Z

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotY(F)V

    :goto_0
    return-void
.end method

.method public I(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v1, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, v1, Landroidx/compose/ui/graphics/layer/d0;->b:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    iget-object v5, v1, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v4, v1, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    move-object/from16 v5, p3

    invoke-virtual {v4, v0, v2, v5, v3}, Landroidx/compose/ui/graphics/layer/ViewLayer;->setDrawParams(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;)V

    iget-object v4, v1, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v1, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/layer/d0;->O()V

    iget-object v4, v1, Landroidx/compose/ui/graphics/layer/d0;->i:Landroid/graphics/Picture;

    if-eqz v4, :cond_3

    iget-wide v5, v1, Landroidx/compose/ui/graphics/layer/d0;->n:J

    invoke-static {v5, v6}, Lo0/t;->g(J)I

    move-result v5

    iget-wide v6, v1, Landroidx/compose/ui/graphics/layer/d0;->n:J

    invoke-static {v6, v7}, Lo0/t;->f(J)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v5

    :try_start_0
    iget-object v6, v1, Landroidx/compose/ui/graphics/layer/d0;->k:Landroidx/compose/ui/graphics/n1;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/g0;->v()Landroid/graphics/Canvas;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v5

    iget-object v8, v1, Landroidx/compose/ui/graphics/layer/d0;->j:Lz/a;

    if-eqz v8, :cond_1

    iget-wide v9, v1, Landroidx/compose/ui/graphics/layer/d0;->n:J

    invoke-static {v9, v10}, Lo0/u;->d(J)J

    move-result-wide v9

    invoke-virtual {v8}, Lz/a;->F()Lz/a$a;

    move-result-object v11

    invoke-virtual {v11}, Lz/a$a;->a()Lo0/e;

    move-result-object v12

    invoke-virtual {v11}, Lz/a$a;->b()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v13

    invoke-virtual {v11}, Lz/a$a;->c()Landroidx/compose/ui/graphics/m1;

    move-result-object v14

    move-object/from16 p3, v6

    move-object v15, v7

    invoke-virtual {v11}, Lz/a$a;->d()J

    move-result-wide v6

    invoke-virtual {v8}, Lz/a;->F()Lz/a$a;

    move-result-object v11

    invoke-virtual {v11, v0}, Lz/a$a;->j(Lo0/e;)V

    invoke-virtual {v11, v2}, Lz/a$a;->k(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v11, v5}, Lz/a$a;->i(Landroidx/compose/ui/graphics/m1;)V

    invoke-virtual {v11, v9, v10}, Lz/a$a;->l(J)V

    invoke-interface {v5}, Landroidx/compose/ui/graphics/m1;->n()V

    invoke-interface {v3, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Landroidx/compose/ui/graphics/m1;->j()V

    invoke-virtual {v8}, Lz/a;->F()Lz/a$a;

    move-result-object v0

    invoke-virtual {v0, v12}, Lz/a$a;->j(Lo0/e;)V

    invoke-virtual {v0, v13}, Lz/a$a;->k(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v0, v14}, Lz/a$a;->i(Landroidx/compose/ui/graphics/m1;)V

    invoke-virtual {v0, v6, v7}, Lz/a$a;->l(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object/from16 p3, v6

    move-object v15, v7

    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v0

    move-object v2, v15

    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Picture;->endRecording()V

    goto :goto_2

    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Picture;->endRecording()V

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public J(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->v:I

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/d0;->S()V

    return-void
.end method

.method public K()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/d0;->D:F

    return v0
.end method

.method public L(Landroidx/compose/ui/graphics/m1;)V
    .locals 4

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/d0;->R()V

    invoke-static {p1}, Landroidx/compose/ui/graphics/h0;->d(Landroidx/compose/ui/graphics/m1;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->b:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;->drawChild$ui_graphics_release(Landroidx/compose/ui/graphics/m1;Landroid/view/View;J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/d0;->i:Landroid/graphics/Picture;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/d0;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v0}, Landroid/view/View;->getClipToOutline()Z

    move-result v0

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

.method public a(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->C:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public b(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->z:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public c(Landroidx/compose/ui/graphics/w4;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/layer/x0;->a:Landroidx/compose/ui/graphics/layer/x0;

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v0, v1, p1}, Landroidx/compose/ui/graphics/layer/x0;->a(Landroid/view/View;Landroidx/compose/ui/graphics/w4;)V

    :cond_0
    return-void
.end method

.method public d(F)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/d0;->f:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setCameraDistance(F)V

    return-void
.end method

.method public e(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->G:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationX(F)V

    return-void
.end method

.method public f(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->H:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationY(F)V

    return-void
.end method

.method public g(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->I:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/d0;->w:F

    return v0
.end method

.method public h(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->A:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public i()Landroidx/compose/ui/graphics/v1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->u:Landroidx/compose/ui/graphics/v1;

    return-object v0
.end method

.method public j(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->B:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->b:Landroidx/compose/ui/graphics/layer/view/DrawChildContainer;

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/d0;->t:I

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/d0;->H:F

    return v0
.end method

.method public synthetic n()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/graphics/layer/c;->a(Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;)Z

    move-result v0

    return v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/d0;->I:F

    return v0
.end method

.method public p(J)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/d0;->E:J

    sget-object v0, Landroidx/compose/ui/graphics/layer/v0;->a:Landroidx/compose/ui/graphics/layer/v0;

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/compose/ui/graphics/layer/v0;->b(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public q()F
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v0}, Landroid/view/View;->getCameraDistance()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/d0;->f:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public r(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Landroidx/compose/ui/graphics/layer/d0;->q:Z

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroidx/compose/ui/graphics/layer/d0;->r:Z

    iput-boolean v1, p0, Landroidx/compose/ui/graphics/layer/d0;->o:Z

    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/compose/ui/graphics/layer/d0;->q:Z

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public s(J)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/d0;->F:J

    sget-object v0, Landroidx/compose/ui/graphics/layer/v0;->a:Landroidx/compose/ui/graphics/layer/v0;

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/compose/ui/graphics/layer/v0;->c(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->w:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public t()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/d0;->z:F

    return v0
.end method

.method public u(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/d0;->D:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/d0;->e:Landroidx/compose/ui/graphics/layer/ViewLayer;

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public v()Landroidx/compose/ui/graphics/w4;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/d0;->C:F

    return v0
.end method

.method public x()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/d0;->B:F

    return v0
.end method

.method public y()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/d0;->G:F

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/d0;->v:I

    return v0
.end method
