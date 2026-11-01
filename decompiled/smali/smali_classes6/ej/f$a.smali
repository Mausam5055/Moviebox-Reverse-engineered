.class public final Lej/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lej/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lej/f$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/widget/ImageView;Lcom/bumptech/glide/RequestBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lej/f$a;->g(Landroid/widget/ImageView;Lcom/bumptech/glide/RequestBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lej/f$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZLcom/bumptech/glide/Priority;ILkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Lej/f$a;->h(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZLcom/bumptech/glide/Priority;ILkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static synthetic e(Lej/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lej/f$a;->d(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final f(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZLcom/bumptech/glide/Priority;ILkotlin/jvm/functions/Function3;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v11, p6

    move-object/from16 v12, p16

    instance-of v2, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lej/g;->a:Lej/g;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Lej/g;->c(Ljava/lang/String;)I

    move-result v15

    const/4 v4, 0x1

    if-gt v4, v15, :cond_1

    add-int/lit8 v4, v11, 0x1

    if-ge v15, v4, :cond_1

    const/16 v21, 0x78

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v14, p3

    move/from16 v16, p8

    invoke-static/range {v13 .. v22}, Lej/g;->b(Lej/g;Ljava/lang/String;IZZIZIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v13, v4

    goto :goto_1

    :cond_1
    invoke-interface/range {p9 .. p9}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x60

    if-le v11, v4, :cond_2

    if-gt v15, v11, :cond_2

    const/16 v21, 0x78

    const/16 v22, 0x0

    const/16 v15, 0x20

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v14, p3

    move/from16 v16, p8

    invoke-static/range {v13 .. v22}, Lej/g;->b(Lej/g;Ljava/lang/String;IZZIZIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object/from16 v13, p9

    :goto_1
    const/4 v9, 0x0

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p10

    move/from16 v7, p7

    move/from16 v8, p13

    move/from16 v10, p15

    invoke-virtual/range {v2 .. v10}, Lej/g;->d(Ljava/lang/String;IZZIZZI)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "http"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v13, v5, v6, v7, v8}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    const/4 v14, -0x1

    if-nez v5, :cond_9

    const-string v5, "data:image"

    invoke-static {v13, v5, v6, v7, v8}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const-string v5, "load(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lej/f;->a()Lcom/transsion/base/image/blurhash/BlurHash;

    move-result-object v9

    new-instance v10, Lej/e;

    invoke-direct {v10, v1}, Lej/e;-><init>(Landroid/widget/ImageView;)V

    const/16 v7, 0x14

    const/16 v8, 0x14

    move-object v5, v0

    move-object v6, v13

    invoke-static/range {v5 .. v10}, Lcom/transsion/base/image/blurhash/c;->b(Lcom/bumptech/glide/RequestBuilder;Ljava/lang/String;IILcom/transsion/base/image/blurhash/BlurHash;Lkotlin/jvm/functions/Function1;)V

    invoke-static {}, Lej/f;->d()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v5, Lej/f$a$b;

    invoke-direct {v5, v3, v4, v12}, Lej/f$a$b;-><init>(JLkotlin/jvm/functions/Function3;)V

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    if-eqz p12, :cond_4

    move/from16 v3, p7

    goto :goto_2

    :cond_4
    move v3, v14

    :goto_2
    if-eqz p12, :cond_5

    move v14, v11

    :cond_5
    const/4 v4, 0x0

    move-object/from16 p7, p0

    move/from16 p8, v4

    move/from16 p9, p5

    move/from16 p10, v3

    move/from16 p11, v14

    move-object/from16 p12, p14

    invoke-direct/range {p7 .. p12}, Lej/f$a;->k(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_7

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-static {}, Lej/f;->d()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v5, Lej/f$a$c;

    invoke-direct {v5, v3, v4, v12}, Lej/f$a$c;-><init>(JLkotlin/jvm/functions/Function3;)V

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    if-eqz p12, :cond_7

    move/from16 v3, p7

    goto :goto_3

    :cond_7
    move v3, v14

    :goto_3
    if-eqz p12, :cond_8

    move v14, v11

    :cond_8
    move-object/from16 p7, p0

    move/from16 p8, p4

    move/from16 p9, p5

    move/from16 p10, v3

    move/from16 p11, v14

    move-object/from16 p12, p14

    invoke-direct/range {p7 .. p12}, Lej/f$a;->k(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_7

    :cond_9
    :goto_4
    if-eqz p11, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/RequestBuilder;

    goto :goto_5

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    :goto_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v5, Lej/f$a$a;

    invoke-direct {v5, v3, v4, v12}, Lej/f$a$a;-><init>(JLkotlin/jvm/functions/Function3;)V

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-static {}, Lej/f;->d()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    if-eqz p12, :cond_b

    move/from16 v3, p7

    goto :goto_6

    :cond_b
    move v3, v14

    :goto_6
    if-eqz p12, :cond_c

    move v14, v11

    :cond_c
    move-object/from16 p7, p0

    move/from16 p8, p4

    move/from16 p9, p5

    move/from16 p10, v3

    move/from16 p11, v14

    move-object/from16 p12, p14

    invoke-direct/range {p7 .. p12}, Lej/f$a;->k(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_7
    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " use "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with small "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "ImageHelper"

    const/4 v5, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v4

    move-object/from16 p3, v1

    move/from16 p4, v5

    move/from16 p5, v2

    move-object/from16 p6, v3

    invoke-static/range {p1 .. p6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final g(Landroid/widget/ImageView;Lcom/bumptech/glide/RequestBuilder;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final h(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZLcom/bumptech/glide/Priority;ILkotlin/jvm/functions/Function3;)V
    .locals 18

    move-object/from16 v0, p1

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-static {}, Lej/f;->d()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz p12, :cond_1

    move/from16 v2, p6

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p12, :cond_2

    move/from16 v1, p5

    :cond_2
    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p8, p0

    move/from16 p9, p4

    move/from16 p10, p7

    move/from16 p11, v2

    move/from16 p12, v1

    move-object/from16 p13, v5

    move/from16 p14, v3

    move-object/from16 p15, v4

    invoke-static/range {p8 .. p15}, Lej/f$a;->l(Lej/f$a;IIIILcom/bumptech/glide/Priority;ILjava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void

    :cond_3
    move-object/from16 v3, p2

    invoke-static {}, Lej/f;->c()I

    move-result v1

    move/from16 v2, p5

    if-ne v2, v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v7, v1

    goto :goto_1

    :cond_4
    move v7, v2

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p7

    move/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    :try_start_0
    invoke-direct/range {v1 .. v17}, Lej/f$a;->f(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIIIZLjava/lang/String;ZZZZLcom/bumptech/glide/Priority;ILkotlin/jvm/functions/Function3;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static synthetic j(Lej/f$a;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lej/f$a;->i(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final k(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 3

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p5}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p5

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p5, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p5

    const-string v0, "diskCacheStrategy(...)"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p5, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    const-string p5, "placeholder(...)"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p5, p1

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    :cond_0
    if-lez p2, :cond_1

    new-instance p1, Lcom/bumptech/glide/load/MultiTransformation;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v1, p2}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/bumptech/glide/load/Transformation;

    const/4 v2, 0x0

    aput-object v0, p2, v2

    const/4 v0, 0x1

    aput-object v1, p2, v0

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {p5, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    const-string p2, "transform(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p5, p1

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    goto :goto_0

    :cond_1
    if-gez p2, :cond_2

    invoke-static {}, Lcom/bumptech/glide/request/RequestOptions;->circleCropTransform()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p5

    const-string p1, "circleCropTransform(...)"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, -0x1

    if-ne p3, p1, :cond_3

    if-eq p4, p1, :cond_4

    :cond_3
    invoke-virtual {p5, p4, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    const-string p2, "override(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p5, p1

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    :cond_4
    return-object p5
.end method

.method static synthetic l(Lej/f$a;IIIILcom/bumptech/glide/Priority;ILjava/lang/Object;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    sget-object p5, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lej/f$a;->k(IIIILcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()I
    .locals 1

    invoke-static {}, Lej/f;->b()I

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;IZZ)Ljava/lang/String;
    .locals 12

    const-string v0, "url"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lej/g;->a:Lej/g;

    const/16 v10, 0xb8

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v3, p2

    move v4, p3

    move/from16 v8, p4

    invoke-static/range {v1 .. v11}, Lej/g;->e(Lej/g;Ljava/lang/String;IZZIZZIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v0, Lej/f$a$d;

    invoke-direct {v0, p4, p2, p3}, Lej/f$a$d;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->preload()Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public final m(Landroid/content/Context;)Lej/f$b;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lej/f$b;

    invoke-direct {v0, p1}, Lej/f$b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
