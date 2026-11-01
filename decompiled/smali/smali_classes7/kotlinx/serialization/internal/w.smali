.class public abstract Lkotlinx/serialization/internal/w;
.super Lkotlinx/serialization/internal/a;


# instance fields
.field private final a:Lkotlinx/serialization/b;


# direct methods
.method private constructor <init>(Lkotlinx/serialization/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlinx/serialization/internal/w;->a:Lkotlinx/serialization/b;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/w;-><init>(Lkotlinx/serialization/b;)V

    return-void
.end method

.method public static final synthetic m(Lkotlinx/serialization/internal/w;)Lkotlinx/serialization/b;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/w;->a:Lkotlinx/serialization/b;

    return-object p0
.end method


# virtual methods
.method protected final g(Le00/c;Ljava/lang/Object;II)V
    .locals 3

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p4, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    add-int v2, p3, v1

    invoke-virtual {p0, p1, v2, p2, v0}, Lkotlinx/serialization/internal/w;->h(Le00/c;ILjava/lang/Object;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Size must be known in advance when using READ_ALL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getDescriptor()Lkotlinx/serialization/descriptors/f;
.end method

.method protected h(Le00/c;ILjava/lang/Object;Z)V
    .locals 7

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/internal/w;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v1

    iget-object v3, p0, Lkotlinx/serialization/internal/w;->a:Lkotlinx/serialization/b;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Le00/c$a;->c(Le00/c;Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p2, p1}, Lkotlinx/serialization/internal/w;->n(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method protected abstract n(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method public serialize(Le00/f;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/a;->e(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/w;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Le00/f;->j(Lkotlinx/serialization/descriptors/f;I)Le00/d;

    move-result-object p1

    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/a;->d(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/w;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v3

    invoke-static {p0}, Lkotlinx/serialization/internal/w;->m(Lkotlinx/serialization/internal/w;)Lkotlinx/serialization/b;

    move-result-object v4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v3, v2, v4, v5}, Le00/d;->C(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Le00/d;->c(Lkotlinx/serialization/descriptors/f;)V

    return-void
.end method
