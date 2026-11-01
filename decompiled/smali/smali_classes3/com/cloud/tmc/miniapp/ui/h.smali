.class public final synthetic Lcom/cloud/tmc/miniapp/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public synthetic constructor <init>(ILcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cloud/tmc/miniapp/ui/h;->a:I

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/h;->b:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/h;->a:I

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/h;->b:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->m0(ILcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V

    return-void
.end method
