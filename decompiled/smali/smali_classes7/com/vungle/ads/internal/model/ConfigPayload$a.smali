.class public final Lcom/vungle/ads/internal/model/ConfigPayload$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/internal/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/ConfigPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vungle/ads/internal/model/ConfigPayload$a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/model/ConfigPayload$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.internal.model.ConfigPayload"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/i0;I)V

    const-string v0, "reuse_assets"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "config"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "endpoints"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "log_metrics"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "placements"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "user"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "config_extension"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "disable_ad_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "ri_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "session_timeout"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "wait_for_connectivity_for_tpat"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "sdk_session_timeout"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "signals_disabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "fpd_enabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "rta_debugging"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "config_last_validated_ts"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "auto_redirect"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "retry_prioritized_tpat"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "enable_ot"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/b;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/b;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/model/ConfigPayload$c$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$c$a;

    invoke-static {v0}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v0

    sget-object v1, Lcom/vungle/ads/internal/model/ConfigPayload$e$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$e$a;

    invoke-static {v1}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v1

    sget-object v2, Lcom/vungle/ads/internal/model/ConfigPayload$f$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$f$a;

    invoke-static {v2}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v2

    sget-object v3, Lcom/vungle/ads/internal/model/ConfigPayload$h$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$h$a;

    invoke-static {v3}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v3

    new-instance v4, Lkotlinx/serialization/internal/f;

    sget-object v5, Lcom/vungle/ads/internal/model/g$a;->INSTANCE:Lcom/vungle/ads/internal/model/g$a;

    invoke-direct {v4, v5}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    invoke-static {v4}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v4

    sget-object v5, Lcom/vungle/ads/internal/model/ConfigPayload$i$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$i$a;

    invoke-static {v5}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v5

    sget-object v6, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-static {v6}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v6

    sget-object v7, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    invoke-static {v7}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v8

    invoke-static {v7}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v9

    sget-object v10, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    invoke-static {v10}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v11

    invoke-static {v7}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v12

    invoke-static {v10}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v10

    invoke-static {v7}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v13

    invoke-static {v7}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v14

    invoke-static {v7}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v15

    sget-object v16, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    invoke-static/range {v16 .. v16}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v16

    sget-object v17, Lcom/vungle/ads/internal/model/ConfigPayload$b$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$b$a;

    invoke-static/range {v17 .. v17}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v17

    invoke-static {v7}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v18

    invoke-static {v7}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v7

    move-object/from16 v19, v7

    const/16 v7, 0x13

    new-array v7, v7, [Lkotlinx/serialization/b;

    const/16 v20, 0x0

    aput-object v0, v7, v20

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    const/4 v0, 0x7

    aput-object v8, v7, v0

    const/16 v0, 0x8

    aput-object v9, v7, v0

    const/16 v0, 0x9

    aput-object v11, v7, v0

    const/16 v0, 0xa

    aput-object v12, v7, v0

    const/16 v0, 0xb

    aput-object v10, v7, v0

    const/16 v0, 0xc

    aput-object v13, v7, v0

    const/16 v0, 0xd

    aput-object v14, v7, v0

    const/16 v0, 0xe

    aput-object v15, v7, v0

    const/16 v0, 0xf

    aput-object v16, v7, v0

    const/16 v0, 0x10

    aput-object v17, v7, v0

    const/16 v0, 0x11

    aput-object v18, v7, v0

    const/16 v0, 0x12

    aput-object v19, v7, v0

    return-object v7
.end method

.method public deserialize(Le00/e;)Lcom/vungle/ads/internal/model/ConfigPayload;
    .locals 45

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/model/ConfigPayload$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v1

    invoke-interface {v0, v1}, Le00/e;->b(Lkotlinx/serialization/descriptors/f;)Le00/c;

    move-result-object v0

    invoke-interface {v0}, Le00/c;->p()Z

    move-result v2

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x3

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vungle/ads/internal/model/ConfigPayload$c$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$c$a;

    invoke-interface {v0, v1, v7, v2, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v7, Lcom/vungle/ads/internal/model/ConfigPayload$e$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$e$a;

    invoke-interface {v0, v1, v6, v7, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/vungle/ads/internal/model/ConfigPayload$f$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$f$a;

    invoke-interface {v0, v1, v5, v7, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lcom/vungle/ads/internal/model/ConfigPayload$h$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$h$a;

    invoke-interface {v0, v1, v15, v7, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    new-instance v15, Lkotlinx/serialization/internal/f;

    sget-object v9, Lcom/vungle/ads/internal/model/g$a;->INSTANCE:Lcom/vungle/ads/internal/model/g$a;

    invoke-direct {v15, v9}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    invoke-interface {v0, v1, v3, v15, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v9, Lcom/vungle/ads/internal/model/ConfigPayload$i$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$i$a;

    invoke-interface {v0, v1, v14, v9, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v14, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-interface {v0, v1, v13, v14, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    invoke-interface {v0, v1, v12, v14, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v1, v4, v14, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v15, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    invoke-interface {v0, v1, v11, v15, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v1, v10, v14, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v23, v2

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v15, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v15, 0xc

    invoke-interface {v0, v1, v15, v14, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v21, v2

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2, v14, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v14, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    sget-object v2, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    move-object/from16 v22, v3

    const/16 v3, 0xf

    invoke-interface {v0, v1, v3, v2, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/vungle/ads/internal/model/ConfigPayload$b$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$b$a;

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2, v3, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x11

    invoke-interface {v0, v1, v3, v14, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v7

    const/16 v7, 0x12

    invoke-interface {v0, v1, v7, v14, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const v8, 0x7ffff

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v23

    move/from16 v23, v8

    move-object v8, v15

    move-object/from16 v15, v22

    move-object/from16 v44, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v44

    goto/16 :goto_6

    :cond_0
    move v2, v7

    const/16 v7, 0x12

    move/from16 v40, v6

    move-object v3, v8

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v33, v15

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    move v8, v2

    move-object/from16 v2, v39

    :goto_0
    if-eqz v40, :cond_1

    invoke-interface {v0, v1}, Le00/c;->o(Lkotlinx/serialization/descriptors/f;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v7}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v7, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    move-object/from16 v42, v2

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2, v7, v9}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/high16 v7, 0x40000

    or-int/2addr v8, v7

    move v7, v2

    move-object/from16 v2, v42

    goto :goto_0

    :pswitch_1
    move-object/from16 v42, v2

    const/16 v2, 0x12

    sget-object v7, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    move-object/from16 v16, v9

    move-object/from16 v2, v38

    const/16 v9, 0x11

    invoke-interface {v0, v1, v9, v7, v2}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    const/high16 v2, 0x20000

    or-int/2addr v8, v2

    :goto_1
    move-object/from16 v9, v16

    :goto_2
    move-object/from16 v2, v42

    :goto_3
    const/16 v7, 0x12

    goto :goto_0

    :pswitch_2
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v2, v38

    const/16 v9, 0x11

    sget-object v7, Lcom/vungle/ads/internal/model/ConfigPayload$b$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$b$a;

    move-object/from16 v17, v2

    move-object/from16 v9, v37

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2, v7, v9}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    const/high16 v7, 0x10000

    or-int/2addr v8, v7

    move-object/from16 v9, v16

    move-object/from16 v38, v17

    goto :goto_2

    :pswitch_3
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v9, v37

    move-object/from16 v17, v38

    const/16 v2, 0x10

    sget-object v7, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    move-object/from16 v18, v9

    move-object/from16 v2, v36

    const/16 v9, 0xf

    invoke-interface {v0, v1, v9, v7, v2}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    const v2, 0x8000

    or-int/2addr v8, v2

    move-object/from16 v9, v16

    move-object/from16 v37, v18

    goto :goto_2

    :pswitch_4
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v2, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    const/16 v9, 0xf

    sget-object v7, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    move-object/from16 v19, v2

    move-object/from16 v9, v35

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v7, v9}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    or-int/lit16 v8, v8, 0x4000

    move-object/from16 v9, v16

    move-object/from16 v36, v19

    goto :goto_2

    :pswitch_5
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v9, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    const/16 v2, 0xe

    sget-object v7, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    move-object/from16 v20, v9

    move-object/from16 v2, v34

    const/16 v9, 0xd

    invoke-interface {v0, v1, v9, v7, v2}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    or-int/lit16 v8, v8, 0x2000

    move-object/from16 v9, v16

    move-object/from16 v35, v20

    goto :goto_2

    :pswitch_6
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v2, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    const/16 v9, 0xd

    sget-object v7, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    move-object/from16 v21, v2

    move-object/from16 v9, v33

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v7, v9}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    or-int/lit16 v8, v8, 0x1000

    move-object/from16 v9, v16

    move-object/from16 v34, v21

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v9, v33

    move-object/from16 v21, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    const/16 v2, 0xc

    sget-object v7, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v7, v10}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    or-int/lit16 v8, v8, 0x800

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v9, v33

    move-object/from16 v21, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    const/16 v2, 0xb

    sget-object v7, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2, v7, v11}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit16 v8, v8, 0x400

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v9, v33

    move-object/from16 v21, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    const/16 v2, 0xa

    sget-object v7, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, v7, v4}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    or-int/lit16 v8, v8, 0x200

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v9, v33

    move-object/from16 v21, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    const/16 v2, 0x9

    sget-object v7, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v7, v12}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    or-int/lit16 v8, v8, 0x100

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v9, v33

    move-object/from16 v21, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    const/16 v2, 0x8

    sget-object v7, Lkotlinx/serialization/internal/i;->a:Lkotlinx/serialization/internal/i;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v7, v13}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    or-int/lit16 v8, v8, 0x80

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v9, v33

    move-object/from16 v21, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    const/4 v2, 0x7

    sget-object v7, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2, v7, v14}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/lit8 v8, v8, 0x40

    goto/16 :goto_1

    :pswitch_d
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v9, v33

    move-object/from16 v21, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    const/4 v2, 0x6

    sget-object v7, Lcom/vungle/ads/internal/model/ConfigPayload$i$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$i$a;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, v7, v3}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    or-int/lit8 v8, v8, 0x20

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v9, v33

    move-object/from16 v21, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    const/4 v2, 0x5

    new-instance v7, Lkotlinx/serialization/internal/f;

    sget-object v2, Lcom/vungle/ads/internal/model/g$a;->INSTANCE:Lcom/vungle/ads/internal/model/g$a;

    invoke-direct {v7, v2}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2, v7, v15}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    or-int/lit8 v8, v8, 0x10

    goto/16 :goto_1

    :pswitch_f
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v9, v33

    move-object/from16 v21, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    const/4 v2, 0x4

    sget-object v7, Lcom/vungle/ads/internal/model/ConfigPayload$h$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$h$a;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v7, v5}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    or-int/lit8 v8, v8, 0x8

    goto/16 :goto_1

    :pswitch_10
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v9, v33

    move-object/from16 v21, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    const/4 v2, 0x3

    sget-object v7, Lcom/vungle/ads/internal/model/ConfigPayload$f$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$f$a;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v7, v6}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    or-int/lit8 v8, v8, 0x4

    goto/16 :goto_1

    :pswitch_11
    move-object/from16 v42, v2

    move-object/from16 v16, v9

    move-object/from16 v9, v33

    move-object/from16 v21, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    const/4 v2, 0x2

    sget-object v7, Lcom/vungle/ads/internal/model/ConfigPayload$e$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$e$a;

    const/4 v2, 0x1

    move-object/from16 v44, v42

    move-object/from16 v42, v3

    move-object/from16 v3, v44

    invoke-interface {v0, v1, v2, v7, v3}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    or-int/lit8 v8, v8, 0x2

    move-object v2, v3

    move-object/from16 v9, v16

    :goto_4
    move-object/from16 v3, v42

    goto/16 :goto_3

    :pswitch_12
    move-object/from16 v42, v3

    move-object/from16 v16, v9

    move-object/from16 v9, v33

    move-object/from16 v21, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    move-object v3, v2

    const/4 v2, 0x1

    sget-object v7, Lcom/vungle/ads/internal/model/ConfigPayload$c$a;->INSTANCE:Lcom/vungle/ads/internal/model/ConfigPayload$c$a;

    move-object/from16 v23, v3

    move-object/from16 v3, v39

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v7, v3}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    or-int/lit8 v8, v8, 0x1

    :goto_5
    move-object/from16 v9, v16

    move-object/from16 v2, v23

    goto :goto_4

    :pswitch_13
    move-object/from16 v23, v2

    move-object/from16 v42, v3

    move-object/from16 v16, v9

    move-object/from16 v9, v33

    move-object/from16 v21, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    move-object/from16 v3, v39

    const/4 v2, 0x0

    move/from16 v40, v2

    goto :goto_5

    :cond_1
    move-object/from16 v23, v2

    move-object/from16 v42, v3

    move-object/from16 v16, v9

    move-object/from16 v9, v33

    move-object/from16 v21, v34

    move-object/from16 v20, v35

    move-object/from16 v19, v36

    move-object/from16 v18, v37

    move-object/from16 v17, v38

    move-object/from16 v3, v39

    move-object v2, v3

    move-object v7, v5

    move-object v5, v6

    move-object/from16 v3, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v6, v23

    move/from16 v23, v8

    move-object v8, v9

    move-object/from16 v21, v10

    move-object v10, v11

    move-object/from16 v9, v42

    move-object v11, v4

    move-object v4, v12

    move-object v12, v13

    move-object v13, v14

    :goto_6
    invoke-interface {v0, v1}, Le00/c;->c(Lkotlinx/serialization/descriptors/f;)V

    new-instance v0, Lcom/vungle/ads/internal/model/ConfigPayload;

    move-object/from16 v22, v0

    move-object/from16 v24, v2

    check-cast v24, Lcom/vungle/ads/internal/model/ConfigPayload$c;

    move-object/from16 v25, v6

    check-cast v25, Lcom/vungle/ads/internal/model/ConfigPayload$e;

    move-object/from16 v26, v5

    check-cast v26, Lcom/vungle/ads/internal/model/ConfigPayload$f;

    move-object/from16 v27, v7

    check-cast v27, Lcom/vungle/ads/internal/model/ConfigPayload$h;

    move-object/from16 v28, v15

    check-cast v28, Ljava/util/List;

    move-object/from16 v29, v9

    check-cast v29, Lcom/vungle/ads/internal/model/ConfigPayload$i;

    move-object/from16 v30, v13

    check-cast v30, Ljava/lang/String;

    move-object/from16 v31, v12

    check-cast v31, Ljava/lang/Boolean;

    move-object/from16 v32, v4

    check-cast v32, Ljava/lang/Boolean;

    move-object/from16 v33, v11

    check-cast v33, Ljava/lang/Integer;

    move-object/from16 v34, v10

    check-cast v34, Ljava/lang/Boolean;

    move-object/from16 v35, v21

    check-cast v35, Ljava/lang/Integer;

    move-object/from16 v36, v8

    check-cast v36, Ljava/lang/Boolean;

    move-object/from16 v37, v20

    check-cast v37, Ljava/lang/Boolean;

    move-object/from16 v38, v19

    check-cast v38, Ljava/lang/Boolean;

    move-object/from16 v39, v18

    check-cast v39, Ljava/lang/Long;

    move-object/from16 v40, v3

    check-cast v40, Lcom/vungle/ads/internal/model/ConfigPayload$b;

    move-object/from16 v41, v17

    check-cast v41, Ljava/lang/Boolean;

    move-object/from16 v42, v16

    check-cast v42, Ljava/lang/Boolean;

    const/16 v43, 0x0

    invoke-direct/range {v22 .. v43}, Lcom/vungle/ads/internal/model/ConfigPayload;-><init>(ILcom/vungle/ads/internal/model/ConfigPayload$c;Lcom/vungle/ads/internal/model/ConfigPayload$e;Lcom/vungle/ads/internal/model/ConfigPayload$f;Lcom/vungle/ads/internal/model/ConfigPayload$h;Ljava/util/List;Lcom/vungle/ads/internal/model/ConfigPayload$i;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/vungle/ads/internal/model/ConfigPayload$b;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/w1;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/ConfigPayload$a;->deserialize(Le00/e;)Lcom/vungle/ads/internal/model/ConfigPayload;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/model/ConfigPayload$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public serialize(Le00/f;Lcom/vungle/ads/internal/model/ConfigPayload;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/ConfigPayload$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p1, v0}, Le00/f;->b(Lkotlinx/serialization/descriptors/f;)Le00/d;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->write$Self(Lcom/vungle/ads/internal/model/ConfigPayload;Le00/d;Lkotlinx/serialization/descriptors/f;)V

    invoke-interface {p1, v0}, Le00/d;->c(Lkotlinx/serialization/descriptors/f;)V

    return-void
.end method

.method public bridge synthetic serialize(Le00/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/vungle/ads/internal/model/ConfigPayload;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/ConfigPayload$a;->serialize(Le00/f;Lcom/vungle/ads/internal/model/ConfigPayload;)V

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
