.class public Lcom/cloud/hisavana/sdk/common/HisavanaFileProvider;
.super Landroidx/core/content/FileProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/content/FileProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "HisavanaFileProvider"

    const-string v2, "onCreate"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/core/content/FileProvider;->onCreate()Z

    move-result v0

    return v0
.end method
