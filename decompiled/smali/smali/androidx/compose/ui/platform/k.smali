.class public abstract Landroidx/compose/ui/platform/k;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/CharSequence;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/Annotation;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Annotation;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->b0([Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    :goto_0
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v7, "androidx.compose.text.SpanStyle"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    new-instance v8, Landroidx/compose/ui/platform/r0;

    invoke-virtual {v4}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Landroidx/compose/ui/platform/r0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroidx/compose/ui/platform/r0;->k()Landroidx/compose/ui/text/x;

    move-result-object v4

    new-instance v8, Landroidx/compose/ui/text/AnnotatedString$c;

    invoke-direct {v8, v4, v5, v7}, Landroidx/compose/ui/text/AnnotatedString$c;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eq v3, v2, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/text/AnnotatedString;)Ljava/lang/CharSequence;
    .locals 9

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroidx/compose/ui/platform/w0;

    invoke-direct {v1}, Landroidx/compose/ui/platform/w0;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$c;

    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$c;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/x;

    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$c;->b()I

    move-result v6

    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$c;->c()I

    move-result v4

    invoke-virtual {v1}, Landroidx/compose/ui/platform/w0;->q()V

    invoke-virtual {v1, v5}, Landroidx/compose/ui/platform/w0;->e(Landroidx/compose/ui/text/x;)V

    new-instance v5, Landroid/text/Annotation;

    const-string v7, "androidx.compose.text.SpanStyle"

    invoke-virtual {v1}, Landroidx/compose/ui/platform/w0;->p()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x21

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
