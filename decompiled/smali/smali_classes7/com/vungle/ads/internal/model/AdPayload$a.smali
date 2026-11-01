.class public final Lcom/vungle/ads/internal/model/AdPayload$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/internal/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/AdPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vungle/ads/internal/model/AdPayload$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/AdPayload$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/AdPayload$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.AdPayload"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/i0;I)V

    const-string v0, "ads"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "config"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "mraidFiles"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "incentivizedTextSettings"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "assetsFullyDownloaded"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/AdPayload$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/b;"
        }
    .end annotation

    new-instance v0, Lkotlinx/serialization/internal/f;

    sget-object v1, Lcom/vungle/ads/internal/model/AdPayload$f$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$f$a;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    invoke-static {v0}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v0

    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$a;

    invoke-static {v1}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v1

    new-instance v2, Lkotlinx/serialization/ContextualSerializer;

    const-class v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    sget-object v4, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    const/4 v5, 0x2

    new-array v6, v5, [Lkotlinx/serialization/b;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v8, 0x1

    aput-object v4, v6, v8

    const/4 v9, 0x0

    invoke-direct {v2, v3, v9, v6}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/b;[Lkotlinx/serialization/b;)V

    new-instance v3, Lkotlinx/serialization/internal/v0;

    invoke-direct {v3, v4, v4}, Lkotlinx/serialization/internal/v0;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V

    const/4 v4, 0x5

    new-array v4, v4, [Lkotlinx/serialization/b;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v5

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sget-object v0, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    const/4 v1, 0x4

    aput-object v0, v4, v1

    return-object v4
.end method

.method public deserialize(Le00/e;)Lcom/vungle/ads/internal/model/AdPayload;
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/model/AdPayload$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v1

    invoke-interface {v0, v1}, Le00/e;->b(Lkotlinx/serialization/descriptors/f;)Le00/c;

    move-result-object v0

    invoke-interface {v0}, Le00/c;->p()Z

    move-result v2

    const-class v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lkotlinx/serialization/internal/f;

    sget-object v10, Lcom/vungle/ads/internal/model/AdPayload$f$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$f$a;

    invoke-direct {v2, v10}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    invoke-interface {v0, v1, v8, v2, v9}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v10, Lcom/vungle/ads/internal/model/ConfigPayload$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$a;

    invoke-interface {v0, v1, v7, v10, v9}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    new-instance v11, Lkotlinx/serialization/ContextualSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    sget-object v12, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    new-array v13, v6, [Lkotlinx/serialization/b;

    aput-object v12, v13, v8

    aput-object v12, v13, v7

    invoke-direct {v11, v3, v9, v13}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/b;[Lkotlinx/serialization/b;)V

    invoke-interface {v0, v1, v6, v11, v9}, Le00/c;->y(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v6, Lkotlinx/serialization/internal/v0;

    invoke-direct {v6, v12, v12}, Lkotlinx/serialization/internal/v0;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V

    invoke-interface {v0, v1, v4, v6, v9}, Le00/c;->y(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v5}, Le00/c;->C(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v5

    const/16 v6, 0x1f

    move v11, v5

    goto/16 :goto_4

    :cond_0
    move v15, v7

    move v12, v8

    move v13, v12

    move-object v2, v9

    move-object v10, v2

    move-object v11, v10

    move-object v14, v11

    :goto_0
    if-eqz v15, :cond_7

    invoke-interface {v0, v1}, Le00/c;->o(Lkotlinx/serialization/descriptors/f;)I

    move-result v9

    const/4 v8, -0x1

    if-eq v9, v8, :cond_6

    if-eqz v9, :cond_5

    if-eq v9, v7, :cond_4

    if-eq v9, v6, :cond_3

    if-eq v9, v4, :cond_2

    if-ne v9, v5, :cond_1

    invoke-interface {v0, v1, v5}, Le00/c;->C(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v12

    or-int/lit8 v13, v13, 0x10

    :goto_1
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v9}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :cond_2
    new-instance v8, Lkotlinx/serialization/internal/v0;

    sget-object v9, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-direct {v8, v9, v9}, Lkotlinx/serialization/internal/v0;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V

    invoke-interface {v0, v1, v4, v8, v11}, Le00/c;->y(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit8 v13, v13, 0x8

    goto :goto_1

    :cond_3
    new-instance v8, Lkotlinx/serialization/ContextualSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v4, v6, [Lkotlinx/serialization/b;

    sget-object v17, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    const/16 v16, 0x0

    aput-object v17, v4, v16

    aput-object v17, v4, v7

    const/4 v7, 0x0

    invoke-direct {v8, v9, v7, v4}, Lkotlinx/serialization/ContextualSerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/b;[Lkotlinx/serialization/b;)V

    invoke-interface {v0, v1, v6, v8, v10}, Le00/c;->y(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    or-int/2addr v13, v5

    move-object v9, v7

    const/4 v4, 0x3

    const/4 v7, 0x1

    :goto_3
    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    sget-object v4, Lcom/vungle/ads/internal/model/ConfigPayload$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$a;

    const/4 v8, 0x1

    invoke-interface {v0, v1, v8, v4, v14}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/2addr v13, v6

    move-object v9, v7

    move v7, v8

    const/4 v4, 0x3

    goto :goto_3

    :cond_5
    move v8, v7

    const/4 v7, 0x0

    new-instance v4, Lkotlinx/serialization/internal/f;

    sget-object v9, Lcom/vungle/ads/internal/model/AdPayload$f$a;->INSTANCE:Lcom/vungle/ads/internal/model/AdPayload$f$a;

    invoke-direct {v4, v9}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    const/4 v9, 0x0

    invoke-interface {v0, v1, v9, v4, v2}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/2addr v13, v8

    const/4 v4, 0x3

    move/from16 v18, v9

    move-object v9, v7

    move v7, v8

    move/from16 v8, v18

    goto :goto_0

    :cond_6
    move v8, v7

    const/4 v9, 0x0

    move v8, v9

    move v15, v8

    goto :goto_2

    :cond_7
    move-object v3, v10

    move-object v4, v11

    move v11, v12

    move v6, v13

    move-object v10, v14

    :goto_4
    invoke-interface {v0, v1}, Le00/c;->c(Lkotlinx/serialization/descriptors/f;)V

    new-instance v0, Lcom/vungle/ads/internal/model/AdPayload;

    move-object v7, v2

    check-cast v7, Ljava/util/List;

    move-object v8, v10

    check-cast v8, Lcom/vungle/ads/internal/model/ConfigPayload;

    move-object v9, v3

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v10, v4

    check-cast v10, Ljava/util/Map;

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/vungle/ads/internal/model/AdPayload;-><init>(ILjava/util/List;Lcom/vungle/ads/internal/model/ConfigPayload;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Map;ZLkotlinx/serialization/internal/w1;)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Le00/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/AdPayload$a;->deserialize(Le00/e;)Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/model/AdPayload$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public serialize(Le00/f;Lcom/vungle/ads/internal/model/AdPayload;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/AdPayload$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p1, v0}, Le00/f;->b(Lkotlinx/serialization/descriptors/f;)Le00/d;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/AdPayload;->write$Self(Lcom/vungle/ads/internal/model/AdPayload;Le00/d;Lkotlinx/serialization/descriptors/f;)V

    invoke-interface {p1, v0}, Le00/d;->c(Lkotlinx/serialization/descriptors/f;)V

    return-void
.end method

.method public bridge synthetic serialize(Le00/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/vungle/ads/internal/model/AdPayload;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/AdPayload$a;->serialize(Le00/f;Lcom/vungle/ads/internal/model/AdPayload;)V

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
