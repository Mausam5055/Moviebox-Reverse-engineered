.class final Lkotlinx/serialization/json/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/descriptors/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final b:Lkotlinx/serialization/json/c$a;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final synthetic a:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/c$a;

    invoke-direct {v0}, Lkotlinx/serialization/json/c$a;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/c$a;->b:Lkotlinx/serialization/json/c$a;

    const-string v0, "kotlinx.serialization.json.JsonArray"

    sput-object v0, Lkotlinx/serialization/json/c$a;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-static {v0}, Ld00/a;->h(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/c$a;->a:Lkotlinx/serialization/descriptors/f;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/c$a;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/c$a;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->c(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public d()Lkotlinx/serialization/descriptors/h;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/c$a;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->d()Lkotlinx/serialization/descriptors/h;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/c$a;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->e()I

    move-result v0

    return v0
.end method

.method public f(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/c$a;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->f(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(I)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/c$a;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->g(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/c$a;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lkotlinx/serialization/descriptors/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/c$a;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->h(I)Lkotlinx/serialization/descriptors/f;

    move-result-object p1

    return-object p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/c$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isInline()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/c$a;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/f;->isInline()Z

    move-result v0

    return v0
.end method

.method public j(I)Z
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/c$a;->a:Lkotlinx/serialization/descriptors/f;

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/f;->j(I)Z

    move-result p1

    return p1
.end method
