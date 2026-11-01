.class public final synthetic Lcom/cloud/tmc/miniapp/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/f;->a:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/f;->a:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->W(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    return-void
.end method
