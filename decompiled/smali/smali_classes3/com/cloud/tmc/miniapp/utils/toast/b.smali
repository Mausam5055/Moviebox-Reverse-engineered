.class public final synthetic Lcom/cloud/tmc/miniapp/utils/toast/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/b;->a:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/b;->a:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->b(Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    return-void
.end method
