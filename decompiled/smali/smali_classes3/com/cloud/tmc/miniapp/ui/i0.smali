.class public final synthetic Lcom/cloud/tmc/miniapp/ui/i0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/i0;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/i0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/i0;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/cloud/tmc/miniapp/ui/i0;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/i0;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/i0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/i0;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/ui/i0;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity$checkAndShowAddHomeCustomToast$1;->b(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
