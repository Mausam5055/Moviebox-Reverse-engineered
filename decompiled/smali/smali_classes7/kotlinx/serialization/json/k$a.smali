.class public final Lkotlinx/serialization/json/k$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/descriptors/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/k;->f(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/descriptors/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/k$a;->a:Lkotlin/Lazy;

    return-void
.end method

.method private final a()Lkotlinx/serialization/descriptors/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/k$a;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    invoke-static {p0}, Lkotlinx/serialization/descriptors/f$a;->c(Lkotlinx/serialization/descriptors/f;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->c(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public d()Lkotlinx/serialization/descriptors/h;
    .locals 1

    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->e()I

    move-result v0

    return v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->f(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(I)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->g(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lkotlinx/serialization/descriptors/f$a;->a(Lkotlinx/serialization/descriptors/f;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lkotlinx/serialization/descriptors/f;
    .locals 1

    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    return-object p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInline()Z
    .locals 1

    invoke-static {p0}, Lkotlinx/serialization/descriptors/f$a;->b(Lkotlinx/serialization/descriptors/f;)Z

    move-result v0

    return v0
.end method

.method public j(I)Z
    .locals 1

    invoke-direct {p0}, Lkotlinx/serialization/json/k$a;->a()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->j(I)Z

    move-result p1

    return p1
.end method
