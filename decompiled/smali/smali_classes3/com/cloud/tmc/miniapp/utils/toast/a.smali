.class public final synthetic Lcom/cloud/tmc/miniapp/utils/toast/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/a;->a:Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/toast/a;->b:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/a;->a:Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/a;->b:Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;->c(Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;Lcom/cloud/tmc/miniapp/utils/toast/ToastDialog;)V

    return-void
.end method
