.class public abstract Lkotlinx/serialization/json/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/a$a;
    }
.end annotation


# static fields
.field public static final d:Lkotlinx/serialization/json/a$a;


# instance fields
.field private final a:Lkotlinx/serialization/json/f;

.field private final b:Lf00/c;

.field private final c:Lkotlinx/serialization/json/internal/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/serialization/json/a;->d:Lkotlinx/serialization/json/a$a;

    return-void
.end method

.method private constructor <init>(Lkotlinx/serialization/json/f;Lf00/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/a;->a:Lkotlinx/serialization/json/f;

    iput-object p2, p0, Lkotlinx/serialization/json/a;->b:Lf00/c;

    new-instance p1, Lkotlinx/serialization/json/internal/u;

    invoke-direct {p1}, Lkotlinx/serialization/json/internal/u;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/a;->c:Lkotlinx/serialization/json/internal/u;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/f;Lf00/c;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/a;-><init>(Lkotlinx/serialization/json/f;Lf00/c;)V

    return-void
.end method


# virtual methods
.method public a()Lf00/c;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/a;->b:Lf00/c;

    return-object v0
.end method

.method public final b(Lkotlinx/serialization/a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/internal/n0;

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/internal/n0;-><init>(Ljava/lang/String;)V

    new-instance p2, Lkotlinx/serialization/json/internal/k0;

    sget-object v3, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-interface {p1}, Lkotlinx/serialization/a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/k0;-><init>(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/a;Lkotlinx/serialization/descriptors/f;Lkotlinx/serialization/json/internal/k0$a;)V

    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/internal/k0;->G(Lkotlinx/serialization/a;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/a;->w()V

    return-object p1
.end method

.method public final c(Lkotlinx/serialization/g;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/internal/b0;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/b0;-><init>()V

    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lkotlinx/serialization/json/internal/a0;->a(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/internal/h0;Lkotlinx/serialization/g;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/b0;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/b0;->g()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/b0;->g()V

    throw p1
.end method

.method public final d(Lkotlinx/serialization/a;Lkotlinx/serialization/json/h;)Ljava/lang/Object;
    .locals 1

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lkotlinx/serialization/json/internal/p0;->a(Lkotlinx/serialization/json/a;Lkotlinx/serialization/json/h;Lkotlinx/serialization/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lkotlinx/serialization/json/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/a;->a:Lkotlinx/serialization/json/f;

    return-object v0
.end method

.method public final f()Lkotlinx/serialization/json/internal/u;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/a;->c:Lkotlinx/serialization/json/internal/u;

    return-object v0
.end method
