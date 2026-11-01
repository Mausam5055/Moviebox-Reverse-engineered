.class Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

.field final synthetic Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

.field final synthetic TKC:Ljava/util/Map;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$1;->EjP:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    iput-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    iput-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$1;->sP:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$1;->TKC:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$1;->EjP:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;)Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;->Sj()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/vS/HiB;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;

    iget-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$1;->EjP:Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;

    iget-object v3, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;

    iget-object v4, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$1;->sP:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$1;->TKC:Ljava/util/Map;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;-><init>(Lcom/bytedance/sdk/component/vS/Sj/vS/TKC;Lcom/bytedance/sdk/component/vS/Sj/vS/EjP;Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$1;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/vS/TKC$Sj;->run()V

    :cond_0
    return-void
.end method
