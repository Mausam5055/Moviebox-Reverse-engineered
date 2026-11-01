.class public final Ls/g;
.super Ls/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls/g$a;,
        Ls/g$b;,
        Ls/g$c;
    }
.end annotation


# static fields
.field public static final i:Ls/g$a;

.field public static final j:I


# instance fields
.field private a:[Ls/d;

.field private b:I

.field private c:[I

.field private d:I

.field private e:[Ljava/lang/Object;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ls/g;->i:Ls/g$a;

    const/16 v0, 0x8

    sput v0, Ls/g;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ls/h;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Ls/d;

    iput-object v1, p0, Ls/g;->a:[Ls/d;

    new-array v1, v0, [I

    iput-object v1, p0, Ls/g;->c:[I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ls/g;->e:[Ljava/lang/Object;

    return-void
.end method

.method private final A(I)I
    .locals 2

    iget v0, p0, Ls/g;->f:I

    invoke-direct {p0}, Ls/g;->v()Ls/d;

    move-result-object v1

    invoke-virtual {v1}, Ls/d;->d()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method public static final synthetic a(Ls/g;I)I
    .locals 0

    invoke-direct {p0, p1}, Ls/g;->n(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Ls/g;)[I
    .locals 0

    iget-object p0, p0, Ls/g;->c:[I

    return-object p0
.end method

.method public static final synthetic c(Ls/g;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ls/g;->e:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic d(Ls/g;)[Ls/d;
    .locals 0

    iget-object p0, p0, Ls/g;->a:[Ls/d;

    return-object p0
.end method

.method public static final synthetic e(Ls/g;)I
    .locals 0

    iget p0, p0, Ls/g;->b:I

    return p0
.end method

.method public static final synthetic f(Ls/g;)I
    .locals 0

    iget p0, p0, Ls/g;->g:I

    return p0
.end method

.method public static final synthetic g(Ls/g;)I
    .locals 0

    iget p0, p0, Ls/g;->h:I

    return p0
.end method

.method public static final synthetic h(Ls/g;)Ls/d;
    .locals 0

    invoke-direct {p0}, Ls/g;->v()Ls/d;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Ls/g;I)V
    .locals 0

    iput p1, p0, Ls/g;->g:I

    return-void
.end method

.method public static final synthetic j(Ls/g;I)V
    .locals 0

    iput p1, p0, Ls/g;->h:I

    return-void
.end method

.method public static final synthetic k(Ls/g;I)I
    .locals 0

    invoke-direct {p0, p1}, Ls/g;->z(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic l(Ls/g;I)I
    .locals 0

    invoke-direct {p0, p1}, Ls/g;->A(I)I

    move-result p0

    return p0
.end method

.method private final n(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    rsub-int/lit8 p1, p1, 0x20

    const/4 v0, -0x1

    ushr-int p1, v0, p1

    :goto_0
    return p1
.end method

.method private final o(II)I
    .locals 1

    const/16 v0, 0x400

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result p1

    return p1
.end method

.method private final p(I)V
    .locals 2

    iget-object v0, p0, Ls/g;->c:[I

    array-length v1, v0

    if-le p1, v1, :cond_0

    invoke-direct {p0, v1, p1}, Ls/g;->o(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls/g;->c:[I

    :cond_0
    return-void
.end method

.method private final q(I)V
    .locals 2

    iget-object v0, p0, Ls/g;->e:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    invoke-direct {p0, v1, p1}, Ls/g;->o(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls/g;->e:[Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final v()Ls/d;
    .locals 2

    iget-object v0, p0, Ls/g;->a:[Ls/d;

    iget v1, p0, Ls/g;->b:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final z(I)I
    .locals 2

    iget v0, p0, Ls/g;->d:I

    invoke-direct {p0}, Ls/g;->v()Ls/d;

    move-result-object v1

    invoke-virtual {v1}, Ls/d;->b()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final m()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Ls/g;->b:I

    iput v0, p0, Ls/g;->d:I

    iget-object v1, p0, Ls/g;->e:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ls/g;->f:I

    invoke-static {v1, v2, v0, v3}, Lkotlin/collections/ArraysKt;->w([Ljava/lang/Object;Ljava/lang/Object;II)V

    iput v0, p0, Ls/g;->f:I

    return-void
.end method

.method public final r(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 2

    invoke-virtual {p0}, Ls/g;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ls/g$b;

    invoke-direct {v0, p0}, Ls/g$b;-><init>(Ls/g;)V

    :cond_0
    invoke-virtual {v0}, Ls/g$b;->c()Ls/d;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2, p3}, Ls/d;->a(Ls/e;Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V

    invoke-virtual {v0}, Ls/g$b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    invoke-virtual {p0}, Ls/g;->m()V

    return-void
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Ls/g;->b:I

    return v0
.end method

.method public final t()Z
    .locals 1

    invoke-virtual {p0}, Ls/g;->s()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    invoke-virtual {p0}, Ls/g;->s()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final w(Ls/g;)V
    .locals 10

    invoke-virtual {p0}, Ls/g;->t()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ls/g;->a:[Ls/d;

    iget v1, p0, Ls/g;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ls/g;->b:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v1, p0, Ls/g;->a:[Ls/d;

    iget v2, p0, Ls/g;->b:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {p1, v0}, Ls/g;->y(Ls/d;)V

    iget v1, p0, Ls/g;->f:I

    iget v2, p1, Ls/g;->f:I

    invoke-virtual {v0}, Ls/d;->d()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, -0x1

    iget-object v7, p1, Ls/g;->e:[Ljava/lang/Object;

    iget-object v8, p0, Ls/g;->e:[Ljava/lang/Object;

    aget-object v9, v8, v1

    aput-object v9, v7, v2

    aput-object v3, v8, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Ls/g;->d:I

    iget v2, p1, Ls/g;->d:I

    invoke-virtual {v0}, Ls/d;->b()I

    move-result v3

    move v4, v5

    :goto_1
    if-ge v4, v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, -0x1

    iget-object v6, p1, Ls/g;->c:[I

    iget-object v7, p0, Ls/g;->c:[I

    aget v8, v7, v1

    aput v8, v6, v2

    aput v5, v7, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Ls/g;->f:I

    invoke-virtual {v0}, Ls/d;->d()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, p0, Ls/g;->f:I

    iget p1, p0, Ls/g;->d:I

    invoke-virtual {v0}, Ls/d;->b()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Ls/g;->d:I

    return-void

    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Cannot pop(), because the stack is empty."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final x(Ls/d;)V
    .locals 2

    invoke-virtual {p1}, Ls/d;->b()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ls/d;->d()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot push "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " without arguments because it expects "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ints and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls/d;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " objects."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/o1;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Ls/g;->y(Ls/d;)V

    return-void
.end method

.method public final y(Ls/d;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Ls/g;->g:I

    iput v0, p0, Ls/g;->h:I

    iget v0, p0, Ls/g;->b:I

    iget-object v1, p0, Ls/g;->a:[Ls/d;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result v0

    iget-object v1, p0, Ls/g;->a:[Ls/d;

    iget v2, p0, Ls/g;->b:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ls/d;

    iput-object v0, p0, Ls/g;->a:[Ls/d;

    :cond_0
    iget v0, p0, Ls/g;->d:I

    invoke-virtual {p1}, Ls/d;->b()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Ls/g;->p(I)V

    iget v0, p0, Ls/g;->f:I

    invoke-virtual {p1}, Ls/d;->d()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Ls/g;->q(I)V

    iget-object v0, p0, Ls/g;->a:[Ls/d;

    iget v1, p0, Ls/g;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ls/g;->b:I

    aput-object p1, v0, v1

    iget v0, p0, Ls/g;->d:I

    invoke-virtual {p1}, Ls/d;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ls/g;->d:I

    iget v0, p0, Ls/g;->f:I

    invoke-virtual {p1}, Ls/d;->d()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Ls/g;->f:I

    return-void
.end method
