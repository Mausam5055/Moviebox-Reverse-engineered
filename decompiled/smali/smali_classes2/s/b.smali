.class public final Ls/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls/b$a;
    }
.end annotation


# static fields
.field public static final m:Ls/b$a;

.field public static final n:I


# instance fields
.field private final a:Landroidx/compose/runtime/ComposerImpl;

.field private b:Ls/a;

.field private c:Z

.field private final d:Landroidx/compose/runtime/m0;

.field private e:Z

.field private f:I

.field private g:I

.field private h:Landroidx/compose/runtime/z2;

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ls/b;->m:Ls/b$a;

    const/16 v0, 0x8

    sput v0, Ls/b;->n:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/ComposerImpl;Ls/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/b;->a:Landroidx/compose/runtime/ComposerImpl;

    iput-object p2, p0, Ls/b;->b:Ls/a;

    new-instance p1, Landroidx/compose/runtime/m0;

    invoke-direct {p1}, Landroidx/compose/runtime/m0;-><init>()V

    iput-object p1, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls/b;->e:Z

    new-instance p1, Landroidx/compose/runtime/z2;

    invoke-direct {p1}, Landroidx/compose/runtime/z2;-><init>()V

    iput-object p1, p0, Ls/b;->h:Landroidx/compose/runtime/z2;

    const/4 p1, -0x1

    iput p1, p0, Ls/b;->i:I

    iput p1, p0, Ls/b;->j:I

    iput p1, p0, Ls/b;->k:I

    return-void
.end method

.method private final A()V
    .locals 0

    invoke-direct {p0}, Ls/b;->B()V

    return-void
.end method

.method private final B()V
    .locals 2

    iget v0, p0, Ls/b;->g:I

    if-lez v0, :cond_0

    iget-object v1, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v1, v0}, Ls/a;->G(I)V

    const/4 v0, 0x0

    iput v0, p0, Ls/b;->g:I

    :cond_0
    iget-object v0, p0, Ls/b;->h:Landroidx/compose/runtime/z2;

    invoke-virtual {v0}, Landroidx/compose/runtime/z2;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ls/b;->b:Ls/a;

    iget-object v1, p0, Ls/b;->h:Landroidx/compose/runtime/z2;

    invoke-virtual {v1}, Landroidx/compose/runtime/z2;->i()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls/a;->k([Ljava/lang/Object;)V

    iget-object v0, p0, Ls/b;->h:Landroidx/compose/runtime/z2;

    invoke-virtual {v0}, Landroidx/compose/runtime/z2;->a()V

    :cond_1
    return-void
.end method

.method private final C()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Ls/b;->I(Ls/b;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Ls/b;->K()V

    return-void
.end method

.method private final D(Z)V
    .locals 0

    invoke-direct {p0, p1}, Ls/b;->H(Z)V

    return-void
.end method

.method static synthetic E(Ls/b;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Ls/b;->D(Z)V

    return-void
.end method

.method private final F(III)V
    .locals 1

    invoke-direct {p0}, Ls/b;->A()V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1, p2, p3}, Ls/a;->u(III)V

    return-void
.end method

.method private final G()V
    .locals 4

    iget v0, p0, Ls/b;->l:I

    if-lez v0, :cond_1

    iget v1, p0, Ls/b;->i:I

    const/4 v2, -0x1

    if-ltz v1, :cond_0

    invoke-direct {p0, v1, v0}, Ls/b;->J(II)V

    iput v2, p0, Ls/b;->i:I

    goto :goto_0

    :cond_0
    iget v1, p0, Ls/b;->k:I

    iget v3, p0, Ls/b;->j:I

    invoke-direct {p0, v1, v3, v0}, Ls/b;->F(III)V

    iput v2, p0, Ls/b;->j:I

    iput v2, p0, Ls/b;->k:I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Ls/b;->l:I

    :cond_1
    return-void
.end method

.method private final H(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/i2;->u()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/i2;->k()I

    move-result p1

    :goto_0
    iget v0, p0, Ls/b;->f:I

    sub-int v0, p1, v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    const-string v1, "Tried to seek backward"

    invoke-static {v1}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    :cond_2
    if-lez v0, :cond_3

    iget-object v1, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v1, v0}, Ls/a;->e(I)V

    iput p1, p0, Ls/b;->f:I

    :cond_3
    return-void
.end method

.method static synthetic I(Ls/b;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Ls/b;->H(Z)V

    return-void
.end method

.method private final J(II)V
    .locals 1

    invoke-direct {p0}, Ls/b;->A()V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1, p2}, Ls/a;->x(II)V

    return-void
.end method

.method private final k(Landroidx/compose/runtime/c;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Ls/b;->E(Ls/b;ZILjava/lang/Object;)V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1}, Ls/a;->o(Landroidx/compose/runtime/c;)V

    iput-boolean v2, p0, Ls/b;->c:Z

    return-void
.end method

.method private final l()V
    .locals 3

    iget-boolean v0, p0, Ls/b;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ls/b;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1}, Ls/b;->E(Ls/b;ZILjava/lang/Object;)V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0}, Ls/a;->p()V

    iput-boolean v2, p0, Ls/b;->c:Z

    :cond_0
    return-void
