.class public final Ltj/c;
.super Ljava/lang/Object;

# interfaces
.implements Ltj/a;


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private c:Lkotlin/jvm/functions/Function0;

.field private d:I

.field private e:I

.field private f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltj/c;->a:Landroid/widget/TextView;

    const-string p1, "http://schemas.android.com/apk/res/android"

    iput-object p1, p0, Ltj/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Ltj/c;->b:Ljava/lang/String;

    const-string p3, "text"

    invoke-interface {p2, p1, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "substring(...)"

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ltj/b;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ltj/c;->d:I

    :cond_0
    iget-object p1, p0, Ltj/c;->b:Ljava/lang/String;

    const-string v2, "hint"

    invoke-interface {p2, p1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p2, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ltj/b;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ltj/c;->e:I

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 1

    iput p1, p0, Ltj/c;->e:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltj/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(I)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ltj/c;->e:I

    iget-object v0, p0, Ltj/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public changeLocal()V
    .locals 4

    :try_start_0
    iget v0, p0, Ltj/c;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "getString(...)"

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Ltj/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Ltj/c;->d:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Ltj/c;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ltj/c;->a:Landroid/widget/TextView;

    iget v2, p0, Ltj/c;->d:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    iget v0, p0, Ltj/c;->e:I

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltj/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Ltj/c;->e:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ltj/c;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ltj/c;->a:Landroid/widget/TextView;

    iget v1, p0, Ltj/c;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    :cond_2
    iget-object v0, p0, Ltj/c;->f:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    iget-object v1, p0, Ltj/c;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Ltj/c;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_4
    iget-object v0, p0, Ltj/c;->c:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public d(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltj/c;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public e(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    iput-object p1, p0, Ltj/c;->f:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    iput v0, p0, Ltj/c;->d:I

    iget-object v0, p0, Ltj/c;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f(I)V
    .locals 1

    iput p1, p0, Ltj/c;->d:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltj/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ltj/c;->f:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    iput v0, p0, Ltj/c;->d:I

    iget-object v0, p0, Ltj/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
