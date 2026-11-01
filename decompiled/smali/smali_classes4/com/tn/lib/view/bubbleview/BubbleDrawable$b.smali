.class public Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/lib/view/bubbleview/BubbleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static A:F = 0.0f

.field public static B:I = -0x4d000000

.field public static C:F = 0.0f

.field public static u:F = 25.0f

.field public static v:F = 25.0f

.field public static w:F = 20.0f

.field public static x:F = 50.0f

.field public static y:I = -0x10000

.field public static z:I = 0xff


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:F

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Bitmap;

.field private m:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

.field private n:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field private o:Z

.field p:F

.field q:F

.field r:F

.field s:F

.field t:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->A:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->b:F

    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->B:I

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->c:I

    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->C:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->d:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->e:F

    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->u:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->f:F

    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->w:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->g:F

    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->v:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->h:F

    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->x:F

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->i:F

    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->y:I

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->j:I

    sget v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->z:I

    iput v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->k:I

    sget-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->COLOR:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->m:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    sget-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->LEFT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    iput-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->n:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    return-void
.end method

.method static bridge synthetic a(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)I
    .locals 0

    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->k:I

    return p0
.end method

.method static bridge synthetic b(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->o:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->l:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)I
    .locals 0

    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->j:I

    return p0
.end method

.method static bridge synthetic e(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;
    .locals 0

    iget-object p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->m:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F
    .locals 0

    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->g:F

    return p0
.end method

.method static bridge synthetic g(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F
    .locals 0

    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->h:F

    return p0
.end method

.method static bridge synthetic h(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;
    .locals 0

    iget-object p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->n:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F
    .locals 0

    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->i:F

    return p0
.end method

.method static bridge synthetic j(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F
    .locals 0

    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->f:F

    return p0
.end method

.method static bridge synthetic k(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->a:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)I
    .locals 0

    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->c:I

    return p0
.end method

.method static bridge synthetic m(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F
    .locals 0

    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->d:F

    return p0
.end method

.method static bridge synthetic n(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F
    .locals 0

    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->e:F

    return p0
.end method

.method static bridge synthetic o(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;)F
    .locals 0

    iget p0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->b:F

    return p0
.end method


# virtual methods
.method public A()Lcom/tn/lib/view/bubbleview/BubbleDrawable;
    .locals 2

    iget-object v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->a:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable;-><init>(Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;Lcom/tn/lib/view/bubbleview/a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BubbleDrawable Rect can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public B(Landroid/graphics/RectF;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->a:Landroid/graphics/RectF;

    return-object p0
.end method

.method public C(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->c:I

    return-object p0
.end method

.method public D(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->d:F

    return-object p0
.end method

.method public E(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->e:F

    return-object p0
.end method

.method public F(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->b:F

    return-object p0
.end method

.method public p(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->k:I

    return-object p0
.end method

.method public q(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->g:F

    return-object p0
.end method

.method public r(Z)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput-boolean p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->o:Z

    return-object p0
.end method

.method public s(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->h:F

    return-object p0
.end method

.method public t(Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->n:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    return-object p0
.end method

.method public u(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->i:F

    return-object p0
.end method

.method public v(F)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->f:F

    return-object p0
.end method

.method public w(Landroid/graphics/Bitmap;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->l:Landroid/graphics/Bitmap;

    sget-object p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->BITMAP:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    invoke-virtual {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->z(Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    return-object p0
.end method

.method public x(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->j:I

    sget-object p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->COLOR:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    invoke-virtual {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->z(Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    return-object p0
.end method

.method public y(FFFF[I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->p:F

    iput p2, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->q:F

    iput p3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->r:F

    iput p4, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->s:F

    iput-object p5, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->t:[I

    sget-object p1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->SHADER:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    invoke-virtual {p0, p1}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->z(Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;

    return-object p0
.end method

.method public z(Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$b;->m:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    return-object p0
.end method
