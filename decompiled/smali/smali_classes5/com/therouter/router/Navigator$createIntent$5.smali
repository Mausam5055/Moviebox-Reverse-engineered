.class final Lcom/therouter/router/Navigator$createIntent$5;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/therouter/router/Navigator;->l(Landroid/content/Context;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/therouter/router/RouteItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "routeItem",
        "Lcom/therouter/router/RouteItem;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $navigationIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/therouter/router/Navigator;


# direct methods
.method constructor <init>(Lcom/therouter/router/Navigator;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/therouter/router/Navigator$createIntent$5;->this$0:Lcom/therouter/router/Navigator;

    iput-object p2, p0, Lcom/therouter/router/Navigator$createIntent$5;->$navigationIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/therouter/router/Navigator$createIntent$5;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/therouter/router/RouteItem;

    invoke-virtual {p0, p1}, Lcom/therouter/router/Navigator$createIntent$5;->invoke(Lcom/therouter/router/RouteItem;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/therouter/router/RouteItem;)V
    .locals 8

    const-string v0, "routeItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/therouter/router/Navigator$createIntent$5;->this$0:Lcom/therouter/router/Navigator;

    invoke-static {v0}, Lcom/therouter/router/Navigator;->e(Lcom/therouter/router/Navigator;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/therouter/router/Navigator$createIntent$5;->$navigationIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/therouter/router/Navigator$createIntent$5;->this$0:Lcom/therouter/router/Navigator;

    invoke-static {v0}, Lcom/therouter/router/Navigator;->d(Lcom/therouter/router/Navigator;)Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/therouter/router/Navigator$createIntent$5;->$navigationIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/therouter/router/Navigator$createIntent$5;->this$0:Lcom/therouter/router/Navigator;

    invoke-static {v0}, Lcom/therouter/router/Navigator;->f(Lcom/therouter/router/Navigator;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/therouter/router/Navigator$createIntent$5;->$navigationIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/therouter/router/Navigator$createIntent$5;->this$0:Lcom/therouter/router/Navigator;

    invoke-static {v1}, Lcom/therouter/router/Navigator;->f(Lcom/therouter/router/Navigator;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/therouter/router/e;->a(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v0, p0, Lcom/therouter/router/Navigator$createIntent$5;->$navigationIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/therouter/router/Navigator$createIntent$5;->$context:Landroid/content/Context;

    const/4 v2, 0x4

    const-string v3, "Navigator::createIntent"

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/therouter/router/Navigator$createIntent$5;->this$0:Lcom/therouter/router/Navigator;

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v5

    const-string v6, "context is null, path is -> "

    if-nez v5, :cond_a

    invoke-virtual {v1}, Lcom/therouter/router/Navigator;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4, v2, v4}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    move-object v5, v4

    :goto_0
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/therouter/router/Navigator$createIntent$5;->$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/therouter/router/Navigator$createIntent$5;->$navigationIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    sget-object v0, Lcom/therouter/f;->a:Lcom/therouter/f;

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/therouter/router/Navigator$createIntent$5$5;

    iget-object v6, p0, Lcom/therouter/router/Navigator$createIntent$5;->this$0:Lcom/therouter/router/Navigator;

    invoke-direct {v5, p1, v6}, Lcom/therouter/router/Navigator$createIntent$5$5;-><init>(Lcom/therouter/router/RouteItem;Lcom/therouter/router/Navigator;)V

    invoke-virtual {v0, v1, v5}, Lcom/therouter/f;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/therouter/router/Navigator$createIntent$5;->$navigationIntent:Landroid/content/Intent;

    const-string v1, "therouter_action"

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/therouter/router/Navigator$createIntent$5;->$navigationIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/therouter/router/Navigator$createIntent$5;->this$0:Lcom/therouter/router/Navigator;

    invoke-virtual {v1}, Lcom/therouter/router/Navigator;->p()Ljava/lang/String;

    move-result-object v1

    const-string v5, "therouter_path"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/therouter/router/Navigator$createIntent$5;->$navigationIntent:Landroid/content/Intent;

    const-string v1, "therouter_description"

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/therouter/router/Navigator$createIntent$5;->$navigationIntent:Landroid/content/Intent;

    const-string v5, "therouter_bundle"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/therouter/router/Navigator$createIntent$5;->$navigationIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "therouter_intent_flags"

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "therouter_intent_animation_in"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "therouter_intent_animation_out"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v0, :cond_6

    if-eqz v5, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/therouter/router/Navigator$createIntent$5;->$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "overridePendingTransition "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4, v2, v4}, Lcom/therouter/TheRouterKt;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/therouter/router/Navigator$createIntent$5;->$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Lcom/therouter/router/RouteItem;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    :goto_1
    return-void

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Navigator::createIntent context is not Activity, ignore animation"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/therouter/router/Navigator;->p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
