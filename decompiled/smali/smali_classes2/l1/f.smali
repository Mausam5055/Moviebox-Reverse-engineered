.class public final Ll1/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll1/f$b;,
        Ll1/f$c;,
        Ll1/f$a;
    }
.end annotation


# instance fields
.field private final a:Ll1/f$b;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "textView cannot be null"

    invoke-static {p1, v0}, Landroidx/core/util/i;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    new-instance p2, Ll1/f$c;

    invoke-direct {p2, p1}, Ll1/f$c;-><init>(Landroid/widget/TextView;)V

    iput-object p2, p0, Ll1/f;->a:Ll1/f$b;

    goto :goto_0

    :cond_0
    new-instance p2, Ll1/f$a;

    invoke-direct {p2, p1}, Ll1/f$a;-><init>(Landroid/widget/TextView;)V

    iput-object p2, p0, Ll1/f;->a:Ll1/f$b;

    :goto_0
    return-void
.end method


# virtual methods
.method public a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    iget-object v0, p0, Ll1/f;->a:Ll1/f$b;

    invoke-virtual {v0, p1}, Ll1/f$b;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Ll1/f;->a:Ll1/f$b;

    invoke-virtual {v0}, Ll1/f$b;->b()Z

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Ll1/f;->a:Ll1/f$b;

    invoke-virtual {v0, p1}, Ll1/f$b;->c(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Ll1/f;->a:Ll1/f$b;

    invoke-virtual {v0, p1}, Ll1/f$b;->d(Z)V

    return-void
.end method

.method public e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    iget-object v0, p0, Ll1/f;->a:Ll1/f$b;

    invoke-virtual {v0, p1}, Ll1/f$b;->e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p1

    return-object p1
.end method
