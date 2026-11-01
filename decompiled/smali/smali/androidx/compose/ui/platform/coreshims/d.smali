.class public Landroidx/compose/ui/platform/coreshims/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/coreshims/d$b;,
        Landroidx/compose/ui/platform/coreshims/d$c;,
        Landroidx/compose/ui/platform/coreshims/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/platform/coreshims/d;->b:Landroid/view/View;

    return-void
.end method

.method public static f(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/d;
    .locals 1

    new-instance v0, Landroidx/compose/ui/platform/coreshims/d;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/platform/coreshims/d;-><init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public a(J)Landroid/view/autofill/AutofillId;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/platform/coreshims/d;->b:Landroid/view/View;

    invoke-static {v1}, Landroidx/compose/ui/platform/coreshims/e;->a(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/b;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/coreshims/b;->a()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/platform/coreshims/d$b;->a(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/autofill/AutofillId;J)Landroid/view/autofill/AutofillId;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/view/autofill/AutofillId;J)Landroidx/compose/ui/platform/coreshims/f;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroidx/compose/ui/platform/coreshims/d$b;->c(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/autofill/AutofillId;J)Landroid/view/ViewStructure;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/platform/coreshims/f;->i(Landroid/view/ViewStructure;)Landroidx/compose/ui/platform/coreshims/f;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/platform/coreshims/d$b;->e(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/coreshims/d$c;->a(Landroid/view/contentcapture/ContentCaptureSession;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/platform/coreshims/d;->b:Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/compose/ui/platform/coreshims/d$b;->b(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)Landroid/view/ViewStructure;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/d$a;->a(Landroid/view/ViewStructure;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "TREAT_AS_VIEW_TREE_APPEARING"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/compose/ui/platform/coreshims/d$b;->d(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/ViewStructure;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStructure;

    invoke-static {v1, v2}, Landroidx/compose/ui/platform/coreshims/d$b;->d(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/ViewStructure;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/d;->b:Landroid/view/View;

    invoke-static {p1, v0}, Landroidx/compose/ui/platform/coreshims/d$b;->b(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)Landroid/view/ViewStructure;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/platform/coreshims/d$a;->a(Landroid/view/ViewStructure;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TREAT_AS_VIEW_TREE_APPEARED"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/coreshims/d$b;->d(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/ViewStructure;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public e([J)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/platform/coreshims/d;->b:Landroid/view/View;

    invoke-static {v1}, Landroidx/compose/ui/platform/coreshims/e;->a(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/b;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/coreshims/b;->a()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/platform/coreshims/d$b;->f(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/autofill/AutofillId;[J)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/platform/coreshims/d;->b:Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/compose/ui/platform/coreshims/d$b;->b(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)Landroid/view/ViewStructure;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/d$a;->a(Landroid/view/ViewStructure;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "TREAT_AS_VIEW_TREE_APPEARING"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/compose/ui/platform/coreshims/d$b;->d(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/ViewStructure;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/platform/coreshims/d;->b:Landroid/view/View;

    invoke-static {v1}, Landroidx/compose/ui/platform/coreshims/e;->a(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/b;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/coreshims/b;->a()Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/platform/coreshims/d$b;->f(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/autofill/AutofillId;[J)V

    iget-object p1, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/d;->b:Landroid/view/View;

    invoke-static {p1, v0}, Landroidx/compose/ui/platform/coreshims/d$b;->b(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)Landroid/view/ViewStructure;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/platform/coreshims/d$a;->a(Landroid/view/ViewStructure;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "TREAT_AS_VIEW_TREE_APPEARED"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroidx/compose/ui/platform/coreshims/d;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/compose/ui/platform/coreshims/c;->a(Ljava/lang/Object;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/coreshims/d$b;->d(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/ViewStructure;)V

    :cond_1
    :goto_0
    return-void
.end method
