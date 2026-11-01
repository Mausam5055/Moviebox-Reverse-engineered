.class public Lcom/therouter/router/Navigator;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Landroid/content/Intent;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Landroid/os/Bundle;

.field private final f:Ljava/util/HashMap;

.field private g:Landroid/os/Bundle;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Landroid/net/Uri;

.field private k:Landroid/content/ClipData;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/therouter/router/Navigator;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/therouter/router/Navigator;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/therouter/router/Navigator;->b:Landroid/content/Intent;

    iput-object p1, p0, Lcom/therouter/router/Navigator;->c:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/therouter/router/Navigator;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-string v0, "Navigator"

    const-string v1, "Navigator constructor parameter url is empty"

    invoke-static {p2, v0, v1}, Lcom/therouter/TheRouterKt;->h(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/therouter/router/NavigatorKt;->d()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbg/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/therouter/router/Navigator;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbg/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/therouter/router/Navigator;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbg/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/therouter/router/Navigator;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/therouter/router/Navigator;->a:Ljava/lang/String;

    if-nez p2, :cond_2

    move-object v0, p1

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, p2

    :goto_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/therouter/router/Navigator;->c(Lcom/therouter/router/Navigator;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/therouter/router/Navigator;->c(Lcom/therouter/router/Navigator;Ljava/lang/String;)V

    return-void
.end method

.method private static final a(Lcom/therouter/router/Navigator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_6

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "="

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, ""

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    const-string v3, "substring(...)"

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-static {p2}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    return-void
.end method

.method static synthetic b(Lcom/therouter/router/Navigator;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const-string p2, ""

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/therouter/router/Navigator;->a(Lcom/therouter/router/Navigator;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: _init_$parser"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final c(Lcom/therouter/router/Navigator;Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/16 v4, 0x3f

    const/4 v5, 0x2

    invoke-static {p1, v4, v0, v5, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v4

    if-ne v4, v1, :cond_1

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/16 v6, 0x3f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->n0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v5, "substring(...)"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v1, [C

    const/16 v4, 0x26

    aput-char v4, v7, v0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->R0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v0, v5, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ne v0, v6, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p0, v6, p1}, Lcom/therouter/router/Navigator;->a(Lcom/therouter/router/Navigator;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p0, v6, v3, v2, v3}, Lcom/therouter/router/Navigator;->b(Lcom/therouter/router/Navigator;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "&"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, v3, v2, v3}, Lcom/therouter/router/Navigator;->b(Lcom/therouter/router/Navigator;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static final synthetic d(Lcom/therouter/router/Navigator;)Landroid/content/ClipData;
    .locals 0

    iget-object p0, p0, Lcom/therouter/router/Navigator;->k:Landroid/content/ClipData;

    return-object p0
.end method

.method public static final synthetic e(Lcom/therouter/router/Navigator;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/therouter/router/Navigator;->j:Landroid/net/Uri;

    return-object p0
.end method

.method public static final synthetic f(Lcom/therouter/router/Navigator;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/therouter/router/Navigator;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic g(Lcom/therouter/router/Navigator;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/therouter/router/Navigator;->g:Landroid/os/Bundle;

    return-object p0
.end method

.method public static final synthetic h(Lcom/therouter/router/Navigator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/therouter/router/Navigator;->h:Z

    return-void
.end method

.method public static synthetic w(Lcom/therouter/router/Navigator;Landroid/content/Context;ILbg/c;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/therouter/router/Navigator;->s(Landroid/content/Context;ILbg/c;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: navigation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/therouter/c;->c()Landroid/content/Context;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/therouter/router/Navigator;->u(Landroid/content/Context;Lbg/c;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: navigation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic y(Lcom/therouter/router/Navigator;Landroidx/fragment/app/Fragment;ILbg/c;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/therouter/router/Navigator;->v(Landroidx/fragment/app/Fragment;ILbg/c;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: navigation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;Landroid/os/Bundle;)Lcom/therouter/router/Navigator;
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final B(Ljava/lang/String;B)Lcom/therouter/router/Navigator;
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object p0
.end method

.method public final C(Ljava/lang/String;C)Lcom/therouter/router/Navigator;
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-object p0
.end method

.method public final D(Ljava/lang/String;D)Lcom/therouter/router/Navigator;
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    return-object p0
.end method

.method public final E(Ljava/lang/String;F)Lcom/therouter/router/Navigator;
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public final F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final G(Ljava/lang/String;J)Lcom/therouter/router/Navigator;
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public final H(Ljava/lang/String;Ljava/lang/Object;)Lcom/therouter/router/Navigator;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/therouter/router/NavigatorKt;->j()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final I(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/therouter/router/Navigator;
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public final J(Ljava/lang/String;Ljava/io/Serializable;)Lcom/therouter/router/Navigator;
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public final K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final i(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/therouter/router/action/ActionManager;->a:Lcom/therouter/router/action/ActionManager;

    invoke-virtual {v0, p0}, Lcom/therouter/router/action/ActionManager;->d(Lcom/therouter/router/Navigator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final j(I)Lcom/therouter/router/Navigator;
    .locals 3

    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "therouter_intent_flags"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final k()Landroidx/fragment/app/Fragment;
    .locals 9

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin navigate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigator::navigationFragment"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v1, v3, v4, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/therouter/router/NavigatorKt;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbg/e;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v1}, Lbg/e;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v1}, Lbg/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path replace to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3, v4, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    invoke-static {v1}, Lcom/therouter/router/RouteMapKt;->k(Ljava/lang/String;)Lcom/therouter/router/RouteItem;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v6, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    const-string v7, "<get-keys>(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match route "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3, v4, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_4
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->g()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbg/g;

    if-eqz v6, :cond_5

    invoke-virtual {v6, v1}, Lbg/g;->b(Lcom/therouter/router/RouteItem;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v1}, Lbg/g;->a(Lcom/therouter/router/RouteItem;)Lcom/therouter/router/RouteItem;

    move-result-object v1

    goto :goto_2

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "route replace to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3, v4, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/therouter/router/NavigatorKt;->f()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    new-instance v3, Lcom/therouter/router/Navigator$createFragment$5$1;

    invoke-direct {v3, v0, p0}, Lcom/therouter/router/Navigator$createFragment$5$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/therouter/router/Navigator;)V

    invoke-interface {v2, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final l(Landroid/content/Context;)Landroid/content/Intent;
    .locals 8

    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin navigate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Navigator::createIntent"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v0, v2, v3, v2}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/therouter/c;->c()Landroid/content/Context;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/therouter/router/NavigatorKt;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbg/e;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v0}, Lbg/e;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v0}, Lbg/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " replace to "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2, v3, v2}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    move-object v0, v5

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/therouter/router/RouteMapKt;->k(Ljava/lang/String;)Lcom/therouter/router/RouteItem;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    const-string v6, "<get-keys>(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "match route "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2, v3, v2}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_5
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbg/g;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v0}, Lbg/g;->b(Lcom/therouter/router/RouteItem;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5, v0}, Lbg/g;->a(Lcom/therouter/router/RouteItem;)Lcom/therouter/router/RouteItem;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "route replace to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v2, v3, v2}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/therouter/router/Navigator;->b:Landroid/content/Intent;

    if-nez v1, :cond_8

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :cond_8
    if-eqz v0, :cond_9

    invoke-static {}, Lcom/therouter/router/NavigatorKt;->f()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    new-instance v3, Lcom/therouter/router/Navigator$createIntent$5;

    invoke-direct {v3, p0, v1, p1}, Lcom/therouter/router/Navigator$createIntent$5;-><init>(Lcom/therouter/router/Navigator;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-interface {v2, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v1
.end method

.method public final m()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public final n()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/Navigator;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/therouter/router/Navigator;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "?"

    const/4 v7, 0x0

    invoke-static {v0, v3, v7, v1, v2}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->n0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/therouter/router/Navigator$getUrlWithParams$1;->INSTANCE:Lcom/therouter/router/Navigator$getUrlWithParams$1;

    invoke-virtual {p0, v0}, Lcom/therouter/router/Navigator;->q(Lkotlin/jvm/functions/Function2;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q(Lkotlin/jvm/functions/Function2;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "handle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x26

    const-string v7, ""

    const/4 v8, 0x0

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v9, v0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v9, v0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v9, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    :cond_1
    move-object v9, v7

    :cond_2
    invoke-interface {v1, v5, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v4, :cond_3

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v8

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v6, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move-object v7, v6

    :cond_5
    :goto_1
    invoke-interface {v1, v5, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    iget-object v1, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    move-object v10, v7

    goto :goto_2

    :cond_7
    move-object v10, v3

    :goto_2
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move-object v12, v7

    goto :goto_3

    :cond_8
    move-object v12, v1

    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    goto/16 :goto_4

    :cond_9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v1, :cond_b

    invoke-static {v10, v6, v8, v4, v3}, Lkotlin/text/StringsKt;->V0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v1, "toString(...)"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_b
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v5, 0x3f

    const-string v6, "?"

    if-nez v1, :cond_e

    iget-object v11, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    const/4 v7, -0x1

    if-le v1, v7, :cond_d

    iget-object v7, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v7, "substring(...)"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5, v8, v4, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v7, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "?"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_c
    iget-object v1, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "#"

    const/4 v5, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_d
    iget-object v1, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    goto :goto_4

    :cond_e
    iget-object v1, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    invoke-static {v1, v5, v8, v4, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v7, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "?"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_f
    iget-object v1, v0, Lcom/therouter/router/Navigator;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    iget-object v2, v0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "<get-keys>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    move-object v3, v1

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, v0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_11
    return-object v3
.end method

.method public final r(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method public final s(Landroid/content/Context;ILbg/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/therouter/router/Navigator;->t(Landroid/content/Context;Landroidx/fragment/app/Fragment;ILbg/c;)V

    return-void
.end method

.method public final t(Landroid/content/Context;Landroidx/fragment/app/Fragment;ILbg/c;)V
    .locals 10

    invoke-static {}, Lcom/therouter/router/RouteMapKt;->i()Z

    move-result v0

    const/4 v1, 0x4

    const-string v2, "Navigator::navigation"

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/therouter/router/Navigator;->h:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "begin navigate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3, v1, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_3

    :cond_2
    :goto_1
    move-object v6, p1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/therouter/c;->c()Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    :goto_2
    if-nez p4, :cond_4

    invoke-static {}, Lcom/therouter/router/NavigatorKt;->b()Lbg/c;

    move-result-object p4

    :cond_4
    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/therouter/router/NavigatorKt;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbg/e;

    if-eqz v4, :cond_5

    invoke-virtual {v4, p1}, Lbg/e;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, p1}, Lbg/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " replace to "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v3, v1, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    move-object p1, v4

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lcom/therouter/router/RouteMapKt;->k(Ljava/lang/String;)Lcom/therouter/router/RouteItem;

    move-result-object p1

    sget-object v0, Lcom/therouter/router/action/ActionManager;->a:Lcom/therouter/router/action/ActionManager;

    invoke-virtual {v0, p0}, Lcom/therouter/router/action/ActionManager;->d(Lcom/therouter/router/Navigator;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez p1, :cond_7

    invoke-virtual {v0, p0, v6}, Lcom/therouter/router/action/ActionManager;->c(Lcom/therouter/router/Navigator;Landroid/content/Context;)V

    return-void

    :cond_7
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    const-string v5, "<get-keys>(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/therouter/router/Navigator;->f:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    if-eqz p1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "match route "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3, v1, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_a
    invoke-static {}, Lcom/therouter/router/NavigatorKt;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbg/g;

    if-eqz v4, :cond_b

    invoke-virtual {v4, p1}, Lbg/g;->b(Lcom/therouter/router/RouteItem;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4, p1}, Lbg/g;->a(Lcom/therouter/router/RouteItem;)Lcom/therouter/router/RouteItem;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "route replace to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3, v1, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_5

    :cond_c
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    :cond_d
    invoke-static {v0}, Lcom/therouter/router/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "NavigationCallback on found"

    invoke-static {v2, v0, v3, v1, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    invoke-virtual {p4, p0}, Lbg/c;->c(Lcom/therouter/router/Navigator;)V

    invoke-static {}, Lcom/therouter/router/NavigatorKt;->f()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    new-instance v1, Lcom/therouter/router/Navigator$navigation$6;

    move-object v4, v1

    move-object v5, p0

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/therouter/router/Navigator$navigation$6;-><init>(Lcom/therouter/router/Navigator;Landroid/content/Context;Landroidx/fragment/app/Fragment;ILbg/c;)V

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4, p0}, Lbg/c;->b(Lcom/therouter/router/Navigator;)V

    goto :goto_6

    :cond_e
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_6

    :cond_f
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getClassName()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TheRouter::Navigator "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is Fragment"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_10
    invoke-virtual {p4, p0, p3}, Lbg/c;->d(Lcom/therouter/router/Navigator;I)V

    :goto_6
    return-void

    :cond_11
    :goto_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/therouter/router/Navigator;->h:Z

    invoke-virtual {p0}, Lcom/therouter/router/Navigator;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add pending navigator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3, v1, v3}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    invoke-static {}, Lcom/therouter/router/NavigatorKt;->c()Ljava/util/LinkedList;

    move-result-object v0

    new-instance v1, Lcom/therouter/router/g;

    new-instance v8, Lcom/therouter/router/Navigator$navigation$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/therouter/router/Navigator$navigation$1;-><init>(Lcom/therouter/router/Navigator;Landroid/content/Context;Landroidx/fragment/app/Fragment;ILbg/c;)V

    invoke-direct {v1, p0, v8}, Lcom/therouter/router/g;-><init>(Lcom/therouter/router/Navigator;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public final u(Landroid/content/Context;Lbg/c;)V
    .locals 1

    const v0, -0xf63d8

    invoke-virtual {p0, p1, v0, p2}, Lcom/therouter/router/Navigator;->s(Landroid/content/Context;ILbg/c;)V

    return-void
.end method

.method public final v(Landroidx/fragment/app/Fragment;ILbg/c;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/therouter/router/Navigator;->t(Landroid/content/Context;Landroidx/fragment/app/Fragment;ILbg/c;)V

    return-void
.end method

.method public final z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;
    .locals 1

    iget-object v0, p0, Lcom/therouter/router/Navigator;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method
