.class public abstract Lcom/transsion/baseui/util/q;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/baseui/util/q;->h(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final b(Landroid/text/SpannableStringBuilder;Landroid/content/Context;I)V
    .locals 2

    const-string v0, "\ufffc"

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {p1, p2}, Lcom/transsion/baseui/util/q;->d(Landroid/content/Context;I)Landroid/text/style/ImageSpan;

    move-result-object p1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v1, 0x21

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static final c(Landroid/view/View;F)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/baseui/util/q$a;

    invoke-direct {v0, p1}, Lcom/transsion/baseui/util/q$a;-><init>(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method private static final d(Landroid/content/Context;I)Landroid/text/style/ImageSpan;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/text/style/ImageSpan;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/style/ImageSpan;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    :goto_0
    return-object v0
.end method

.method public static final e(Ljava/util/List;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;
    .locals 10

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/baseui/util/p;

    invoke-direct {v0}, Lcom/transsion/baseui/util/p;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    check-cast v4, Ljava/lang/String;

    const-string v6, "special_#shorts_icon"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " "

    if-eqz v6, :cond_1

    sget v3, Lcom/transsion/baseui/R$drawable;->ic_tag_ugc_shorts:I

    invoke-static {v0, p1, v3}, Lcom/transsion/baseui/util/q;->b(Landroid/text/SpannableStringBuilder;Landroid/content/Context;I)V

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_1
    const-string v6, "special_#user_icon"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget v3, Lcom/transsion/baseui/R$drawable;->ic_ugc_creator:I

    invoke-static {v0, p1, v3}, Lcom/transsion/baseui/util/q;->b(Landroid/text/SpannableStringBuilder;Landroid/content/Context;I)V

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    const/4 v8, 0x0

    const-string v9, "dynamic_icon_#"

    invoke-static {v4, v9, v2, v6, v8}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4, v9}, Lkotlin/text/StringsKt;->I0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, p1, v3}, Lcom/transsion/baseui/util/q;->b(Landroid/text/SpannableStringBuilder;Landroid/content/Context;I)V

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_4

    sget v3, Lcom/transsion/baseui/R$mipmap;->ic_subtitle_split:I

    invoke-static {v0, p1, v3}, Lcom/transsion/baseui/util/q;->b(Landroid/text/SpannableStringBuilder;Landroid/content/Context;I)V

    :cond_4
    :goto_1
    move v3, v5

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static final f(Ljava/util/List;Landroid/content/Context;Z)Landroid/text/SpannableStringBuilder;
    .locals 8

    const-string v0, "items"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/baseui/util/k;

    instance-of v3, v2, Lcom/transsion/baseui/util/k$b;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/transsion/baseui/util/k$b;

    invoke-virtual {v2}, Lcom/transsion/baseui/util/k$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_3
    check-cast v3, Lcom/transsion/baseui/util/k;

    instance-of v5, v3, Lcom/transsion/baseui/util/k$a;

    if-eqz v5, :cond_4

    check-cast v3, Lcom/transsion/baseui/util/k$a;

    invoke-virtual {v3}, Lcom/transsion/baseui/util/k$a;->a()I

    move-result v2

    invoke-static {p0, p1, v2}, Lcom/transsion/baseui/util/q;->b(Landroid/text/SpannableStringBuilder;Landroid/content/Context;I)V

    if-eqz p2, :cond_6

    const-string v2, " "

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_4
    instance-of v5, v3, Lcom/transsion/baseui/util/k$b;

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    check-cast v3, Lcom/transsion/baseui/util/k$b;

    invoke-virtual {v3}, Lcom/transsion/baseui/util/k$b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Lcom/transsion/baseui/util/k$b;->b()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {p1, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v7, 0x21

    invoke-virtual {p0, v6, v5, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_6

    sget v2, Lcom/transsion/baseui/R$mipmap;->ic_subtitle_split:I

    invoke-static {p0, p1, v2}, Lcom/transsion/baseui/util/q;->b(Landroid/text/SpannableStringBuilder;Landroid/content/Context;I)V

    :cond_6
    :goto_2
    move v2, v4

    goto :goto_1

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_8
    return-object p0
.end method

.method public static synthetic g(Ljava/util/List;Landroid/content/Context;ZILjava/lang/Object;)Landroid/text/SpannableStringBuilder;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/transsion/baseui/util/q;->f(Ljava/util/List;Landroid/content/Context;Z)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static final h(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
