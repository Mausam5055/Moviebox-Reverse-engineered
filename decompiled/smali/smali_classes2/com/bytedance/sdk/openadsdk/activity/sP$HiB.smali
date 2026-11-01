.class public Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/sP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HiB"
.end annotation


# instance fields
.field public EjP:Z

.field public HiB:Z

.field public final Sj:Landroid/os/Bundle;

.field public final TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field public final sP:I


# direct methods
.method public constructor <init>(ILcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->Sj:Landroid/os/Bundle;

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->sP:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$HiB;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    return-void
.end method
