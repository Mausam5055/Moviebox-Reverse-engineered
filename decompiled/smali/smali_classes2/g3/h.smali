.class final Lg3/h;
.super Lg3/i;


# static fields
.field private static final o:[B

.field private static final p:[B


# instance fields
.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lg3/h;->o:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lg3/h;->p:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg3/i;-><init>()V

    return-void
.end method

.method private static n(Landroidx/media3/common/util/j0;[B)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    array-length v1, p1

    new-array v1, v1, [B

    array-length v3, p1

    invoke-virtual {p0, v1, v2, v3}, Landroidx/media3/common/util/j0;->l([BII)V

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static o(Landroidx/media3/common/util/j0;)Z
    .locals 1

    sget-object v0, Lg3/h;->o:[B

    invoke-static {p0, v0}, Lg3/h;->n(Landroidx/media3/common/util/j0;[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected f(Landroidx/media3/common/util/j0;)J
    .locals 2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p1

    invoke-static {p1}, Ll2/k0;->e([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lg3/i;->c(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected h(Landroidx/media3/common/util/j0;JLg3/i$b;)Z
    .locals 2

    sget-object p2, Lg3/h;->o:[B

    invoke-static {p1, p2}, Lg3/h;->n(Landroidx/media3/common/util/j0;[B)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object p2

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->g()I

    move-result p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-static {p1}, Ll2/k0;->c([B)I

    move-result p2

    invoke-static {p1}, Ll2/k0;->a([B)Ljava/util/List;

    move-result-object p1

    iget-object v0, p4, Lg3/i$b;->a:Landroidx/media3/common/r;

    if-eqz v0, :cond_0

    return p3

    :cond_0
    new-instance v0, Landroidx/media3/common/r$b;

    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    const-string v1, "audio/ogg"

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    const-string v1, "audio/opus"

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object p2

    const v0, 0xbb80

    invoke-virtual {p2, v0}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    iput-object p1, p4, Lg3/i$b;->a:Landroidx/media3/common/r;

    return p3

    :cond_1
    sget-object p2, Lg3/h;->p:[B

    invoke-static {p1, p2}, Lg3/h;->n(Landroidx/media3/common/util/j0;[B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p4, Lg3/i$b;->a:Landroidx/media3/common/r;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lg3/h;->n:Z

    if-eqz v0, :cond_2

    return p3

    :cond_2
    iput-boolean p3, p0, Lg3/h;->n:Z

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-static {p1, v1, v1}, Ll2/v0;->k(Landroidx/media3/common/util/j0;ZZ)Ll2/v0$a;

    move-result-object p1

    iget-object p1, p1, Ll2/v0$a;->b:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Ll2/v0;->d(Ljava/util/List;)Landroidx/media3/common/x;

    move-result-object p1

    if-nez p1, :cond_3

    return p3

    :cond_3
    iget-object p2, p4, Lg3/i$b;->a:Landroidx/media3/common/r;

    invoke-virtual {p2}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object p2

    iget-object v0, p4, Lg3/i$b;->a:Landroidx/media3/common/r;

    iget-object v0, v0, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    invoke-virtual {p1, v0}, Landroidx/media3/common/x;->b(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    iput-object p1, p4, Lg3/i$b;->a:Landroidx/media3/common/r;

    return p3

    :cond_4
    iget-object p1, p4, Lg3/i$b;->a:Landroidx/media3/common/r;

    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method protected l(Z)V
    .locals 0

    invoke-super {p0, p1}, Lg3/i;->l(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg3/h;->n:Z

    :cond_0
    return-void
.end method
