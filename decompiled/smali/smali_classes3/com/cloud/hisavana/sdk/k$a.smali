.class public final Lcom/cloud/hisavana/sdk/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/k$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/k$a;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/hisavana/sdk/k;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/k$a;->c()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/k$a;->b(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/k;

    move-result-object p0

    return-object p0
.end method

.method private final c()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/cloud/hisavana/sdk/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/k$a;->d(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/k$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/k$a;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ew3s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/k;->c(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final d(II)Ljava/lang/String;
    .locals 4

    mul-int v0, p1, p2

    const-string v1, "U3N0"

    const/4 v2, 0x1

    if-gt v2, v0, :cond_1

    :goto_0
    rem-int v3, v2, p1

    if-nez v3, :cond_0

    rem-int v3, v2, p2

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    if-eq v2, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private final e()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$string;->abk4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final f()Ljava/lang/String;
    .locals 1

    const-string v0, "Gdef"

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized b(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/k;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/k;->d()Lcom/cloud/hisavana/sdk/k;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/k;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/sdk/k;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/k;->b(Lcom/cloud/hisavana/sdk/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
