.class public final Lcom/transsion/subtitle/helper/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle/helper/f$a;,
        Lcom/transsion/subtitle/helper/f$b;
    }
.end annotation


# static fields
.field public static final n:Lcom/transsion/subtitle/helper/f$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/subtitle/helper/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/subtitle/helper/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/subtitle/helper/f;->n:Lcom/transsion/subtitle/helper/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subtitle/helper/f;->a:Landroid/content/Context;

    const/high16 v0, 0x42840000    # 66.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/subtitle/helper/f;->f:I

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, p0, Lcom/transsion/subtitle/helper/f;->g:I

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/subtitle/helper/f;->h:I

    const/high16 v0, 0x42880000    # 68.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/subtitle/helper/f;->i:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v0

    iput v0, p0, Lcom/transsion/subtitle/helper/f;->j:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v0

    iput v0, p0, Lcom/transsion/subtitle/helper/f;->k:I

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result v1

    iput v1, p0, Lcom/transsion/subtitle/helper/f;->l:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/subtitle/helper/f;->m:I

    sget v0, Lcom/tn/lib/widget/R$color;->black:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/subtitle/helper/f;->b:I

    sget v0, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/subtitle/helper/f;->c:I

    sget v0, Lcom/transsion/subtitle/R$color;->subtitle_color_yellow:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/subtitle/helper/f;->d:I

    sget v0, Lcom/transsion/subtitle/R$color;->subtitle_color_green:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/subtitle/helper/f;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/transsion/subtitle/R$id;->rb_background_black:I

    const-string v1, "color_black"

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/subtitle/R$id;->rb_background_white:I

    if-ne p1, v0, :cond_1

    const-string v1, "color_white"

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/subtitle/R$id;->rb_background_yellor:I

    if-ne p1, v0, :cond_2

    const-string v1, "color_yellow"

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/subtitle/R$id;->rb_background_green:I

    if-ne p1, v0, :cond_3

    const-string v1, "color_green"

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final b(Ljava/lang/String;)I
    .locals 1

    const-string v0, "bgColorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "color_white"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/subtitle/R$id;->rb_background_white:I

    goto :goto_1

    :sswitch_1
    const-string v0, "color_green"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/subtitle/R$id;->rb_background_green:I

    goto :goto_1

    :sswitch_2
    const-string v0, "color_black"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget p1, Lcom/transsion/subtitle/R$id;->rb_background_black:I

    goto :goto_1

    :sswitch_3
    const-string v0, "color_yellow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    sget p1, Lcom/transsion/subtitle/R$id;->rb_background_white:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/transsion/subtitle/R$id;->rb_background_yellor:I

    :goto_1
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66895330 -> :sswitch_3
        0x4e04cc23 -> :sswitch_2
        0x4e4e0b27 -> :sswitch_1
        0x4f2b084d -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(I)F
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    const/high16 v1, 0x3f400000    # 0.75f

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_3
    const v1, 0x3dcccccd    # 0.1f

    :cond_4
    :goto_0
    return v1
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1

    const-string v0, "colorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "color_white"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/subtitle/helper/f;->c:I

    goto :goto_1

    :sswitch_1
    const-string v0, "color_green"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/transsion/subtitle/helper/f;->e:I

    goto :goto_1

    :sswitch_2
    const-string v0, "color_black"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/transsion/subtitle/helper/f;->b:I

    goto :goto_1

    :sswitch_3
    const-string v0, "color_yellow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    iget p1, p0, Lcom/transsion/subtitle/helper/f;->c:I

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/transsion/subtitle/helper/f;->d:I

    :goto_1
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66895330 -> :sswitch_3
        0x4e04cc23 -> :sswitch_2
        0x4e4e0b27 -> :sswitch_1
        0x4f2b084d -> :sswitch_0
    .end sparse-switch
.end method

.method public final e(I)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/transsion/subtitle/R$id;->rb_font_color_black:I

    if-ne p1, v0, :cond_0

    const-string p1, "color_black"

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/subtitle/R$id;->rb_font_color_white:I

    const-string v1, "color_white"

    if-ne p1, v0, :cond_2

    :cond_1
    move-object p1, v1

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/subtitle/R$id;->rb_font_color_yellor:I

    if-ne p1, v0, :cond_3

    const-string p1, "color_yellow"

    goto :goto_0

    :cond_3
    sget v0, Lcom/transsion/subtitle/R$id;->rb_font_color_green:I

    if-ne p1, v0, :cond_1

    const-string p1, "color_green"

    :goto_0
    return-object p1
.end method

.method public final f(Ljava/lang/String;)I
    .locals 1

    const-string v0, "fontColorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "color_white"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/subtitle/R$id;->rb_font_color_white:I

    goto :goto_1

    :sswitch_1
    const-string v0, "color_green"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsion/subtitle/R$id;->rb_font_color_green:I

    goto :goto_1

    :sswitch_2
    const-string v0, "color_black"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget p1, Lcom/transsion/subtitle/R$id;->rb_font_color_black:I

    goto :goto_1

    :sswitch_3
    const-string v0, "color_yellow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    sget p1, Lcom/transsion/subtitle/R$id;->rb_font_color_white:I

    goto :goto_1

    :cond_3
    sget p1, Lcom/transsion/subtitle/R$id;->rb_font_color_yellor:I

    :goto_1
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66895330 -> :sswitch_3
        0x4e04cc23 -> :sswitch_2
        0x4e4e0b27 -> :sswitch_1
        0x4f2b084d -> :sswitch_0
    .end sparse-switch
.end method

