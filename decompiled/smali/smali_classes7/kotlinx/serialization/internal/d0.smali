.class public final Lkotlinx/serialization/internal/d0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/b;


# static fields
.field public static final a:Lkotlinx/serialization/internal/d0;

.field private static final b:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/serialization/internal/d0;

    invoke-direct {v0}, Lkotlinx/serialization/internal/d0;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/d0;->a:Lkotlinx/serialization/internal/d0;

    new-instance v0, Lkotlinx/serialization/internal/s1;

    const-string v1, "kotlin.time.Duration"

    sget-object v2, Lkotlinx/serialization/descriptors/e$i;->a:Lkotlinx/serialization/descriptors/e$i;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/internal/s1;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/e;)V

    sput-object v0, Lkotlinx/serialization/internal/d0;->b:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le00/e;)J
    .locals 2

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/time/Duration;->b:Lkotlin/time/Duration$Companion;

    invoke-interface {p1}, Le00/e;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/time/Duration$Companion;->d(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Le00/f;J)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lkotlin/time/Duration;->H(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le00/f;->G(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic deserialize(Le00/e;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/d0;->a(Le00/e;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->g(J)Lkotlin/time/Duration;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    sget-object v0, Lkotlinx/serialization/internal/d0;->b:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public bridge synthetic serialize(Le00/f;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lkotlin/time/Duration;

    invoke-virtual {p2}, Lkotlin/time/Duration;->L()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/serialization/internal/d0;->b(Le00/f;J)V

    return-void
.end method
