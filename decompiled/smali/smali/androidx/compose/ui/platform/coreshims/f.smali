.class public Landroidx/compose/ui/platform/coreshims/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/coreshims/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/view/ViewStructure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/coreshims/f;->a:Ljava/lang/Object;

    return-void
.end method

.method public static i(Landroid/view/ViewStructure;)Landroidx/compose/ui/platform/coreshims/f;
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/coreshims/f;

    invoke-direct {v0, p0}, Landroidx/compose/ui/platform/coreshims/f;-><init>(Landroid/view/ViewStructure;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewStructure;

    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/f$a;->a(Landroid/view/ViewStructure;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewStructure;

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/coreshims/f$a;->b(Landroid/view/ViewStructure;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewStructure;

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/coreshims/f$a;->c(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(IIIIII)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/f;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/view/ViewStructure;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/platform/coreshims/f$a;->d(Landroid/view/ViewStructure;IIIIII)V

    return-void
.end method

.method public e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewStructure;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/coreshims/f$a;->e(Landroid/view/ViewStructure;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewStructure;

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/coreshims/f$a;->f(Landroid/view/ViewStructure;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g(FIII)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewStructure;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/coreshims/f$a;->g(Landroid/view/ViewStructure;FIII)V

    return-void
.end method

.method public h()Landroid/view/ViewStructure;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/f;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewStructure;

    return-object v0
.end method
