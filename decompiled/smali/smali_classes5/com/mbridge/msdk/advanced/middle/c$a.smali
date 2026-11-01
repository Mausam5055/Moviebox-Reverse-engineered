.class Lcom/mbridge/msdk/advanced/middle/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/advanced/middle/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/advanced/middle/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/middle/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/middle/c$a;->a:Lcom/mbridge/msdk/advanced/middle/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/c$a;->a:Lcom/mbridge/msdk/advanced/middle/c;

    invoke-static {v0}, Lcom/mbridge/msdk/advanced/middle/c;->a(Lcom/mbridge/msdk/advanced/middle/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/c$a;->a:Lcom/mbridge/msdk/advanced/middle/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mbridge/msdk/advanced/middle/c;->a(Lcom/mbridge/msdk/advanced/middle/c;Z)Z

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/c$a;->a:Lcom/mbridge/msdk/advanced/middle/c;

    invoke-static {v0}, Lcom/mbridge/msdk/advanced/middle/c;->b(Lcom/mbridge/msdk/advanced/middle/c;)Lcom/mbridge/msdk/advanced/view/MBOutNativeAdvancedViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/c$a;->a:Lcom/mbridge/msdk/advanced/middle/c;

    invoke-static {v0}, Lcom/mbridge/msdk/advanced/middle/c;->b(Lcom/mbridge/msdk/advanced/middle/c;)Lcom/mbridge/msdk/advanced/view/MBOutNativeAdvancedViewGroup;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/advanced/middle/c$a$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/advanced/middle/c$a$a;-><init>(Lcom/mbridge/msdk/advanced/middle/c$a;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/c$a;->a:Lcom/mbridge/msdk/advanced/middle/c;

    invoke-static {v0}, Lcom/mbridge/msdk/advanced/middle/c;->c(Lcom/mbridge/msdk/advanced/middle/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mbridge/msdk/advanced/middle/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
