.class public final Lcom/cloud/h5update/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/h5update/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;

.field private d:Ljava/util/Map;

.field private e:Lt6/d;

.field private f:Lt6/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/h5update/b$a;->a:Landroid/content/Context;

    new-instance p1, Lcom/cloud/h5update/impl/UpdateParser;

    invoke-direct {p1}, Lcom/cloud/h5update/impl/UpdateParser;-><init>()V

    iput-object p1, p0, Lcom/cloud/h5update/b$a;->e:Lt6/d;

    new-instance p1, Lcom/cloud/h5update/impl/UpdateChecker;

    invoke-direct {p1}, Lcom/cloud/h5update/impl/UpdateChecker;-><init>()V

    iput-object p1, p0, Lcom/cloud/h5update/b$a;->f:Lt6/a;

    return-void
.end method

.method private final a()Lcom/cloud/h5update/b;
    .locals 3

    sget-object v0, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    iget-object v1, p0, Lcom/cloud/h5update/b$a;->a:Landroid/content/Context;

    const-string v2, "[UpdateManager.Builder] : context == null"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/h5update/utils/l;->q(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/cloud/h5update/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/h5update/b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/cloud/h5update/b$a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/cloud/h5update/b;->c(Lcom/cloud/h5update/b;Ljava/lang/ref/WeakReference;)V

    iget-object v1, p0, Lcom/cloud/h5update/b$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cloud/h5update/b;->h(Lcom/cloud/h5update/b;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/h5update/b$a;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/cloud/h5update/b;->d(Lcom/cloud/h5update/b;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/cloud/h5update/b$a;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/cloud/h5update/b;->g(Lcom/cloud/h5update/b;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/cloud/h5update/b$a;->f:Lt6/a;

    invoke-static {v0, v1}, Lcom/cloud/h5update/b;->e(Lcom/cloud/h5update/b;Lt6/a;)V

    iget-object v1, p0, Lcom/cloud/h5update/b$a;->e:Lt6/d;

    invoke-static {v0, v1}, Lcom/cloud/h5update/b;->f(Lcom/cloud/h5update/b;Lt6/d;)V

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/h5update/b$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-object v0, Lcom/cloud/h5update/a;->a:Lcom/cloud/h5update/a;

    invoke-virtual {v0}, Lcom/cloud/h5update/a;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const-string v0, "https://api-test.byte-app.com/common/app-management/consumer-not-login/preloadconfig/query/getResourceByCDN"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/h5update/a;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "https://app-manage-api-static-pre.shalltry.com/common/app-management/consumer-not-login/preloadconfig/query/getResourceByCDN"

    goto :goto_0

    :cond_2
    const-string v0, "https://app-manage-api-static.shalltry.com/common/app-management/consumer-not-login/preloadconfig/query/getResourceByCDN"

    :goto_0
    iput-object v0, p0, Lcom/cloud/h5update/b$a;->b:Ljava/lang/String;

    :cond_3
    invoke-direct {p0}, Lcom/cloud/h5update/b$a;->a()Lcom/cloud/h5update/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/h5update/b;->k()V

    return-void
.end method

.method public final c(Lt6/a;)Lcom/cloud/h5update/b$a;
    .locals 1

    const-string v0, "updateChecker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/h5update/b$a;->f:Lt6/a;

    return-object p0
.end method
