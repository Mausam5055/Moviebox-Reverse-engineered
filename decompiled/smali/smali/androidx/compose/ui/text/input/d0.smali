.class public abstract Landroidx/compose/ui/text/input/d0;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/text/input/TextFieldValue;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->c()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/text/AnnotatedString;->p(J)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->c()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/b0;->i(J)I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/b0;->i(J)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroidx/compose/ui/text/AnnotatedString;->o(II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->c()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/b0;->j(J)I

    move-result v1

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/b0;->j(J)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroidx/compose/ui/text/AnnotatedString;->o(II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    return-object p0
.end method
