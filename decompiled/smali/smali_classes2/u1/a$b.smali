.class public final Lu1/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/text/Layout$Alignment;

.field private d:Landroid/text/Layout$Alignment;

.field private e:F

.field private f:I

.field private g:I

.field private h:F

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:I

.field private p:I

.field private q:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lu1/a$b;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Lu1/a$b;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lu1/a$b;->c:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lu1/a$b;->d:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    iput v0, p0, Lu1/a$b;->e:F

    const/high16 v1, -0x80000000

    iput v1, p0, Lu1/a$b;->f:I

    iput v1, p0, Lu1/a$b;->g:I

    iput v0, p0, Lu1/a$b;->h:F

    iput v1, p0, Lu1/a$b;->i:I

    iput v1, p0, Lu1/a$b;->j:I

    iput v0, p0, Lu1/a$b;->k:F

    iput v0, p0, Lu1/a$b;->l:F

    iput v0, p0, Lu1/a$b;->m:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu1/a$b;->n:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Lu1/a$b;->o:I

    iput v1, p0, Lu1/a$b;->p:I

    return-void
.end method

.method private constructor <init>(Lu1/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lu1/a;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Lu1/a$b;->a:Ljava/lang/CharSequence;

    iget-object v0, p1, Lu1/a;->d:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lu1/a$b;->b:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lu1/a;->b:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lu1/a$b;->c:Landroid/text/Layout$Alignment;

    iget-object v0, p1, Lu1/a;->c:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lu1/a$b;->d:Landroid/text/Layout$Alignment;

    iget v0, p1, Lu1/a;->e:F

    iput v0, p0, Lu1/a$b;->e:F

    iget v0, p1, Lu1/a;->f:I

    iput v0, p0, Lu1/a$b;->f:I

    iget v0, p1, Lu1/a;->g:I

    iput v0, p0, Lu1/a$b;->g:I

    iget v0, p1, Lu1/a;->h:F

    iput v0, p0, Lu1/a$b;->h:F

    iget v0, p1, Lu1/a;->i:I

    iput v0, p0, Lu1/a$b;->i:I

    iget v0, p1, Lu1/a;->n:I

    iput v0, p0, Lu1/a$b;->j:I

    iget v0, p1, Lu1/a;->o:F

    iput v0, p0, Lu1/a$b;->k:F

    iget v0, p1, Lu1/a;->j:F

    iput v0, p0, Lu1/a$b;->l:F

    iget v0, p1, Lu1/a;->k:F

    iput v0, p0, Lu1/a$b;->m:F

    iget-boolean v0, p1, Lu1/a;->l:Z

    iput-boolean v0, p0, Lu1/a$b;->n:Z

    iget v0, p1, Lu1/a;->m:I

    iput v0, p0, Lu1/a$b;->o:I

    iget v0, p1, Lu1/a;->p:I

    iput v0, p0, Lu1/a$b;->p:I

    iget p1, p1, Lu1/a;->q:F

    iput p1, p0, Lu1/a$b;->q:F

    return-void
.end method

.method synthetic constructor <init>(Lu1/a;Lu1/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lu1/a$b;-><init>(Lu1/a;)V

    return-void
.end method


# virtual methods
.method public a()Lu1/a;
    .locals 22

    move-object/from16 v0, p0

    new-instance v20, Lu1/a;

    move-object/from16 v1, v20

    iget-object v2, v0, Lu1/a$b;->a:Ljava/lang/CharSequence;

    iget-object v3, v0, Lu1/a$b;->c:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lu1/a$b;->d:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Lu1/a$b;->b:Landroid/graphics/Bitmap;

    iget v6, v0, Lu1/a$b;->e:F

    iget v7, v0, Lu1/a$b;->f:I

    iget v8, v0, Lu1/a$b;->g:I

    iget v9, v0, Lu1/a$b;->h:F

    iget v10, v0, Lu1/a$b;->i:I

    iget v11, v0, Lu1/a$b;->j:I

    iget v12, v0, Lu1/a$b;->k:F

    iget v13, v0, Lu1/a$b;->l:F

    iget v14, v0, Lu1/a$b;->m:F

    iget-boolean v15, v0, Lu1/a$b;->n:Z

    move-object/from16 v21, v1

    iget v1, v0, Lu1/a$b;->o:I

    move/from16 v16, v1

    iget v1, v0, Lu1/a$b;->p:I

    move/from16 v17, v1

    iget v1, v0, Lu1/a$b;->q:F

    move/from16 v18, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lu1/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLu1/a$a;)V

    return-object v20
.end method

.method public b()Lu1/a$b;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu1/a$b;->n:Z

    return-object p0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lu1/a$b;->g:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lu1/a$b;->i:I

    return v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lu1/a$b;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f(Landroid/graphics/Bitmap;)Lu1/a$b;
    .locals 0

    iput-object p1, p0, Lu1/a$b;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public g(F)Lu1/a$b;
    .locals 0

    iput p1, p0, Lu1/a$b;->m:F

    return-object p0
.end method

.method public h(FI)Lu1/a$b;
    .locals 0

    iput p1, p0, Lu1/a$b;->e:F

    iput p2, p0, Lu1/a$b;->f:I

    return-object p0
.end method

.method public i(I)Lu1/a$b;
    .locals 0

    iput p1, p0, Lu1/a$b;->g:I

    return-object p0
.end method

.method public j(Landroid/text/Layout$Alignment;)Lu1/a$b;
    .locals 0

    iput-object p1, p0, Lu1/a$b;->d:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public k(F)Lu1/a$b;
    .locals 0

    iput p1, p0, Lu1/a$b;->h:F

    return-object p0
.end method

.method public l(I)Lu1/a$b;
    .locals 0

    iput p1, p0, Lu1/a$b;->i:I

    return-object p0
.end method

.method public m(F)Lu1/a$b;
    .locals 0

    iput p1, p0, Lu1/a$b;->q:F

    return-object p0
.end method

.method public n(F)Lu1/a$b;
    .locals 0

    iput p1, p0, Lu1/a$b;->l:F

    return-object p0
.end method

.method public o(Ljava/lang/CharSequence;)Lu1/a$b;
    .locals 0

    iput-object p1, p0, Lu1/a$b;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public p(Landroid/text/Layout$Alignment;)Lu1/a$b;
    .locals 0

    iput-object p1, p0, Lu1/a$b;->c:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public q(FI)Lu1/a$b;
    .locals 0

    iput p1, p0, Lu1/a$b;->k:F

    iput p2, p0, Lu1/a$b;->j:I

    return-object p0
.end method

.method public r(I)Lu1/a$b;
    .locals 0

    iput p1, p0, Lu1/a$b;->p:I

    return-object p0
.end method

.method public s(I)Lu1/a$b;
    .locals 0

    iput p1, p0, Lu1/a$b;->o:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu1/a$b;->n:Z

    return-object p0
.end method
