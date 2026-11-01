.class final Lk0/n0;
.super Ljava/lang/Object;

# interfaces
.implements Lk0/a1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk0/b1;)Landroid/text/StaticLayout;
    .locals 5

    invoke-virtual {p1}, Lk0/b1;->r()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lk0/b1;->q()I

    move-result v1

    invoke-virtual {p1}, Lk0/b1;->e()I

    move-result v2

    invoke-virtual {p1}, Lk0/b1;->o()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p1}, Lk0/b1;->u()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lk0/b1;->s()Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p1}, Lk0/b1;->a()Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p1}, Lk0/b1;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p1}, Lk0/b1;->c()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p1}, Lk0/b1;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p1}, Lk0/b1;->l()F

    move-result v1

    invoke-virtual {p1}, Lk0/b1;->m()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p1}, Lk0/b1;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p1}, Lk0/b1;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p1}, Lk0/b1;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p1}, Lk0/b1;->i()[I

    move-result-object v1

    invoke-virtual {p1}, Lk0/b1;->p()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Lk0/b1;->h()I

    move-result v2

    invoke-static {v0, v2}, Lk0/p0;->a(Landroid/text/StaticLayout$Builder;I)V

    :cond_0
    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Lk0/b1;->t()Z

    move-result v2

    invoke-static {v0, v2}, Lk0/r0;->a(Landroid/text/StaticLayout$Builder;Z)V

    :cond_1
    const/16 v2, 0x21

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Lk0/b1;->j()I

    move-result v1

    invoke-virtual {p1}, Lk0/b1;->k()I

    move-result p1

    invoke-static {v0, v1, p1}, Lk0/y0;->b(Landroid/text/StaticLayout$Builder;II)V

    :cond_2
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/text/StaticLayout;Z)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lk0/y0;->a(Landroid/text/StaticLayout;)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/16 p1, 0x1c

    if-lt v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