.end method

.method private final q()Landroidx/compose/runtime/i2;
    .locals 1

    iget-object v0, p0, Ls/b;->a:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->E0()Landroidx/compose/runtime/i2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final K()V
    .locals 4

    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/i2;->x()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/i2;->u()I

    move-result v1

    iget-object v2, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/m0;->h(I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-direct {p0}, Ls/b;->l()V

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/i2;->a(I)Landroidx/compose/runtime/c;

    move-result-object v0

    iget-object v2, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/m0;->j(I)V

    invoke-direct {p0, v0}, Ls/b;->k(Landroidx/compose/runtime/c;)V

    :cond_0
    return-void
.end method

.method public final L()V
    .locals 1

    invoke-direct {p0}, Ls/b;->B()V

    iget-boolean v0, p0, Ls/b;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls/b;->U()V

    invoke-virtual {p0}, Ls/b;->j()V

    :cond_0
    return-void
.end method

.method public final M(Landroidx/compose/runtime/b2;)V
    .locals 1

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1}, Ls/a;->v(Landroidx/compose/runtime/b2;)V

    return-void
.end method

.method public final N()V
    .locals 2

    invoke-direct {p0}, Ls/b;->C()V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0}, Ls/a;->w()V

    iget v0, p0, Ls/b;->f:I

    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/i2;->p()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ls/b;->f:I

    return-void
.end method

.method public final O(II)V
    .locals 2

    if-lez p2, :cond_3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid remove index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Ls/b;->i:I

    if-ne v0, p1, :cond_2

    iget p1, p0, Ls/b;->l:I

    add-int/2addr p1, p2

    iput p1, p0, Ls/b;->l:I

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Ls/b;->G()V

    iput p1, p0, Ls/b;->i:I

    iput p2, p0, Ls/b;->l:I

    :cond_3
    :goto_1
    return-void
.end method

.method public final P()V
    .locals 1

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0}, Ls/a;->y()V

    return-void
.end method

.method public final Q()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/b;->c:Z

    iget-object v1, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    invoke-virtual {v1}, Landroidx/compose/runtime/m0;->a()V

    iput v0, p0, Ls/b;->f:I

    return-void
.end method

.method public final R(Ls/a;)V
    .locals 0

    iput-object p1, p0, Ls/b;->b:Ls/a;

    return-void
.end method

.method public final S(Z)V
    .locals 0

    iput-boolean p1, p0, Ls/b;->e:Z

    return-void
.end method

.method public final T(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1}, Ls/a;->z(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final U()V
    .locals 1

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0}, Ls/a;->A()V

    return-void
.end method

.method public final V(I)V
    .locals 1

    if-lez p1, :cond_0

    invoke-direct {p0}, Ls/b;->C()V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1}, Ls/a;->B(I)V

    :cond_0
    return-void
.end method

.method public final W(Ljava/lang/Object;Landroidx/compose/runtime/c;I)V
    .locals 1

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1, p2, p3}, Ls/a;->C(Ljava/lang/Object;Landroidx/compose/runtime/c;I)V

    return-void
.end method

.method public final X(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Ls/b;->E(Ls/b;ZILjava/lang/Object;)V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1}, Ls/a;->D(Ljava/lang/Object;)V

    return-void
.end method

.method public final Y(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    invoke-direct {p0}, Ls/b;->A()V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1, p2}, Ls/a;->E(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final Z(Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls/b;->D(Z)V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1, p2}, Ls/a;->F(Ljava/lang/Object;I)V

    return-void
.end method

.method public final a(Landroidx/compose/runtime/c;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1, p2}, Ls/a;->f(Landroidx/compose/runtime/c;Ljava/lang/Object;)V

    return-void
.end method

.method public final a0(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ls/b;->A()V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1}, Ls/a;->H(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/util/List;Landroidx/compose/runtime/internal/c;)V
    .locals 1

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1, p2}, Ls/a;->g(Ljava/util/List;Landroidx/compose/runtime/internal/c;)V

    return-void
.end method

.method public final c(Landroidx/compose/runtime/x0;Landroidx/compose/runtime/m;Landroidx/compose/runtime/y0;Landroidx/compose/runtime/y0;)V
    .locals 1

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Ls/a;->h(Landroidx/compose/runtime/x0;Landroidx/compose/runtime/m;Landroidx/compose/runtime/y0;Landroidx/compose/runtime/y0;)V

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Ls/b;->E(Ls/b;ZILjava/lang/Object;)V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0}, Ls/a;->i()V

    return-void
.end method

.method public final e(Landroidx/compose/runtime/internal/c;Landroidx/compose/runtime/c;)V
    .locals 1

    invoke-direct {p0}, Ls/b;->B()V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1, p2}, Ls/a;->j(Landroidx/compose/runtime/internal/c;Landroidx/compose/runtime/c;)V

    return-void
