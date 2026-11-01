.class public final synthetic Lcom/cloud/tmc/miniapp/defaultimpl/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/b;->a:Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/defaultimpl/b;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/defaultimpl/b;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/cloud/tmc/miniapp/defaultimpl/b;->g:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/b;->a:Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/b;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/defaultimpl/b;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/defaultimpl/b;->g:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;->OooO00o(Lcom/cloud/tmc/miniapp/defaultimpl/DefaultDialogProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;)V

    return-void
.end method
