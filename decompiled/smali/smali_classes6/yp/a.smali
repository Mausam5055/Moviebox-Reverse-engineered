.class public abstract Lyp/a;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/widget/ImageView;Landroid/net/Uri;F)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p1

    sget-object v0, Loh/h;->a:Loh/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Loh/h;->a(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, p2}, Lej/f$b;->j(I)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static final b(Landroid/widget/ImageView;Ljava/lang/String;F)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p1

    sget-object v0, Loh/h;->a:Loh/h;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Loh/h;->a(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, p2}, Lej/f$b;->j(I)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic c(Landroid/widget/ImageView;Ljava/lang/String;FILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lyp/a;->b(Landroid/widget/ImageView;Ljava/lang/String;F)V

    return-void
.end method
