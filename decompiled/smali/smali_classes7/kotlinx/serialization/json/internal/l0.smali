.class public final Lkotlinx/serialization/json/internal/l0;
.super Le00/b;

# interfaces
.implements Lkotlinx/serialization/json/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/l0$a;
    }
.end annotation


# instance fields
.field private final a:Lkotlinx/serialization/json/internal/j;

.field private final b:Lkotlinx/serialization/json/a;

.field private final c:Lkotlinx/serialization/json/internal/WriteMode;

.field private final d:[Lkotlinx/serialization/json/l;

.field private final e:Lf00/c;

.field private final f:Lkotlinx/serialization/json/f;

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/h0;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/l;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeReuseCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/s;->a(Lkotlinx/serialization/json/internal/h0;Lkotlinx/serialization/json/a;)Lkotlinx/serialization/json/internal/j;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/serialization/json/internal/l0;-><init>(Lkotlinx/serialization/json/internal/j;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/l;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/json/internal/j;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/l;)V
    .locals 1

    const-string v0, "composer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Le00/b;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/l0;->b:Lkotlinx/serialization/json/a;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/l0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    iput-object p4, p0, Lkotlinx/serialization/json/internal/l0;->d:[Lkotlinx/serialization/json/l;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/l0;->d()Lkotlinx/serialization/json/a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->a()Lf00/c;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/l0;->e:Lf00/c;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/l0;->d()Lkotlinx/serialization/json/a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/l0;->f:Lkotlinx/serialization/json/f;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p4, :cond_1

    aget-object p2, p4, p1

    if-nez p2, :cond_0

    if-eq p2, p0, :cond_1

    :cond_0
    aput-object p0, p4, p1

    :cond_1
    return-void
.end method

.method private final K()Lkotlinx/serialization/json/internal/j;
    .locals 3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    instance-of v1, v0, Lkotlinx/serialization/json/internal/q;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/serialization/json/internal/q;

    iget-object v0, v0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/h0;

    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/l0;->g:Z

    invoke-direct {v1, v0, v2}, Lkotlinx/serialization/json/internal/q;-><init>(Lkotlinx/serialization/json/internal/h0;Z)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private final L(Lkotlinx/serialization/descriptors/f;)V
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/j;->c()V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->h:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/l0;->G(Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/j;->e(C)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/j;->o()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/l0;->G(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A(Lkotlinx/serialization/json/h;)V
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/internal/l0;->e(Lkotlinx/serialization/g;Ljava/lang/Object;)V

    return-void
.end method

.method public B(I)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/l0;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/l0;->G(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/j;->h(I)V

    :goto_0
    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/j;->m(Ljava/lang/String;)V

    return-void
.end method

.method public H(Lkotlinx/serialization/descriptors/f;I)Z
    .locals 6

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v1, Lkotlinx/serialization/json/internal/l0$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0x2c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/16 v3, 0x3a

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/j;->e(C)V

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/j;->c()V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/f;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/l0;->G(Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1, v3}, Lkotlinx/serialization/json/internal/j;->e(C)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->o()V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/l0;->g:Z

    :cond_2
    if-ne p2, v2, :cond_8

    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/j;->e(C)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->o()V

    iput-boolean v4, p0, Lkotlinx/serialization/json/internal/l0;->g:Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->a()Z

    move-result p1

    if-nez p1, :cond_5

    rem-int/2addr p2, v5

    if-nez p2, :cond_4

    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/j;->e(C)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->c()V

    move v4, v2

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1, v3}, Lkotlinx/serialization/json/internal/j;->e(C)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->o()V

    :goto_0
    iput-boolean v4, p0, Lkotlinx/serialization/json/internal/l0;->g:Z

    goto :goto_1

    :cond_5
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/l0;->g:Z

    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->c()V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->a()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/j;->e(C)V

    :cond_7
    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->c()V

    :cond_8
    :goto_1
    return v2
.end method

.method public a()Lf00/c;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->e:Lf00/c;

    return-object v0
.end method

.method public b(Lkotlinx/serialization/descriptors/f;)Le00/d;
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/l0;->d()Lkotlinx/serialization/json/a;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/serialization/json/internal/q0;->b(Lkotlinx/serialization/json/a;Lkotlinx/serialization/descriptors/f;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v0

    iget-char v1, v0, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    if-eqz v1, :cond_0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v2, v1}, Lkotlinx/serialization/json/internal/j;->e(C)V

    iget-object v1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/j;->b()V

    :cond_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/l0;->h:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/l0;->L(Lkotlinx/serialization/descriptors/f;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/serialization/json/internal/l0;->h:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne p1, v0, :cond_2

    return-object p0

    :cond_2
    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->d:[Lkotlinx/serialization/json/l;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object p1, p1, v1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlinx/serialization/json/internal/l0;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/l0;->d()Lkotlinx/serialization/json/a;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/serialization/json/internal/l0;->d:[Lkotlinx/serialization/json/l;

    invoke-direct {p1, v1, v2, v0, v3}, Lkotlinx/serialization/json/internal/l0;-><init>(Lkotlinx/serialization/json/internal/j;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/l;)V

    :goto_0
    return-object p1
.end method

.method public c(Lkotlinx/serialization/descriptors/f;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p1, p1, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    if-eqz p1, :cond_0

    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->p()V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->c()V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char v0, v0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/j;->e(C)V

    :cond_0
    return-void
.end method

.method public d()Lkotlinx/serialization/json/a;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->b:Lkotlinx/serialization/json/a;

    return-object v0
.end method

.method public e(Lkotlinx/serialization/g;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lkotlinx/serialization/internal/b;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lkotlinx/serialization/json/l;->d()Lkotlinx/serialization/json/a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/a;->e()Lkotlinx/serialization/json/f;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/internal/b;

    invoke-interface {p1}, Lkotlinx/serialization/g;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    invoke-interface {p0}, Lkotlinx/serialization/json/l;->d()Lkotlinx/serialization/json/a;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlinx/serialization/json/internal/i0;->c(Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/a;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p2}, Lkotlinx/serialization/d;->b(Lkotlinx/serialization/internal/b;Le00/f;Ljava/lang/Object;)Lkotlinx/serialization/g;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lkotlinx/serialization/json/internal/i0;->a(Lkotlinx/serialization/g;Lkotlinx/serialization/g;Ljava/lang/String;)V

    invoke-interface {v1}, Lkotlinx/serialization/g;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/internal/i0;->b(Lkotlinx/serialization/descriptors/h;)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/l0;->h:Ljava/lang/String;

    invoke-interface {v1, p0, p2}, Lkotlinx/serialization/g;->serialize(Le00/f;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/g;->serialize(Le00/f;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public g(D)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/l0;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/l0;->G(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/j;->f(D)V

    :goto_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->f:Lkotlinx/serialization/json/f;

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    iget-object p2, p2, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/h0;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/w;->b(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public h(B)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/l0;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/l0;->G(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/j;->d(B)V

    :goto_0
    return-void
.end method

.method public i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->f:Lkotlinx/serialization/json/f;

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Le00/b;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public k(Lkotlinx/serialization/descriptors/f;I)V
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/f;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/l0;->G(Ljava/lang/String;)V

    return-void
.end method

.method public l(Lkotlinx/serialization/descriptors/f;)Le00/f;
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/internal/m0;->a(Lkotlinx/serialization/descriptors/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lkotlinx/serialization/json/internal/l0;

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/l0;->K()Lkotlinx/serialization/json/internal/j;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/l0;->d()Lkotlinx/serialization/json/a;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/serialization/json/internal/l0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lkotlinx/serialization/json/internal/l0;-><init>(Lkotlinx/serialization/json/internal/j;Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/l;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Le00/b;->l(Lkotlinx/serialization/descriptors/f;)Le00/f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public m(J)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/l0;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/l0;->G(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/j;->i(J)V

    :goto_0
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/j;->j(Ljava/lang/String;)V

    return-void
.end method

.method public q(S)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/l0;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/l0;->G(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/j;->k(S)V

    :goto_0
    return-void
.end method

.method public r(Z)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/l0;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/l0;->G(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/j;->l(Z)V

    :goto_0
    return-void
.end method

.method public t(F)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/l0;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/l0;->G(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/j;->g(F)V

    :goto_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->f:Lkotlinx/serialization/json/f;

    invoke-virtual {v0}, Lkotlinx/serialization/json/f;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/l0;->a:Lkotlinx/serialization/json/internal/j;

    iget-object v0, v0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/w;->b(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonEncodingException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public u(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/l0;->G(Ljava/lang/String;)V

    return-void
.end method

.method public z(Lkotlinx/serialization/descriptors/f;I)Z
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/l0;->f:Lkotlinx/serialization/json/f;

    invoke-virtual {p1}, Lkotlinx/serialization/json/f;->e()Z

    move-result p1

    return p1
.end method
