.class public final Lez/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/internal/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final INSTANCE:Lez/a$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lez/a$a;

    invoke-direct {v0}, Lez/a$a;-><init>()V

    sput-object v0, Lez/a$a;->INSTANCE:Lez/a$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.fpd.Demographic"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/i0;I)V

    const-string v0, "age_range"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "length_of_residence"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "median_home_value_usd"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "monthly_housing_payment_usd"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    sput-object v1, Lez/a$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/b;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    invoke-static {v0}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v1

    invoke-static {v0}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v2

    invoke-static {v0}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v3

    invoke-static {v0}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [Lkotlinx/serialization/b;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    return-object v4
.end method

.method public deserialize(Le00/e;)Lez/a;
    .locals 13

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lez/a$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p1, v0}, Le00/e;->b(Lkotlinx/serialization/descriptors/f;)Le00/c;

    move-result-object p1

    invoke-interface {p1}, Le00/c;->p()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    invoke-interface {p1, v0, v5, v1, v6}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v0, v4, v1, v6}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v0, v3, v1, v6}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0, v2, v1, v6}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xf

    move-object v8, v3

    move v3, v2

    goto :goto_1

    :cond_0
    move v10, v4

    move v1, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :goto_0
    if-eqz v10, :cond_6

    invoke-interface {p1, v0}, Le00/c;->o(Lkotlinx/serialization/descriptors/f;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    if-eqz v11, :cond_4

    if-eq v11, v4, :cond_3

    if-eq v11, v3, :cond_2

    if-ne v11, v2, :cond_1

    sget-object v11, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    invoke-interface {p1, v0, v2, v11, v9}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    or-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v11}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p1

    :cond_2
    sget-object v11, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    invoke-interface {p1, v0, v3, v11, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_3
    sget-object v11, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    invoke-interface {p1, v0, v4, v11, v7}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    sget-object v11, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    invoke-interface {p1, v0, v5, v11, v6}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v10, v5

    goto :goto_0

    :cond_6
    move v3, v1

    move-object v5, v6

    move-object v4, v7

    move-object v1, v9

    :goto_1
    invoke-interface {p1, v0}, Le00/c;->c(Lkotlinx/serialization/descriptors/f;)V

    new-instance p1, Lez/a;

    move-object v0, v5

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    move-object v6, v8

    check-cast v6, Ljava/lang/Integer;

    move-object v7, v1

    check-cast v7, Ljava/lang/Integer;

    const/4 v8, 0x0

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lez/a;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/serialization/internal/w1;)V

    return-object p1
.end method

.method public bridge synthetic deserialize(Le00/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lez/a$a;->deserialize(Le00/e;)Lez/a;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    sget-object v0, Lez/a$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public serialize(Le00/f;Lez/a;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lez/a$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p1, v0}, Le00/f;->b(Lkotlinx/serialization/descriptors/f;)Le00/d;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lez/a;->write$Self(Lez/a;Le00/d;Lkotlinx/serialization/descriptors/f;)V

    invoke-interface {p1, v0}, Le00/d;->c(Lkotlinx/serialization/descriptors/f;)V

    return-void
.end method

.method public bridge synthetic serialize(Le00/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lez/a;

    invoke-virtual {p0, p1, p2}, Lez/a$a;->serialize(Le00/f;Lez/a;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/b;"
        }
    .end annotation

    invoke-static {p0}, Lkotlinx/serialization/internal/i0$a;->a(Lkotlinx/serialization/internal/i0;)[Lkotlinx/serialization/b;

    move-result-object v0

    return-object v0
.end method
