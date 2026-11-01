.class public final Lez/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/internal/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final INSTANCE:Lez/e$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lez/e$a;

    invoke-direct {v0}, Lez/e$a;-><init>()V

    sput-object v0, Lez/e$a;->INSTANCE:Lez/e$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vungle.ads.fpd.SessionContext"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/i0;I)V

    const-string v0, "level_percentile"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "page"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "time_spent"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "signup_date"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "user_score_percentile"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "user_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "friends"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "user_level_percentile"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "health_percentile"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "session_start_time"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "session_duration"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    const-string v0, "in_game_purchases_usd"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    sput-object v1, Lez/e$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/b;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/b;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    invoke-static {v0}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-static {v2}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v3

    sget-object v4, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    invoke-static {v4}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v5

    invoke-static {v4}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v6

    invoke-static {v0}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v7

    invoke-static {v2}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v8

    new-instance v9, Lkotlinx/serialization/internal/f;

    invoke-direct {v9, v2}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    invoke-static {v9}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v2

    invoke-static {v0}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v9

    invoke-static {v0}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v10

    invoke-static {v4}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v11

    invoke-static {v4}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v4

    invoke-static {v0}, Ld00/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    move-result-object v0

    const/16 v12, 0xc

    new-array v12, v12, [Lkotlinx/serialization/b;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v1, 0x1

    aput-object v3, v12, v1

    const/4 v1, 0x2

    aput-object v5, v12, v1

    const/4 v1, 0x3

    aput-object v6, v12, v1

    const/4 v1, 0x4

    aput-object v7, v12, v1

    const/4 v1, 0x5

    aput-object v8, v12, v1

    const/4 v1, 0x6

    aput-object v2, v12, v1

    const/4 v1, 0x7

    aput-object v9, v12, v1

    const/16 v1, 0x8

    aput-object v10, v12, v1

    const/16 v1, 0x9

    aput-object v11, v12, v1

    const/16 v1, 0xa

    aput-object v4, v12, v1

    const/16 v1, 0xb

    aput-object v0, v12, v1

    return-object v12
.end method

.method public deserialize(Le00/e;)Lez/e;
    .locals 28

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lez/e$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v1

    invoke-interface {v0, v1}, Le00/e;->b(Lkotlinx/serialization/descriptors/f;)Le00/c;

    move-result-object v0

    invoke-interface {v0}, Le00/c;->p()Z

    move-result v2

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/16 v10, 0x8

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    invoke-interface {v0, v1, v14, v2, v15}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    sget-object v3, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-interface {v0, v1, v13, v3, v15}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v4, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    invoke-interface {v0, v1, v12, v4, v15}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v1, v9, v4, v15}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v1, v11, v2, v15}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v1, v8, v3, v15}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    new-instance v5, Lkotlinx/serialization/internal/f;

    invoke-direct {v5, v3}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    invoke-interface {v0, v1, v7, v5, v15}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v6, v2, v15}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v1, v10, v2, v15}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x9

    invoke-interface {v0, v1, v7, v4, v15}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/16 v10, 0xa

    invoke-interface {v0, v1, v10, v4, v15}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v10, 0xb

    invoke-interface {v0, v1, v10, v2, v15}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v10, 0xfff

    move-object/from16 v26, v13

    move-object v13, v11

    move v11, v10

    goto/16 :goto_3

    :cond_0
    const/16 v2, 0xb

    move/from16 v25, v13

    move v3, v14

    move-object v4, v15

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    :goto_0
    if-eqz v25, :cond_1

    invoke-interface {v0, v1}, Le00/c;->o(Lkotlinx/serialization/descriptors/f;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v2}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v2, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    move-object/from16 v26, v15

    const/16 v15, 0xb

    invoke-interface {v0, v1, v15, v2, v10}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    or-int/lit16 v3, v3, 0x800

    move v2, v15

    move-object/from16 v15, v26

    goto :goto_0

    :pswitch_1
    move-object/from16 v26, v15

    const/16 v15, 0xb

    sget-object v2, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    const/16 v15, 0xa

    invoke-interface {v0, v1, v15, v2, v6}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    or-int/lit16 v3, v3, 0x400

    :goto_1
    move-object/from16 v15, v26

    :goto_2
    const/16 v2, 0xb

    goto :goto_0

    :pswitch_2
    move-object/from16 v26, v15

    const/16 v15, 0xa

    sget-object v2, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    const/16 v15, 0x9

    invoke-interface {v0, v1, v15, v2, v7}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    or-int/lit16 v3, v3, 0x200

    goto :goto_1

    :pswitch_3
    move-object/from16 v26, v15

    const/16 v15, 0x9

    sget-object v2, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    const/16 v15, 0x8

    invoke-interface {v0, v1, v15, v2, v8}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    or-int/lit16 v3, v3, 0x100

    goto :goto_1

    :pswitch_4
    move-object/from16 v26, v15

    const/16 v15, 0x8

    sget-object v2, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    const/4 v15, 0x7

    invoke-interface {v0, v1, v15, v2, v11}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit16 v3, v3, 0x80

    goto :goto_1

    :pswitch_5
    move-object/from16 v26, v15

    const/4 v15, 0x7

    new-instance v2, Lkotlinx/serialization/internal/f;

    sget-object v15, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-direct {v2, v15}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    const/4 v15, 0x6

    invoke-interface {v0, v1, v15, v2, v9}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    or-int/lit8 v3, v3, 0x40

    goto :goto_1

    :pswitch_6
    move-object/from16 v26, v15

    const/4 v15, 0x6

    sget-object v2, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    const/4 v15, 0x5

    invoke-interface {v0, v1, v15, v2, v12}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    or-int/lit8 v3, v3, 0x20

    goto :goto_1

    :pswitch_7
    move-object/from16 v26, v15

    const/4 v15, 0x5

    sget-object v2, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    const/4 v15, 0x4

    invoke-interface {v0, v1, v15, v2, v13}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    or-int/lit8 v3, v3, 0x10

    goto :goto_1

    :pswitch_8
    move-object/from16 v26, v15

    const/4 v15, 0x4

    sget-object v2, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    const/4 v15, 0x3

    invoke-interface {v0, v1, v15, v2, v14}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/lit8 v3, v3, 0x8

    goto :goto_1

    :pswitch_9
    move-object/from16 v26, v15

    const/4 v15, 0x3

    sget-object v2, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    const/4 v15, 0x2

    invoke-interface {v0, v1, v15, v2, v5}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    or-int/lit8 v3, v3, 0x4

    goto :goto_1

    :pswitch_a
    move-object/from16 v26, v15

    const/4 v15, 0x2

    sget-object v2, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    const/4 v15, 0x1

    invoke-interface {v0, v1, v15, v2, v4}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    or-int/lit8 v3, v3, 0x2

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v26, v15

    const/4 v15, 0x1

    sget-object v2, Lkotlinx/serialization/internal/h0;->a:Lkotlinx/serialization/internal/h0;

    const/4 v15, 0x0

    move-object/from16 v27, v26

    move-object/from16 v26, v4

    move-object/from16 v4, v27

    invoke-interface {v0, v1, v15, v2, v4}, Le00/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit8 v3, v3, 0x1

    move-object v15, v2

    move-object/from16 v4, v26

    goto/16 :goto_2

    :pswitch_c
    move-object/from16 v26, v4

    move-object v4, v15

    const/4 v15, 0x0

    move/from16 v25, v15

    const/16 v2, 0xb

    move-object v15, v4

    move-object/from16 v4, v26

    goto/16 :goto_0

    :cond_1
    move-object/from16 v26, v4

    move-object v4, v15

    move-object v2, v10

    move-object/from16 v27, v11

    move v11, v3

    move-object v3, v9

    move-object v9, v14

    move-object v14, v4

    move-object v4, v6

    move-object v6, v8

    move-object v8, v12

    move-object v12, v5

    move-object/from16 v5, v27

    :goto_3
    invoke-interface {v0, v1}, Le00/c;->c(Lkotlinx/serialization/descriptors/f;)V

    new-instance v0, Lez/e;

    move-object v1, v14

    check-cast v1, Ljava/lang/Float;

    move-object/from16 v14, v26

    check-cast v14, Ljava/lang/String;

    move-object v15, v12

    check-cast v15, Ljava/lang/Integer;

    check-cast v9, Ljava/lang/Integer;

    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/Float;

    move-object/from16 v17, v8

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v3

    check-cast v18, Ljava/util/List;

    move-object/from16 v19, v5

    check-cast v19, Ljava/lang/Float;

    move-object/from16 v20, v6

    check-cast v20, Ljava/lang/Float;

    move-object/from16 v21, v7

    check-cast v21, Ljava/lang/Integer;

    move-object/from16 v22, v4

    check-cast v22, Ljava/lang/Integer;

    move-object/from16 v23, v2

    check-cast v23, Ljava/lang/Float;

    const/16 v24, 0x0

    move-object v10, v0

    move-object v12, v1

    move-object v13, v14

    move-object v14, v15

    move-object v15, v9

    invoke-direct/range {v10 .. v24}, Lez/e;-><init>(ILjava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/util/List;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Lkotlinx/serialization/internal/w1;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

    invoke-virtual {p0, p1}, Lez/e$a;->deserialize(Le00/e;)Lez/e;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    sget-object v0, Lez/e$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    return-object v0
.end method

.method public serialize(Le00/f;Lez/e;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lez/e$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p1, v0}, Le00/f;->b(Lkotlinx/serialization/descriptors/f;)Le00/d;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lez/e;->write$Self(Lez/e;Le00/d;Lkotlinx/serialization/descriptors/f;)V

    invoke-interface {p1, v0}, Le00/d;->c(Lkotlinx/serialization/descriptors/f;)V

    return-void
.end method

.method public bridge synthetic serialize(Le00/f;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lez/e;

    invoke-virtual {p0, p1, p2}, Lez/e$a;->serialize(Le00/f;Lez/e;)V

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
