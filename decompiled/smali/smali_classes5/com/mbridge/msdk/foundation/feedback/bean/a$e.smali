.class Lcom/mbridge/msdk/foundation/feedback/bean/a$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/feedback/bean/a;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/feedback/bean/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/feedback/bean/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$e;->a:Lcom/mbridge/msdk/foundation/feedback/bean/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$e;->a:Lcom/mbridge/msdk/foundation/feedback/bean/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->e(Lcom/mbridge/msdk/foundation/feedback/bean/a;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$e;->a:Lcom/mbridge/msdk/foundation/feedback/bean/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->e(Lcom/mbridge/msdk/foundation/feedback/bean/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/bean/a$e;->a:Lcom/mbridge/msdk/foundation/feedback/bean/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->e(Lcom/mbridge/msdk/foundation/feedback/bean/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
