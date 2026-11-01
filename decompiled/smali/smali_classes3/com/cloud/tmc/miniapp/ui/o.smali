.class public final synthetic Lcom/cloud/tmc/miniapp/ui/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/o;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/o;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->t0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method
