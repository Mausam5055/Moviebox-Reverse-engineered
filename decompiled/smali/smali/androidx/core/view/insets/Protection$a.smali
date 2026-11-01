.class Landroidx/core/view/insets/Protection$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/insets/Protection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/insets/Protection$a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lz0/c;

.field private d:Z

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:F

.field private g:F

.field private h:F

.field private i:Landroidx/core/view/insets/Protection$a$a;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/core/view/insets/Protection$a;->a:I

    iput v0, p0, Landroidx/core/view/insets/Protection$a;->b:I

    sget-object v0, Lz0/c;->e:Lz0/c;

    iput-object v0, p0, Landroidx/core/view/insets/Protection$a;->c:Lz0/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/view/insets/Protection$a;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/insets/Protection$a;->e:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/view/insets/Protection$a;->f:F

    iput v0, p0, Landroidx/core/view/insets/Protection$a;->g:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/core/view/insets/Protection$a;->h:F

    return-void
.end method

.method private A(I)V
    .locals 1

    iget v0, p0, Landroidx/core/view/insets/Protection$a;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/core/view/insets/Protection$a;->a:I

    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->d(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Landroidx/core/view/insets/Protection$a;Lz0/c;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->w(Lz0/c;)V

    return-void
.end method

.method static synthetic b(Landroidx/core/view/insets/Protection$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->A(I)V

    return-void
.end method

.method static synthetic c(Landroidx/core/view/insets/Protection$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->v(I)V

    return-void
.end method

.method static synthetic d(Landroidx/core/view/insets/Protection$a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->z(Z)V

    return-void
.end method

.method static synthetic e(Landroidx/core/view/insets/Protection$a;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->s(F)V

    return-void
.end method

.method static synthetic f(Landroidx/core/view/insets/Protection$a;)I
    .locals 0

    iget p0, p0, Landroidx/core/view/insets/Protection$a;->a:I

    return p0
.end method

.method static synthetic g(Landroidx/core/view/insets/Protection$a;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->x(F)V

    return-void
.end method

.method static synthetic h(Landroidx/core/view/insets/Protection$a;)I
    .locals 0

    iget p0, p0, Landroidx/core/view/insets/Protection$a;->b:I

    return p0
.end method

.method static synthetic i(Landroidx/core/view/insets/Protection$a;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->y(F)V

    return-void
.end method

.method static synthetic j(Landroidx/core/view/insets/Protection$a;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->u(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private s(F)V
    .locals 1

    iget v0, p0, Landroidx/core/view/insets/Protection$a;->h:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/core/view/insets/Protection$a;->h:F

    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->c(F)V

    :cond_0
    return-void
.end method

.method private u(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroidx/core/view/insets/Protection$a;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->g(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private v(I)V
    .locals 1

    iget v0, p0, Landroidx/core/view/insets/Protection$a;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/core/view/insets/Protection$a;->b:I

    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->a(I)V

    :cond_0
    return-void
.end method

.method private w(Lz0/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->c:Lz0/c;

    invoke-virtual {v0, p1}, Lz0/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/core/view/insets/Protection$a;->c:Lz0/c;

    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->b(Lz0/c;)V

    :cond_0
    return-void
.end method

.method private x(F)V
    .locals 1

    iget v0, p0, Landroidx/core/view/insets/Protection$a;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/core/view/insets/Protection$a;->f:F

    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->e(F)V

    :cond_0
    return-void
.end method

.method private y(F)V
    .locals 1

    iget v0, p0, Landroidx/core/view/insets/Protection$a;->g:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/core/view/insets/Protection$a;->g:F

    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->f(F)V

    :cond_0
    return-void
.end method

.method private z(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/core/view/insets/Protection$a;->d:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/core/view/insets/Protection$a;->d:Z

    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->onVisibilityChanged(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method k()F
    .locals 1

    iget v0, p0, Landroidx/core/view/insets/Protection$a;->h:F

    return v0
.end method

.method l()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method m()I
    .locals 1

    iget v0, p0, Landroidx/core/view/insets/Protection$a;->b:I

    return v0
.end method

.method n()Lz0/c;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->c:Lz0/c;

    return-object v0
.end method

.method o()F
    .locals 1

    iget v0, p0, Landroidx/core/view/insets/Protection$a;->f:F

    return v0
.end method

.method p()F
    .locals 1

    iget v0, p0, Landroidx/core/view/insets/Protection$a;->g:F

    return v0
.end method

.method q()I
    .locals 1

    iget v0, p0, Landroidx/core/view/insets/Protection$a;->a:I

    return v0
.end method

.method r()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/view/insets/Protection$a;->d:Z

    return v0
.end method

.method t(Landroidx/core/view/insets/Protection$a$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to overwrite the existing callback. Did you send one protection to multiple ProtectionLayouts?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    return-void
.end method
