.class public final enum Lcom/bytedance/adsdk/ugeno/Sj/EjP;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/Sj/EjP;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Dq:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field public static final enum EjP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field public static final enum Fmk:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field public static final enum HiB:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field public static final enum Jcg:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field public static final enum Sj:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field public static final enum TEQ:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field public static final enum TKC:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field private static final synthetic TzV:[Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field public static final enum Ym:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field public static final enum aa:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field public static final enum sP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field public static final enum sef:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field public static final enum uA:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field public static final enum vS:Lcom/bytedance/adsdk/ugeno/Sj/EjP;


# instance fields
.field private final Zq:Ljava/lang/String;

.field private final dNu:Ljava/lang/String;

.field private final uvD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v6, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const-string v4, "translation"

    const-string v5, "point"

    const-string v1, "TRANSLATE"

    const/4 v2, 0x0

    const-string v3, "translate"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Sj:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    new-instance v0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const-string v11, "translationX"

    const-string v12, "float"

    const-string v8, "TRANSLATE_X"

    const/4 v9, 0x1

    const-string v10, "translateX"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->sP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    new-instance v1, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const-string v17, "translationY"

    const-string v18, "float"

    const-string v14, "TRANSLATE_Y"

    const/4 v15, 0x2

    const-string v16, "translateY"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->TKC:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    new-instance v2, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const-string v11, "rotationX"

    const-string v12, "float"

    const-string v8, "ROTATE_X"

    const/4 v9, 0x3

    const-string v10, "rotateX"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    new-instance v3, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const-string v17, "rotationY"

    const-string v18, "float"

    const-string v14, "ROTATE_Y"

    const/4 v15, 0x4

    const-string v16, "rotateY"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->HiB:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    new-instance v4, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const-string v11, "rotation"

    const-string v12, "float"

    const-string v8, "ROTATE_Z"

    const/4 v9, 0x5

    const-string v10, "rotateZ"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->vS:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    new-instance v5, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const-string v17, "scale"

    const-string v18, "point"

    const-string v14, "SCALE"

    const/4 v15, 0x6

    const-string v16, "scale"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Jcg:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    new-instance v13, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const-string v11, "scaleX"

    const-string v12, "float"

    const-string v8, "SCALE_X"

    const/4 v9, 0x7

    const-string v10, "scaleX"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Dq:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    new-instance v7, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const-string v18, "scaleY"

    const-string v19, "float"

    const-string v15, "SCALE_Y"

    const/16 v16, 0x8

    const-string v17, "scaleY"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->uA:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    new-instance v8, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const-string v24, "alpha"

    const-string v25, "float"

    const-string v21, "ALPHA"

    const/16 v22, 0x9

    const-string v23, "opacity"

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->TEQ:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    new-instance v9, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const-string v18, "backgroundColor"

    const-string v19, "int"

    const-string v15, "BACKGROUND_COLOR"

    const/16 v16, 0xa

    const-string v17, "backgroundColor"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Ym:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    new-instance v10, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const-string v24, "borderRadius"

    const-string v25, "float"

    const-string v21, "BORDER_RADIUS"

    const/16 v22, 0xb

    const-string v23, "borderRadius"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->aa:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    new-instance v11, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const-string v18, "ripple"

    const-string v19, "float"

    const-string v15, "RIPPLE"

    const/16 v16, 0xc

    const-string v17, "ripple"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Fmk:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    new-instance v12, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const-string v24, "shine"

    const-string v25, "float"

    const-string v21, "SHINE"

    const/16 v22, 0xd

    const-string v23, "shine"

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->sef:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const/16 v14, 0xe

    new-array v14, v14, [Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v6, 0x1

    aput-object v0, v14, v6

    const/4 v0, 0x2

    aput-object v1, v14, v0

    const/4 v0, 0x3

    aput-object v2, v14, v0

    const/4 v0, 0x4

    aput-object v3, v14, v0

    const/4 v0, 0x5

    aput-object v4, v14, v0

    const/4 v0, 0x6

    aput-object v5, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    const/16 v0, 0x8

    aput-object v7, v14, v0

    const/16 v0, 0x9

    aput-object v8, v14, v0

    const/16 v0, 0xa

    aput-object v9, v14, v0

    const/16 v0, 0xb

    aput-object v10, v14, v0

    const/16 v0, 0xc

    aput-object v11, v14, v0

    const/16 v0, 0xd

    aput-object v12, v14, v0

    sput-object v14, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->TzV:[Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Zq:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->uvD:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->dNu:Ljava/lang/String;

    return-void
.end method

.method public static Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/Sj/EjP;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "rotateZ"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "rotateY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "rotateX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "borderRadius"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "backgroundColor"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "translate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_6
    const-string v1, "scale"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "scaleY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_8
    const-string v1, "scaleX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_9
    const-string v1, "ripple"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_a
    const-string v1, "opacity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_b
    const-string v1, "translateY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_c
    const-string v1, "translateX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->sP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->vS:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->HiB:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->aa:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Ym:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Sj:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Jcg:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->uA:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Dq:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Fmk:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->TEQ:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->TKC:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->sP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66a2c736 -> :sswitch_c
        -0x66a2c735 -> :sswitch_b
        -0x4b8807f5 -> :sswitch_a
        -0x377b49d0 -> :sswitch_9
        -0x3621dfb2 -> :sswitch_8
        -0x3621dfb1 -> :sswitch_7
        0x683094a -> :sswitch_6
        0x3ec0f14e -> :sswitch_5
        0x4cb7f6d5 -> :sswitch_4
        0x506afbde -> :sswitch_3
        0x5280ce5d -> :sswitch_2
        0x5280ce5e -> :sswitch_1
        0x5280ce5f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/Sj/EjP;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/Sj/EjP;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->TzV:[Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/Sj/EjP;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    return-object v0
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Zq:Ljava/lang/String;

    return-object v0
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->dNu:Ljava/lang/String;

    return-object v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->uvD:Ljava/lang/String;

    return-object v0
.end method
