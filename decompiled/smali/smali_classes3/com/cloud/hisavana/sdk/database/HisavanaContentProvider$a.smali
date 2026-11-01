.class public final Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;
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

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e()Landroid/content/UriMatcher;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".HisavanaContentProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->b(Landroid/content/UriMatcher;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e()Landroid/content/UriMatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "config"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e()Landroid/content/UriMatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_data"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->e()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/abtestkit/db/ABContentProvider;->initUriMatcher(Landroid/content/UriMatcher;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
