.class public final synthetic Lcom/cloud/tmc/miniapp/utils/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/dialog/Oooo0;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/b;->a:Lcom/cloud/tmc/miniapp/dialog/Oooo0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/b;->a:Lcom/cloud/tmc/miniapp/dialog/Oooo0;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->b(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    return-void
.end method
