.class public abstract Landroidx/compose/ui/text/input/s;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/text/input/TextFieldValue;)Landroid/view/inputmethod/ExtractedText;
    .locals 5

    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/b0;->j(J)I

    move-result v2

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/b0;->i(J)I

    move-result v2

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->f()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {p0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iput p0, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    return-object v0
.end method
