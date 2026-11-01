.class Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->Sj(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP$1;->sP:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP$1;->Sj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP$1;->Sj:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP$1;->sP:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/Sj/EjP;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/TzV;->Sj(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    return-void
.end method
