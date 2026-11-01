.class Lcom/bytedance/sdk/openadsdk/common/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/Sj;->sP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/common/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/common/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/common/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/common/Sj;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
