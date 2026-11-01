.class public final Lcom/transsion/lib_web/zip/loader/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loaders"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/lib_web/zip/loader/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/lib_web/zip/loader/d;->b:Ljava/util/List;

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/lib_web/zip/loader/d;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/lib_web/zip/loader/d;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/lib_web/zip/loader/d;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/lib_web/zip/loader/d;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/lib_web/zip/loader/c;

    invoke-interface {v1, p1}, Lcom/transsion/lib_web/zip/loader/c;->a(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/lib_web/zip/loader/d;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/lib_web/zip/loader/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