.method public final g(I)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_0

    :pswitch_5
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    :pswitch_6
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lcom/transsion/subtitle/helper/LocalVideoUiType;)I
    .locals 1

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    sget-object v0, Lcom/transsion/subtitle/helper/f$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/transsion/subtitle/helper/f;->k:I

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    iget p1, p0, Lcom/transsion/subtitle/helper/f;->j:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/transsion/subtitle/helper/f;->j:I

    mul-int/lit8 p1, p1, 0x9

    div-int/lit8 p1, p1, 0x10

    :goto_0
    return p1
.end method

.method public final i(Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/avery/subtitle/widget/SimpleSubtitleView;Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/view/ViewGroup;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "uiType"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v5

    const-string v6, "subtitle_options_font_color"

    const-string v7, "color_white"

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v5

    :goto_0
    invoke-virtual {v0, v7}, Lcom/transsion/subtitle/helper/f;->d(Ljava/lang/String;)I

    move-result v5

    if-eqz v1, :cond_1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v5

    const-string v6, "subtitle_options_font_size_progress"

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v8}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/transsion/subtitle/helper/f;->g(I)F

    move-result v5

    iget-object v6, v0, Lcom/transsion/subtitle/helper/f;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/transsion/baseui/util/b;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    if-ne v3, v6, :cond_3

    const/16 v6, 0x12

    goto :goto_1

    :cond_3
    const/16 v6, 0x1e

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/transsion/subtitle/helper/LocalVideoUiType;->MIDDLE:Lcom/transsion/subtitle/helper/LocalVideoUiType;

    if-ne v3, v6, :cond_5

    const/16 v6, 0xc

    goto :goto_1

    :cond_5
    const/16 v6, 0x14

    :goto_1
    if-eqz v1, :cond_6

    int-to-float v8, v6

    mul-float/2addr v8, v5

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_6
    if-eqz v2, :cond_7

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_7
    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v6

    const-string v8, "subtitle_options_position"

    const/16 v9, 0xa

    invoke-virtual {v6, v8, v9}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v8, p4

    invoke-virtual {v0, v3, v8, v6}, Lcom/transsion/subtitle/helper/f;->j(Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/view/ViewGroup;I)V

    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    const-string v8, "subtitle_options_shadow_enabled"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_9

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/tn/lib/widget/R$color;->black_90:I

    invoke-static {v12, v13}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v1, v11, v10, v9, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_8
    if-eqz v2, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/tn/lib/widget/R$color;->black_90:I

    invoke-static {v12, v13}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v2, v11, v10, v9, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    if-eqz v1, :cond_a

    invoke-virtual {v1, v9, v9, v9, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2, v9, v9, v9, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_b
    :goto_2
    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v9

    const-string v10, "subtitle_options_bg_enabled"

    invoke-virtual {v9, v10, v8}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v9

    const-string v10, "subtitle_options_bg_color"

    const-string v11, "color_black"

    invoke-virtual {v9, v10, v11}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_c

    goto :goto_3

    :cond_c
    move-object v11, v9

    :goto_3
    invoke-virtual {v4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    const-string v9, "subtitle_options_bg_opacity_progress"

    const/4 v10, 0x3

    invoke-virtual {v4, v9, v10}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v8, :cond_14

    if-eqz v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->openBg()V

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual/range {p2 .. p2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->openBg()V

    :cond_e
    const/high16 v9, 0x40800000    # 4.0f

    if-eqz v1, :cond_f

    invoke-static {v9}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgdRadius(I)V

    :cond_f
    if-eqz v2, :cond_10

    invoke-static {v9}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgdRadius(I)V

    :cond_10
    invoke-virtual {v0, v11}, Lcom/transsion/subtitle/helper/f;->d(Ljava/lang/String;)I

    move-result v9

    if-eqz v1, :cond_11

    invoke-virtual {v1, v9}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgColor(I)V

    :cond_11
    if-eqz v2, :cond_12

    invoke-virtual {v2, v9}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgColor(I)V

    :cond_12
    invoke-virtual {v0, v4}, Lcom/transsion/subtitle/helper/f;->c(I)F

    move-result v9

    const/16 v10, 0xff

    if-eqz v1, :cond_13

    int-to-float v12, v10

    mul-float/2addr v12, v9

    float-to-int v12, v12

    invoke-virtual {v1, v12}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgAlpha(I)V

    :cond_13
    if-eqz v2, :cond_16

    int-to-float v1, v10

    mul-float/2addr v1, v9

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->setBgAlpha(I)V

    goto :goto_4

    :cond_14
    if-eqz v1, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->closeBg()V

    :cond_15
    if-eqz v2, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->closeBg()V

    :cond_16
    :goto_4
    sget-object v12, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n            initSubtitleOptions, fontColorType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c fontSizePercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n                positionPercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", openShadow ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n                openBackground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bgColorType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", bgOpacityProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "SubtitleOptionsView"

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final j(Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/view/ViewGroup;I)V
    .locals 6

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/subtitle/helper/f;->h(Lcom/transsion/subtitle/helper/LocalVideoUiType;)I

    move-result p1

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    sub-int v2, p1, v1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_1

    move-object v3, v4

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_1
    mul-int/2addr p3, v2

    div-int/lit8 p3, p3, 0x64

    if-ltz p3, :cond_6

    sub-int v1, v2, v1

    if-le p3, v1, :cond_2

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    sub-int/2addr v2, p3

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    iput p3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_3
    :goto_1
    const/4 p3, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, p3

    :goto_2
    if-eqz v3, :cond_5

    iget p3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_5
    add-int/2addr p3, v0

    if-le p3, p1, :cond_6

    if-eqz v3, :cond_6

    sub-int/2addr p1, v0

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    :cond_7
    return-void
.end method
