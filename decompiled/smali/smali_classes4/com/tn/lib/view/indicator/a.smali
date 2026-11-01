.class public Lcom/tn/lib/view/indicator/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/view/indicator/a$a;
    }
.end annotation


# static fields
.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/tn/lib/view/indicator/a$a;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lrh/a;->a:Lrh/a;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lrh/a;->a(F)I

    move-result v2

    sput v2, Lcom/tn/lib/view/indicator/a;->m:I

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v0, v2}, Lrh/a;->a(F)I

    move-result v2

    sput v2, Lcom/tn/lib/view/indicator/a;->n:I

    invoke-virtual {v0, v1}, Lrh/a;->a(F)I

    move-result v2

    sput v2, Lcom/tn/lib/view/indicator/a;->o:I

    invoke-virtual {v0, v1}, Lrh/a;->a(F)I

    move-result v1

    sput v1, Lcom/tn/lib/view/indicator/a;->p:I

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Lrh/a;->a(F)I

    move-result v2

    sput v2, Lcom/tn/lib/view/indicator/a;->q:I

    invoke-virtual {v0, v1}, Lrh/a;->a(F)I

    move-result v0

    sput v0, Lcom/tn/lib/view/indicator/a;->r:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tn/lib/view/indicator/a;->c:I

    sget v1, Lcom/tn/lib/view/indicator/a;->o:I

    iput v1, p0, Lcom/tn/lib/view/indicator/a;->d:I

    sget v1, Lcom/tn/lib/view/indicator/a;->m:I

    iput v1, p0, Lcom/tn/lib/view/indicator/a;->e:I

    sget v1, Lcom/tn/lib/view/indicator/a;->n:I

    iput v1, p0, Lcom/tn/lib/view/indicator/a;->f:I

    const v1, -0x77000001

    iput v1, p0, Lcom/tn/lib/view/indicator/a;->g:I

    const/high16 v1, -0x78000000

    iput v1, p0, Lcom/tn/lib/view/indicator/a;->h:I

    sget v1, Lcom/tn/lib/view/indicator/a;->r:I

    iput v1, p0, Lcom/tn/lib/view/indicator/a;->i:I

    sget v1, Lcom/tn/lib/view/indicator/a;->q:I

    iput v1, p0, Lcom/tn/lib/view/indicator/a;->j:I

    iput-boolean v0, p0, Lcom/tn/lib/view/indicator/a;->l:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/view/indicator/a;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/view/indicator/a;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/view/indicator/a;->j:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/view/indicator/a;->a:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/view/indicator/a;->d:I

    return v0
.end method

.method public f()Lcom/tn/lib/view/indicator/a$a;
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/view/indicator/a;->k:Lcom/tn/lib/view/indicator/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tn/lib/view/indicator/a$a;

    invoke-direct {v0}, Lcom/tn/lib/view/indicator/a$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tn/lib/view/indicator/a;->p(Lcom/tn/lib/view/indicator/a$a;)Lcom/tn/lib/view/indicator/a;

    :cond_0
    iget-object v0, p0, Lcom/tn/lib/view/indicator/a;->k:Lcom/tn/lib/view/indicator/a$a;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/view/indicator/a;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/view/indicator/a;->e:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/view/indicator/a;->i:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/view/indicator/a;->h:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/view/indicator/a;->f:I

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tn/lib/view/indicator/a;->l:Z

    return v0
.end method

.method public m(I)Lcom/tn/lib/view/indicator/a;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/indicator/a;->b:I

    return-object p0
.end method

.method public n(I)Lcom/tn/lib/view/indicator/a;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/indicator/a;->a:I

    return-object p0
.end method

.method public o(I)Lcom/tn/lib/view/indicator/a;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/indicator/a;->d:I

    return-object p0
.end method

.method public p(Lcom/tn/lib/view/indicator/a$a;)Lcom/tn/lib/view/indicator/a;
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/view/indicator/a;->k:Lcom/tn/lib/view/indicator/a$a;

    return-object p0
.end method

.method public q(I)Lcom/tn/lib/view/indicator/a;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/indicator/a;->g:I

    return-object p0
.end method

.method public r(I)Lcom/tn/lib/view/indicator/a;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/indicator/a;->e:I

    return-object p0
.end method

.method public s(I)Lcom/tn/lib/view/indicator/a;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/indicator/a;->h:I

    return-object p0
.end method

.method public t(I)Lcom/tn/lib/view/indicator/a;
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/indicator/a;->f:I

    return-object p0
.end method
