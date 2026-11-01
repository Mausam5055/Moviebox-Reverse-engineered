.class public final Lcom/vungle/ads/internal/model/c$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/internal/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/c$b$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vungle/ads/internal/model/c$b$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/c$b$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/c$b$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$b$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.CommonRequestBody.AdSizeParam"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/i0;I)V

    const-string v0, "w"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "h"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/c$b$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/b;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/serialization/b;

    sget-object v1, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public deserialize(Le00/e;)Lcom/vungle/ads/internal/model/c$b;
    .locals 9

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/c$b$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p1, v0}, Le00/e;->b(Lkotlinx/serialization/descriptors/f;)Le00/c;

    move-result-object p1

    invoke-interface {p1}, Le00/c;->p()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p1, v0, v3}, Le00/c;->i(Lkotlinx/serialization/descriptors/f;I)I

    move-result v1

    invoke-interface {p1, v0, v2}, Le00/c;->i(Lkotlinx/serialization/descriptors/f;I)I

    move-result v2

    const/4 v3, 0x3

    goto :goto_1

    :cond_0
    move v6, v2

    move v1, v3

    move v4, v1

    move v5, v4

    :goto_0
    if-eqz v6, :cond_4

    invoke-interface {p1, v0}, Le00/c;->o(Lkotlinx/serialization/descriptors/f;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    if-eqz v7, :cond_2

    if-ne v7, v2, :cond_1

    invoke-interface {p1, v0, v2}, Le00/c;->i(Lkotlinx/serialization/descriptors/f;I)I

    move-result v4

    or-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v7}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p1

    :cond_2
    invoke-interface {p1, v0, v3}, Le00/c;->i(Lkotlinx/serialization/descriptors/f;I)I

    move-result v1

    or-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v6, v3

    goto :goto_0

    :cond_4
    move v2, v4

    move v3, v5

    :goto_1
    invoke-interface {p1, v0}, Le00/c;->c(Lkotlinx/serialization/descriptors/f;)V

    new-instance p1, Lcom/vungle/ads/internal/model/c$b;

    const/4 v0, 0x0

    invoke-direct {p1, v3, v1, v2, v0}, Lcom/vungle/ads/internal/model/c$b;-><init>(IIILkotlinx/serialization/internal/w1;)V

    return-object p1
.end method

.method public bridge synthetic deserialize(Le00/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/c$b$a;->deserialize(Le00/e;)Lcom/vungle/ads/internal/model/c$b;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/model/c$b$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public serialize(Le00/f;Lcom/vungle/ads/internal/model/c$b;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/c$b$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p1, v0}, Le00/f;->b(Lkotlinx/serialization/descriptors/f;)Le00/d;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/c$b;->write$Self(Lcom/vungle/ads/internal/model/c$b;Le00/d;Lkotlinx/serialization/descriptors/f;)V

    invoke-interface {p1, v0}, Le00/d;->c(Lkotlinx/serialization/descriptors/f;)V

    return-void
.end method

.method public bridge synthetic serialize(Le00/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/vungle/ads/internal/model/c$b;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/c$b$a;->serialize(Le00/f;Lcom/vungle/ads/internal/model/c$b;)V

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
