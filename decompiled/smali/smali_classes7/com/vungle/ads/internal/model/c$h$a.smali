.class public final Lcom/vungle/ads/internal/model/c$h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/internal/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/c$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/c$h$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vungle/ads/internal/model/c$h$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/c$h$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/c$h$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$h$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.CommonRequestBody.RequestExt"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/i0;I)V

    const-string v0, "config_extension"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "signals"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "config_last_validated_ts"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/c$h$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/b;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-static {v0}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v1

    invoke-static {v0}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v0

    sget-object v2, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    invoke-static {v2}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lkotlinx/serialization/b;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    aput-object v2, v3, v0

    return-object v3
.end method

.method public deserialize(Le00/e;)Lcom/vungle/ads/internal/model/c$h;
    .locals 11

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/c$h$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p1, v0}, Le00/e;->b(Lkotlinx/serialization/descriptors/f;)Le00/c;

    move-result-object p1

    invoke-interface {p1}, Le00/c;->p()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-interface {p1, v0, v4, v1, v5}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v0, v3, v1, v5}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    invoke-interface {p1, v0, v2, v3, v5}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x7

    move-object v5, v4

    move v4, v3

    goto :goto_1

    :cond_0
    move v8, v3

    move v1, v4

    move-object v6, v5

    move-object v7, v6

    :goto_0
    if-eqz v8, :cond_5

    invoke-interface {p1, v0}, Le00/c;->o(Lkotlinx/serialization/descriptors/f;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    if-eqz v9, :cond_3

    if-eq v9, v3, :cond_2

    if-ne v9, v2, :cond_1

    sget-object v9, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    invoke-interface {p1, v0, v2, v9, v7}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v9}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p1

    :cond_2
    sget-object v9, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-interface {p1, v0, v3, v9, v6}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    sget-object v9, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-interface {p1, v0, v4, v9, v5}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v8, v4

    goto :goto_0

    :cond_5
    move v4, v1

    move-object v1, v6

    move-object v2, v7

    :goto_1
    invoke-interface {p1, v0}, Le00/c;->c(Lkotlinx/serialization/descriptors/f;)V

    new-instance p1, Lcom/vungle/ads/internal/model/c$h;

    check-cast v5, Ljava/lang/String;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    move-object v7, v2

    check-cast v7, Ljava/lang/Long;

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/vungle/ads/internal/model/c$h;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/internal/w1;)V

    return-object p1
.end method

.method public bridge synthetic deserialize(Le00/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/c$h$a;->deserialize(Le00/e;)Lcom/vungle/ads/internal/model/c$h;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/model/c$h$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public serialize(Le00/f;Lcom/vungle/ads/internal/model/c$h;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/c$h$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p1, v0}, Le00/f;->b(Lkotlinx/serialization/descriptors/f;)Le00/d;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/c$h;->write$Self(Lcom/vungle/ads/internal/model/c$h;Le00/d;Lkotlinx/serialization/descriptors/f;)V

    invoke-interface {p1, v0}, Le00/d;->c(Lkotlinx/serialization/descriptors/f;)V

    return-void
.end method

.method public bridge synthetic serialize(Le00/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/vungle/ads/internal/model/c$h;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/c$h$a;->serialize(Le00/f;Lcom/vungle/ads/internal/model/c$h;)V

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
