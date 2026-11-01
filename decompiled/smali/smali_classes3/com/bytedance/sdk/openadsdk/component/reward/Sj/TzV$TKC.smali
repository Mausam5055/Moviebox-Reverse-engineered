.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/aa/Ym;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TKC"
.end annotation


# instance fields
.field private final Sj:Lcom/bytedance/sdk/component/uA/vS;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;-><init>(Lcom/bytedance/sdk/component/uA/vS;)V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->Zq()V

    return-void
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;->Sj:Lcom/bytedance/sdk/component/uA/vS;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->TzV()V

    return-void
.end method
