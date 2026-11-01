.class public final Lcom/vungle/ads/internal/signals/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/internal/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/signals/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/signals/a$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vungle/ads/internal/signals/a$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/signals/a$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/signals/a$a;->INSTANCE:Lcom/vungle/ads/internal/signals/a$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.signals.SessionData"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/i0;I)V

    const-string v0, "103"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "101"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "100"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "106"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "102"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "104"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "105"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/signals/a$a;->descriptor:Lkotlinx/serialization/descriptors/f;

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

    new-instance v0, Lkotlinx/serialization/internal/f;

    sget-object v1, Lcom/vungle/ads/internal/signals/b$a;->INSTANCE:Lcom/vungle/ads/internal/signals/b$a;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    new-instance v1, Lkotlinx/serialization/internal/f;

    sget-object v2, Lcom/vungle/ads/internal/model/j$a;->INSTANCE:Lcom/vungle/ads/internal/model/j$a;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    const/4 v2, 0x7

    new-array v2, v2, [Lkotlinx/serialization/b;

    sget-object v3, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v4, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    sget-object v4, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const/4 v5, 0x3

    aput-object v0, v2, v5

    const/4 v0, 0x4

    aput-object v4, v2, v0

    const/4 v0, 0x5

    aput-object v3, v2, v0

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v2
.end method

.method public deserialize(Le00/e;)Lcom/vungle/ads/internal/signals/a;
    .locals 31

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/signals/a$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v1

    invoke-interface {v0, v1}, Le00/e;->b(Lkotlinx/serialization/descriptors/f;)Le00/c;

    move-result-object v0

    invoke-interface {v0}, Le00/c;->p()Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v9}, Le00/c;->i(Lkotlinx/serialization/descriptors/f;I)I

    move-result v2

    invoke-interface {v0, v1, v8}, Le00/c;->m(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7}, Le00/c;->f(Lkotlinx/serialization/descriptors/f;I)J

    move-result-wide v11

    new-instance v7, Lkotlinx/serialization/internal/f;

    sget-object v9, Lcom/vungle/ads/internal/signals/b$a;->INSTANCE:Lcom/vungle/ads/internal/signals/b$a;

    invoke-direct {v7, v9}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    invoke-interface {v0, v1, v5, v7, v10}, Le00/c;->y(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v1, v6}, Le00/c;->f(Lkotlinx/serialization/descriptors/f;I)J

    move-result-wide v6

    invoke-interface {v0, v1, v4}, Le00/c;->i(Lkotlinx/serialization/descriptors/f;I)I

    move-result v4

    new-instance v9, Lkotlinx/serialization/internal/f;

    sget-object v13, Lcom/vungle/ads/internal/model/j$a;->INSTANCE:Lcom/vungle/ads/internal/model/j$a;

    invoke-direct {v9, v13}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    invoke-interface {v0, v1, v3, v9, v10}, Le00/c;->y(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v9, 0x7f

    move/from16 v21, v2

    move/from16 v28, v4

    move-wide/from16 v26, v6

    move-object/from16 v22, v8

    move/from16 v20, v9

    move-wide/from16 v23, v11

    goto/16 :goto_3

    :cond_0
    const-wide/16 v11, 0x0

    move/from16 v18, v8

    move v2, v9

    move v13, v2

    move-object v14, v10

    move-object v15, v14

    move-wide/from16 v16, v11

    move-object v9, v15

    move v10, v13

    :goto_0
    if-eqz v18, :cond_1

    invoke-interface {v0, v1}, Le00/c;->o(Lkotlinx/serialization/descriptors/f;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v8}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    new-instance v8, Lkotlinx/serialization/internal/f;

    sget-object v7, Lcom/vungle/ads/internal/model/j$a;->INSTANCE:Lcom/vungle/ads/internal/model/j$a;

    invoke-direct {v8, v7}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    invoke-interface {v0, v1, v3, v8, v9}, Le00/c;->y(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    or-int/lit8 v13, v13, 0x40

    :goto_1
    const/4 v7, 0x2

    :goto_2
    const/4 v8, 0x1

    goto :goto_0

    :pswitch_1
    invoke-interface {v0, v1, v4}, Le00/c;->i(Lkotlinx/serialization/descriptors/f;I)I

    move-result v10

    or-int/lit8 v13, v13, 0x20

    goto :goto_1

    :pswitch_2
    invoke-interface {v0, v1, v6}, Le00/c;->f(Lkotlinx/serialization/descriptors/f;I)J

    move-result-wide v11

    or-int/lit8 v13, v13, 0x10

    goto :goto_1

    :pswitch_3
    new-instance v7, Lkotlinx/serialization/internal/f;

    sget-object v8, Lcom/vungle/ads/internal/signals/b$a;->INSTANCE:Lcom/vungle/ads/internal/signals/b$a;

    invoke-direct {v7, v8}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    invoke-interface {v0, v1, v5, v7, v15}, Le00/c;->y(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    or-int/lit8 v13, v13, 0x8

    goto :goto_1

    :pswitch_4
    invoke-interface {v0, v1, v7}, Le00/c;->f(Lkotlinx/serialization/descriptors/f;I)J

    move-result-wide v16

    or-int/lit8 v13, v13, 0x4

    goto :goto_2

    :pswitch_5
    const/4 v8, 0x1

    invoke-interface {v0, v1, v8}, Le00/c;->m(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;

    move-result-object v14

    or-int/lit8 v13, v13, 0x2

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-interface {v0, v1, v2}, Le00/c;->i(Lkotlinx/serialization/descriptors/f;I)I

    move-result v19

    or-int/lit8 v13, v13, 0x1

    move/from16 v2, v19

    goto :goto_0

    :pswitch_7
    const/16 v18, 0x0

    goto :goto_2

    :cond_1
    move/from16 v21, v2

    move-object v3, v9

    move/from16 v28, v10

    move-wide/from16 v26, v11

    move/from16 v20, v13

    move-object/from16 v22, v14

    move-object v5, v15

    move-wide/from16 v23, v16

    :goto_3
    invoke-interface {v0, v1}, Le00/c;->c(Lkotlinx/serialization/descriptors/f;)V

    new-instance v0, Lcom/vungle/ads/internal/signals/a;

    move-object/from16 v25, v5

    check-cast v25, Ljava/util/List;

    move-object/from16 v29, v3

    check-cast v29, Ljava/util/List;

    const/16 v30, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v30}, Lcom/vungle/ads/internal/signals/a;-><init>(IILjava/lang/String;JLjava/util/List;JILjava/util/List;Lkotlinx/serialization/internal/w1;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Le00/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/signals/a$a;->deserialize(Le00/e;)Lcom/vungle/ads/internal/signals/a;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/signals/a$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public serialize(Le00/f;Lcom/vungle/ads/internal/signals/a;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/a$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p1, v0}, Le00/f;->b(Lkotlinx/serialization/descriptors/f;)Le00/d;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/signals/a;->write$Self(Lcom/vungle/ads/internal/signals/a;Le00/d;Lkotlinx/serialization/descriptors/f;)V

    invoke-interface {p1, v0}, Le00/d;->c(Lkotlinx/serialization/descriptors/f;)V

    return-void
.end method

.method public bridge synthetic serialize(Le00/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/vungle/ads/internal/signals/a;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/signals/a$a;->serialize(Le00/f;Lcom/vungle/ads/internal/signals/a;)V

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
