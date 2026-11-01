.class Lcom/bytedance/sdk/component/adexpress/vS/wE$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/vS/wE;->Sj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/vS/wE;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/wE$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/vS/wE$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/wE;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/vS/wE;->Sj(Lcom/bytedance/sdk/component/adexpress/vS/wE;)Lcom/bytedance/adsdk/sP/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS;->Sj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
