.class public abstract Lcom/transsion/baseui/util/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?i:http|https|rtsp|ftp)://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/transsion/baseui/util/l;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static final synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/baseui/util/l;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLcom/transsion/baseui/util/g;Lkotlin/jvm/functions/Function2;)Landroid/text/SpannableString;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v6

    sget v7, Lcom/tn/lib/widget/R$color;->color_0ba7ff:I

    invoke-static {v6, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v6

    move-object v13, v1

    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string v7, ")"

    const/4 v12, 0x0

    const/4 v11, 0x2

    invoke-static {v14, v7, v12, v11, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, ")"

    const-string v16, ""

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    :cond_2
    if-eqz v13, :cond_3

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v13

    move-object v8, v14

    move v11, v15

    move v15, v12

    move-object/from16 v12, v16

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v12

    goto :goto_1

    :cond_3
    move v15, v12

    :goto_1
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v19, 0x4

    const/16 v20, 0x0

    const-string v16, "%20"

    const-string v17, " "

    const/16 v18, 0x0

    move v7, v15

    move-object v15, v14

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/transsion/baseui/util/l;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    const-string v10, "group(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v25, 0x4

    const/16 v26, 0x0

    const-string v23, ""

    const/16 v24, 0x0

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    invoke-static/range {v21 .. v26}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    sget-object v9, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string v10, "."

    const/4 v11, 0x2

    invoke-static {v9, v10, v7, v11, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v22

    const/16 v25, 0x6

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v9

    invoke-static/range {v21 .. v26}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v11, :cond_5

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x4

    const/16 v20, 0x0

    const-string v17, ""

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_4
    const/4 v11, 0x2

    :cond_5
    :goto_2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v9, 0x18

    if-le v3, v9, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    const-string v10, "..."

    invoke-static {v15, v9, v3, v10}, Lkotlin/text/StringsKt;->M0(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v14

    move-object/from16 v17, v3

    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v9

    sget v10, Lcom/transsion/baseui/R$mipmap;->base_ic_url_link:I

    invoke-static {v9, v10}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v15

    invoke-virtual {v9, v7, v7, v10, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_7
    if-eqz v9, :cond_8

    new-instance v7, Lcom/transsion/baseui/widget/d;

    invoke-direct {v7, v9, v11}, Lcom/transsion/baseui/widget/d;-><init>(Landroid/graphics/drawable/Drawable;I)V

    move-object/from16 v17, v7

    goto :goto_3

    :cond_8
    const/16 v17, 0x0

    :goto_3
    new-instance v7, Lcom/transsion/baseui/util/l$a;

    move/from16 v9, p2

    move-object/from16 v10, p4

    invoke-direct {v7, v10, v8, v9, v6}, Lcom/transsion/baseui/util/l$a;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;ZI)V

    new-instance v8, Lcom/transsion/baseui/util/UrlContent;

    move-object v15, v8

    move-object/from16 v16, v7

    move-object/from16 v18, v14

    move-object/from16 v19, v3

    move/from16 v20, v12

    invoke-direct/range {v15 .. v20}, Lcom/transsion/baseui/util/UrlContent;-><init>(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_9
    move/from16 v9, p2

    move-object/from16 v10, p4

    goto/16 :goto_0

    :cond_a
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_b
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/baseui/util/UrlContent;

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIconSpan()Landroid/text/style/ImageSpan;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v7

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x21

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getClickableSpan()Landroid/text/style/ClickableSpan;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v7

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v8

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v8, v5

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_c
    if-eqz v2, :cond_d

    invoke-interface {v2, v4}, Lcom/transsion/baseui/util/g;->a(Ljava/util/List;)V

    :cond_d
    if-eqz v0, :cond_e

    new-instance v2, Lhk/a;

    invoke-direct {v2, v1}, Lhk/a;-><init>(Landroid/text/Spannable;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_e
    if-eqz v0, :cond_f

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/tn/lib/widget/R$color;->cl17:I

    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_f
    return-object v1
.end method

.method public static final c(Landroid/widget/TextView;Ljava/lang/CharSequence;ZILcom/transsion/baseui/util/g;Lkotlin/jvm/functions/Function2;)Landroid/text/SpannableStringBuilder;
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    move-object/from16 v7, p1

    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v6

    sget v8, Lcom/tn/lib/widget/R$color;->color_0ba7ff:I

    invoke-static {v6, v8}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v6

    move-object v14, v7

    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    const-string v15, "..."

    const/4 v13, 0x0

    if-eqz v8, :cond_a

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string v9, ")"

    const/4 v12, 0x2

    invoke-static {v8, v9, v13, v12, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, ")"

    const-string v18, ""

    const/16 v19, 0x0

    move-object/from16 v16, v8

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :cond_2
    move-object/from16 v22, v8

    if-eqz v14, :cond_3

    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v14

    move-object/from16 v9, v22

    move/from16 v12, v16

    move-object/from16 v23, v5

    move v5, v13

    move-object/from16 v13, v17

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v13

    goto :goto_1

    :cond_3
    move-object/from16 v23, v5

    move v5, v13

    :goto_1
    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "%20"

    const-string v18, " "

    const/16 v19, 0x0

    move-object/from16 v16, v22

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/transsion/baseui/util/l;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    const-string v10, "group(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v28, 0x4

    const/16 v29, 0x0

    const-string v26, ""

    const/16 v27, 0x0

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    invoke-static/range {v24 .. v29}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string v11, "."

    const/4 v12, 0x2

    invoke-static {v10, v11, v5, v12, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x6

    const/16 v21, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v10

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v12, :cond_5

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v18, ""

    const/16 v19, 0x0

    move-object/from16 v16, v9

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    const/4 v12, 0x2

    :cond_5
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v10, 0x18

    if-le v3, v10, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v9, v10, v3, v15}, Lkotlin/text/StringsKt;->M0(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v22

    move-object/from16 v18, v3

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v9

    sget v10, Lcom/transsion/baseui/R$mipmap;->base_ic_url_link:I

    invoke-static {v9, v10}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v11

    invoke-virtual {v9, v5, v5, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_7
    if-eqz v9, :cond_8

    new-instance v5, Lcom/transsion/baseui/widget/d;

    invoke-direct {v5, v9, v12}, Lcom/transsion/baseui/widget/d;-><init>(Landroid/graphics/drawable/Drawable;I)V

    move-object/from16 v18, v5

    goto :goto_3

    :cond_8
    const/16 v18, 0x0

    :goto_3
    new-instance v5, Lcom/transsion/baseui/util/l$b;

    move/from16 v9, p2

    move-object/from16 v10, p5

    invoke-direct {v5, v10, v8, v9, v6}, Lcom/transsion/baseui/util/l$b;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;ZI)V

    new-instance v8, Lcom/transsion/baseui/util/UrlContent;

    move-object/from16 v16, v8

    move-object/from16 v17, v5

    move-object/from16 v19, v22

    move-object/from16 v20, v3

    move/from16 v21, v13

    invoke-direct/range {v16 .. v21}, Lcom/transsion/baseui/util/UrlContent;-><init>(Landroid/text/style/ClickableSpan;Landroid/text/style/ImageSpan;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v23

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_9
    move/from16 v9, p2

    move-object/from16 v10, p5

    move-object/from16 v5, v23

    goto/16 :goto_0

    :cond_a
    move v5, v13

    new-instance v3, Landroid/text/StaticLayout;

    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    move-object v8, v6

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    :goto_4
    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    move v9, v6

    goto :goto_5

    :cond_c
    move v9, v5

    :goto_5
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v6, v3

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    const/16 v7, 0x21

    if-ge v1, v6, :cond_13

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    add-int/lit8 v1, v1, -0xd

    new-instance v3, Landroid/text/SpannableStringBuilder;

    if-eqz v14, :cond_d

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v13

    goto :goto_6

    :cond_d
    move v13, v5

    :goto_6
    const/16 v6, 0x1e

    if-le v13, v6, :cond_10

    if-lez v1, :cond_10

    if-eqz v14, :cond_e

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v13

    goto :goto_7

    :cond_e
    move v13, v5

    :goto_7
    if-ge v1, v13, :cond_10

    if-eqz v14, :cond_f

    invoke-interface {v14, v5, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    move-object v14, v1

    :cond_10
    invoke-direct {v3, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/baseui/util/UrlContent;

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v6

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-ge v6, v8, :cond_11

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIconSpan()Landroid/text/style/ImageSpan;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v8

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v6, v8, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getClickableSpan()Landroid/text/style/ClickableSpan;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v8

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v9

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v9, v5

    invoke-virtual {v3, v6, v8, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9

    :cond_12
    invoke-virtual {v3, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v1, " More"

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    new-instance v6, Lph/a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v8

    const-string v9, "getApp(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljg/a;->c(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-direct {v6, v8}, Lph/a;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v3, v6, v1, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/tn/lib/widget/R$color;->brand_new_50:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v6, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v6, v1, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    :cond_13
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/baseui/util/UrlContent;

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIconSpan()Landroid/text/style/ImageSpan;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v8

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v6, v8, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getClickableSpan()Landroid/text/style/ClickableSpan;

    move-result-object v6

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v8

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getIndexOfUrl()I

    move-result v9

    invoke-virtual {v5}, Lcom/transsion/baseui/util/UrlContent;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v9, v5

    invoke-virtual {v3, v6, v8, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    :cond_14
    :goto_b
    if-eqz v2, :cond_15

    invoke-interface {v2, v4}, Lcom/transsion/baseui/util/g;->a(Ljava/util/List;)V

    :cond_15
    if-eqz v0, :cond_16

    new-instance v1, Lhk/a;

    invoke-direct {v1, v3}, Lhk/a;-><init>(Landroid/text/Spannable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_16
    if-eqz v0, :cond_17

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$color;->cl17:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_17
    return-object v3
.end method

.method private static final d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/web/web"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method public static final e(Landroid/widget/TextView;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function2;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/transsion/baseui/util/l;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLcom/transsion/baseui/util/g;Lkotlin/jvm/functions/Function2;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final f(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/transsion/baseui/util/l;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLcom/transsion/baseui/util/g;Lkotlin/jvm/functions/Function2;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final g(Landroid/widget/TextView;Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function2;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/transsion/baseui/util/l;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;ZILcom/transsion/baseui/util/g;Lkotlin/jvm/functions/Function2;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic h(Landroid/widget/TextView;Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/16 p2, 0xa

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baseui/util/l;->g(Landroid/widget/TextView;Ljava/lang/CharSequence;ILkotlin/jvm/functions/Function2;)V

    return-void
.end method