.end method

.method public final f(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/l;)V
    .locals 1

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1, p2}, Ls/a;->l(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/l;)V

    return-void
.end method

.method public final g()V
    .locals 5

    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/i2;->u()I

    move-result v0

    iget-object v1, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/m0;->h(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v1, v0, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "Missed recording an endGroup"

    invoke-static {v1}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/m0;->h(I)I

    move-result v1

    if-ne v1, v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, v3, v4, v0}, Ls/b;->E(Ls/b;ZILjava/lang/Object;)V

    iget-object v0, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    invoke-virtual {v0}, Landroidx/compose/runtime/m0;->i()I

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0}, Ls/a;->m()V

    :cond_2
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0}, Ls/a;->n()V

    const/4 v0, 0x0

    iput v0, p0, Ls/b;->f:I

    return-void
.end method

.method public final i()V
    .locals 0

    invoke-direct {p0}, Ls/b;->G()V

    return-void
.end method

.method public final j()V
    .locals 3

    iget-boolean v0, p0, Ls/b;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Ls/b;->E(Ls/b;ZILjava/lang/Object;)V

    invoke-static {p0, v0, v1, v2}, Ls/b;->E(Ls/b;ZILjava/lang/Object;)V

    iget-object v1, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v1}, Ls/a;->m()V

    iput-boolean v0, p0, Ls/b;->c:Z

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1

    invoke-direct {p0}, Ls/b;->B()V

    iget-object v0, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    invoke-virtual {v0}, Landroidx/compose/runtime/m0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Missed recording an endGroup()"

    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final n()Ls/a;
    .locals 1

    iget-object v0, p0, Ls/b;->b:Ls/a;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Ls/b;->e:Z

    return v0
.end method

.method public final p()Z
    .locals 2

    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/i2;->u()I

    move-result v0

    iget v1, p0, Ls/b;->f:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r(Ls/a;Landroidx/compose/runtime/internal/c;)V
    .locals 1

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1, p2}, Ls/a;->q(Ls/a;Landroidx/compose/runtime/internal/c;)V

    return-void
.end method

.method public final s(Landroidx/compose/runtime/c;Landroidx/compose/runtime/j2;)V
    .locals 1

    invoke-direct {p0}, Ls/b;->B()V

    invoke-direct {p0}, Ls/b;->C()V

    invoke-direct {p0}, Ls/b;->G()V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1, p2}, Ls/a;->r(Landroidx/compose/runtime/c;Landroidx/compose/runtime/j2;)V

    return-void
.end method

.method public final t(Landroidx/compose/runtime/c;Landroidx/compose/runtime/j2;Ls/c;)V
    .locals 1

    invoke-direct {p0}, Ls/b;->B()V

    invoke-direct {p0}, Ls/b;->C()V

    invoke-direct {p0}, Ls/b;->G()V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1, p2, p3}, Ls/a;->s(Landroidx/compose/runtime/c;Landroidx/compose/runtime/j2;Ls/c;)V

    return-void
.end method

.method public final u(I)V
    .locals 1

    invoke-direct {p0}, Ls/b;->C()V

    iget-object v0, p0, Ls/b;->b:Ls/a;

    invoke-virtual {v0, p1}, Ls/a;->t(I)V

    return-void
.end method

.method public final v(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ls/b;->G()V

    iget-object v0, p0, Ls/b;->h:Landroidx/compose/runtime/z2;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/z2;->h(Ljava/lang/Object;)Z

    return-void
.end method

.method public final w(III)V
    .locals 3

    if-lez p3, :cond_1

    iget v0, p0, Ls/b;->l:I

    if-lez v0, :cond_0

    iget v1, p0, Ls/b;->j:I

    sub-int v2, p1, v0

    if-ne v1, v2, :cond_0

    iget v1, p0, Ls/b;->k:I

    sub-int v2, p2, v0

    if-ne v1, v2, :cond_0

    add-int/2addr v0, p3

    iput v0, p0, Ls/b;->l:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ls/b;->G()V

    iput p1, p0, Ls/b;->j:I

    iput p2, p0, Ls/b;->k:I

    iput p3, p0, Ls/b;->l:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final x(I)V
    .locals 2

    iget v0, p0, Ls/b;->f:I

    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/i2;->k()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Ls/b;->f:I

    return-void
.end method

.method public final y(I)V
    .locals 0

    iput p1, p0, Ls/b;->f:I

    return-void
.end method

.method public final z()V
    .locals 1

    invoke-direct {p0}, Ls/b;->G()V

    iget-object v0, p0, Ls/b;->h:Landroidx/compose/runtime/z2;

    invoke-virtual {v0}, Landroidx/compose/runtime/z2;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls/b;->h:Landroidx/compose/runtime/z2;

    invoke-virtual {v0}, Landroidx/compose/runtime/z2;->g()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget v0, p0, Ls/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls/b;->g:I

    :goto_0
    return-void
.end method
