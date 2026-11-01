.class public final synthetic Lcom/cloud/tmc/miniapp/ui/t0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/t0;->a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    iput p2, p0, Lcom/cloud/tmc/miniapp/ui/t0;->b:I

    iput p3, p0, Lcom/cloud/tmc/miniapp/ui/t0;->c:I

    iput-wide p4, p0, Lcom/cloud/tmc/miniapp/ui/t0;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/t0;->a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    iget v1, p0, Lcom/cloud/tmc/miniapp/ui/t0;->b:I

    iget v2, p0, Lcom/cloud/tmc/miniapp/ui/t0;->c:I

    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/ui/t0;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->d0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;IIJ)V

    return-void
.end method
