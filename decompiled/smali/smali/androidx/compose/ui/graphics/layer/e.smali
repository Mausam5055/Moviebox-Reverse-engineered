.class public final Landroidx/compose/ui/graphics/layer/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/layer/e$a;
    }
.end annotation


# static fields
.field public static final F:Landroidx/compose/ui/graphics/layer/e$a;

.field private static G:Z

.field private static final H:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private A:F

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private final b:J

.field private final c:Landroidx/compose/ui/graphics/n1;

.field private final d:Lz/a;

.field private final e:Landroid/view/RenderNode;

.field private f:J

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Matrix;

.field private i:Z

.field private j:J

.field private k:I

.field private l:I

.field private m:Landroidx/compose/ui/graphics/v1;

.field private n:F

.field private o:Z

.field private p:J

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:J

.field private w:J

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/layer/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/layer/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/layer/e;->F:Landroidx/compose/ui/graphics/layer/e$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroidx/compose/ui/graphics/layer/e;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;JLandroidx/compose/ui/graphics/n1;Lz/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/e;->b:J

    iput-object p4, p0, Landroidx/compose/ui/graphics/layer/e;->c:Landroidx/compose/ui/graphics/n1;

    iput-object p5, p0, Landroidx/compose/ui/graphics/layer/e;->d:Lz/a;

    const-string p2, "Compose"

    invoke-static {p2, p1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    sget-object p2, Lo0/t;->b:Lo0/t$a;

    invoke-virtual {p2}, Lo0/t$a;->a()J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/e;->f:J

    invoke-virtual {p2}, Lo0/t$a;->a()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/e;->j:J

    sget-object p2, Landroidx/compose/ui/graphics/layer/e;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/RenderNode;->getScaleX()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setScaleX(F)Z

    invoke-virtual {p1}, Landroid/view/RenderNode;->getScaleY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setScaleY(F)Z

    invoke-virtual {p1}, Landroid/view/RenderNode;->getTranslationX()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setTranslationX(F)Z

    invoke-virtual {p1}, Landroid/view/RenderNode;->getTranslationY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setTranslationY(F)Z

    invoke-virtual {p1}, Landroid/view/RenderNode;->getElevation()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setElevation(F)Z

    invoke-virtual {p1}, Landroid/view/RenderNode;->getRotation()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setRotation(F)Z

    invoke-virtual {p1}, Landroid/view/RenderNode;->getRotationX()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setRotationX(F)Z

    invoke-virtual {p1}, Landroid/view/RenderNode;->getRotationY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setRotationY(F)Z

    invoke-virtual {p1}, Landroid/view/RenderNode;->getCameraDistance()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setCameraDistance(F)Z

    invoke-virtual {p1}, Landroid/view/RenderNode;->getPivotX()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setPivotX(F)Z

    invoke-virtual {p1}, Landroid/view/RenderNode;->getPivotY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setPivotY(F)Z

    invoke-virtual {p1}, Landroid/view/RenderNode;->getClipToOutline()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setClipToOutline(Z)Z

    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    invoke-virtual {p1}, Landroid/view/RenderNode;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setAlpha(F)Z

    invoke-virtual {p1}, Landroid/view/RenderNode;->isValid()Z

    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->offsetLeftAndRight(I)Z

    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/layer/e;->S(Landroid/view/RenderNode;)V

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/e;->O()V

    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->setLayerType(I)Z

    invoke-virtual {p1}, Landroid/view/RenderNode;->hasOverlappingRendering()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    :cond_0
    sget-boolean p2, Landroidx/compose/ui/graphics/layer/e;->G:Z

    if-nez p2, :cond_1

    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    sget-object p1, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/b$a;->a()I

    move-result p2

    invoke-direct {p0, p2}, Landroidx/compose/ui/graphics/layer/e;->N(I)V

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/b$a;->a()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->k:I

    sget-object p1, Landroidx/compose/ui/graphics/c1;->a:Landroidx/compose/ui/graphics/c1$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/c1$a;->B()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->l:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->n:F

    sget-object p2, Ly/g;->b:Ly/g$a;

    invoke-virtual {p2}, Ly/g$a;->b()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/e;->p:J

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->q:F

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->r:F

    sget-object p1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide p2

    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/e;->v:J

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/e;->w:J

    const/high16 p1, 0x41000000    # 8.0f

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->A:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/e;->E:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {p1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/view/View;JLandroidx/compose/ui/graphics/n1;Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/graphics/layer/e;-><init>(Landroid/view/View;JLandroidx/compose/ui/graphics/n1;Lz/a;)V

    return-void
.end method

.method private final M()V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/e;->P()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/e;->i:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/e;->P()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroidx/compose/ui/graphics/layer/e;->i:Z

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    iget-boolean v2, p0, Landroidx/compose/ui/graphics/layer/e;->C:Z

    if-eq v0, v2, :cond_2

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/e;->C:Z

    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v2, v0}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    :cond_2
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/e;->D:Z

    if-eq v1, v0, :cond_3

    iput-boolean v1, p0, Landroidx/compose/ui/graphics/layer/e;->D:Z

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setClipToOutline(Z)Z

    :cond_3
    return-void
.end method

.method private final N(I)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    sget-object v1, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/b$a;->c()I

    move-result v2

    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/layer/b;->e(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setLayerType(I)Z

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/e;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setLayerPaint(Landroid/graphics/Paint;)Z

    invoke-virtual {v0, v3}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/b$a;->b()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/layer/b;->e(II)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setLayerType(I)Z

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/e;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setLayerPaint(Landroid/graphics/Paint;)Z

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setLayerType(I)Z

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/e;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setLayerPaint(Landroid/graphics/Paint;)Z

    invoke-virtual {v0, v3}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    :goto_0
    return-void
.end method

.method private final Q()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/e;->z()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/b$a;->c()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/b;->e(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/e;->l()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/graphics/c1;->a:Landroidx/compose/ui/graphics/c1$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/c1$a;->B()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/c1;->E(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/e;->i()Landroidx/compose/ui/graphics/v1;

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
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/layer/b;->a:Landroidx/compose/ui/graphics/layer/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/layer/b$a;->c()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/layer/e;->N(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/e;->z()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/layer/e;->N(I)V

    :goto_0
    return-void
.end method

.method private final S(Landroid/view/RenderNode;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/layer/p0;->a:Landroidx/compose/ui/graphics/layer/p0;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/layer/p0;->a(Landroid/view/RenderNode;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/graphics/layer/p0;->c(Landroid/view/RenderNode;I)V

    invoke-virtual {v0, p1}, Landroidx/compose/ui/graphics/layer/p0;->b(Landroid/view/RenderNode;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/graphics/layer/p0;->d(Landroid/view/RenderNode;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/e;->r:F

    return v0
.end method

.method public B(IIJ)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-static {p3, p4}, Lo0/t;->g(J)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p3, p4}, Lo0/t;->f(J)I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    iget-wide p1, p0, Landroidx/compose/ui/graphics/layer/e;->f:J

    invoke-static {p1, p2, p3, p4}, Lo0/t;->e(JJ)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/compose/ui/graphics/layer/e;->o:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-static {p3, p4}, Lo0/t;->g(J)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setPivotX(F)Z

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-static {p3, p4}, Lo0/t;->f(J)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setPivotY(F)Z

    :cond_0
    iput-wide p3, p0, Landroidx/compose/ui/graphics/layer/e;->f:J

    :cond_1
    return-void
.end method

.method public C()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/e;->v:J

    return-wide v0
.end method

.method public D()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/e;->w:J

    return-wide v0
.end method

.method public E()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->h:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->h:Landroid/graphics/Matrix;

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v1, v0}, Landroid/view/RenderNode;->getMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public F(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/e;->E:Z

    return-void
.end method

.method public G(Landroid/graphics/Outline;J)V
    .locals 0

    iput-wide p2, p0, Landroidx/compose/ui/graphics/layer/e;->j:J

    iget-object p2, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {p2, p1}, Landroid/view/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/e;->i:Z

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/e;->M()V

    return-void
.end method

.method public H(J)V
    .locals 3

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/e;->p:J

    invoke-static {p1, p2}, Ly/h;->d(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/e;->o:Z

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/e;->f:J

    invoke-static {v0, v1}, Lo0/t;->g(J)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setPivotX(F)Z

    iget-object p1, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/layer/e;->f:J

    invoke-static {v1, v2}, Lo0/t;->f(J)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setPivotY(F)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/e;->o:Z

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setPivotX(F)Z

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setPivotY(F)Z

    :goto_0
    return-void
.end method

.method public I(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;)V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    iget-wide v2, v1, Landroidx/compose/ui/graphics/layer/e;->f:J

    invoke-static {v2, v3}, Lo0/t;->g(J)I

    move-result v2

    iget-wide v3, v1, Landroidx/compose/ui/graphics/layer/e;->j:J

    invoke-static {v3, v4}, Lo0/t;->g(J)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-wide v3, v1, Landroidx/compose/ui/graphics/layer/e;->f:J

    invoke-static {v3, v4}, Lo0/t;->f(J)I

    move-result v3

    iget-wide v4, v1, Landroidx/compose/ui/graphics/layer/e;->j:J

    invoke-static {v4, v5}, Lo0/t;->f(J)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v2

    :try_start_0
    iget-object v0, v1, Landroidx/compose/ui/graphics/layer/e;->c:Landroidx/compose/ui/graphics/n1;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/g0;->v()Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Landroid/graphics/Canvas;

    invoke-virtual {v4, v5}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v4

    iget-object v5, v1, Landroidx/compose/ui/graphics/layer/e;->d:Lz/a;

    iget-wide v6, v1, Landroidx/compose/ui/graphics/layer/e;->f:J

    invoke-static {v6, v7}, Lo0/u;->d(J)J

    move-result-wide v6

    invoke-interface {v5}, Lz/g;->H0()Lz/d;

    move-result-object v8

    invoke-interface {v8}, Lz/d;->getDensity()Lo0/e;

    move-result-object v8

    invoke-interface {v5}, Lz/g;->H0()Lz/d;

    move-result-object v9

    invoke-interface {v9}, Lz/d;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v9

    invoke-interface {v5}, Lz/g;->H0()Lz/d;

    move-result-object v10

    invoke-interface {v10}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v10

    invoke-interface {v5}, Lz/g;->H0()Lz/d;

    move-result-object v11

    invoke-interface {v11}, Lz/d;->i()J

    move-result-wide v11

    invoke-interface {v5}, Lz/g;->H0()Lz/d;

    move-result-object v13

    invoke-interface {v13}, Lz/d;->g()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v13

    invoke-interface {v5}, Lz/g;->H0()Lz/d;

    move-result-object v14

    move-object/from16 v15, p1

    invoke-interface {v14, v15}, Lz/d;->b(Lo0/e;)V

    move-object/from16 v15, p2

    invoke-interface {v14, v15}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-interface {v14, v4}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    invoke-interface {v14, v6, v7}, Lz/d;->f(J)V

    move-object/from16 v6, p3

    invoke-interface {v14, v6}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    invoke-interface {v4}, Landroidx/compose/ui/graphics/m1;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p4

    :try_start_1
    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v4}, Landroidx/compose/ui/graphics/m1;->j()V

    invoke-interface {v5}, Lz/g;->H0()Lz/d;

    move-result-object v4

    invoke-interface {v4, v8}, Lz/d;->b(Lo0/e;)V

    invoke-interface {v4, v9}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-interface {v4, v10}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    invoke-interface {v4, v11, v12}, Lz/d;->f(J)V

    invoke-interface {v4, v13}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/n1;->a()Landroidx/compose/ui/graphics/g0;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v0, v2}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/layer/e;->F(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_3
    invoke-interface {v4}, Landroidx/compose/ui/graphics/m1;->j()V

    invoke-interface {v5}, Lz/g;->H0()Lz/d;

    move-result-object v0

    invoke-interface {v0, v8}, Lz/d;->b(Lo0/e;)V

    invoke-interface {v0, v9}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-interface {v0, v10}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    invoke-interface {v0, v11, v12}, Lz/d;->f(J)V

    invoke-interface {v0, v13}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v3, v1, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v3, v2}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    throw v0
.end method

.method public J(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->k:I

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/e;->R()V

    return-void
.end method

.method public K()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/e;->u:F

    return v0
.end method

.method public L(Landroidx/compose/ui/graphics/m1;)V
    .locals 1

    invoke-static {p1}, Landroidx/compose/ui/graphics/h0;->d(Landroidx/compose/ui/graphics/m1;)Landroid/graphics/Canvas;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.DisplayListCanvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/DisplayListCanvas;

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {p1, v0}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    return-void
.end method

.method public final O()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/layer/o0;->a:Landroidx/compose/ui/graphics/layer/o0;

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/layer/o0;->a(Landroid/view/RenderNode;)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/layer/n0;->a:Landroidx/compose/ui/graphics/layer/n0;

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/layer/n0;->a(Landroid/view/RenderNode;)V

    :goto_0
    return-void
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/e;->B:Z

    return v0
.end method

.method public a(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->t:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setTranslationY(F)Z

    return-void
.end method

.method public b(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->q:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setScaleX(F)Z

    return-void
.end method

.method public c(Landroidx/compose/ui/graphics/w4;)V
    .locals 0

    return-void
.end method

.method public d(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->A:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setCameraDistance(F)Z

    return-void
.end method

.method public e(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->x:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setRotationX(F)Z

    return-void
.end method

.method public f(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->y:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setRotationY(F)Z

    return-void
.end method

.method public g(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->z:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setRotation(F)Z

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/e;->n:F

    return v0
.end method

.method public h(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->r:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setScaleY(F)Z

    return-void
.end method

.method public i()Landroidx/compose/ui/graphics/v1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->m:Landroidx/compose/ui/graphics/v1;

    return-object v0
.end method

.method public j(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->s:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setTranslationX(F)Z

    return-void
.end method

.method public k()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/e;->O()V

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/e;->l:I

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/e;->y:F

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v0

    return v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/e;->z:F

    return v0
.end method

.method public p(J)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/e;->v:J

    sget-object v0, Landroidx/compose/ui/graphics/layer/p0;->a:Landroidx/compose/ui/graphics/layer/p0;

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/compose/ui/graphics/layer/p0;->c(Landroid/view/RenderNode;I)V

    :cond_0
    return-void
.end method

.method public q()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/e;->A:F

    return v0
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/e;->B:Z

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/e;->M()V

    return-void
.end method

.method public s(J)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/e;->w:J

    sget-object v0, Landroidx/compose/ui/graphics/layer/p0;->a:Landroidx/compose/ui/graphics/layer/p0;

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/w1;->j(J)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/compose/ui/graphics/layer/p0;->d(Landroid/view/RenderNode;I)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->n:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setAlpha(F)Z

    return-void
.end method

.method public t()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/e;->q:F

    return v0
.end method

.method public u(F)V
    .locals 1

    iput p1, p0, Landroidx/compose/ui/graphics/layer/e;->u:F

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/e;->e:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setElevation(F)Z

    return-void
.end method

.method public v()Landroidx/compose/ui/graphics/w4;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/e;->t:F

    return v0
.end method

.method public x()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/e;->s:F

    return v0
.end method

.method public y()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/e;->x:F

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/e;->k:I

    return v0
.end method
