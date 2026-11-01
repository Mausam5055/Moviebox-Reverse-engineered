.class public final Lgx/a$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgx/a$a;->onRequestSuccess(Lcom/transsion/upgradesdk/bean/UpgradeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgx/a$a$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lgx/a$a$a;->b:Z

    iput-object p3, p0, Lgx/a$a$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClick(I)V
    .locals 9

    const/4 v0, 0x0

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ps_dialog \u70b9\u51fbps\u5f39\u7a97 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "update"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v1, "ps"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    sget-object p1, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    iget-object v3, p0, Lgx/a$a$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v3, v2, v1}, Lcom/transsion/version/update/e;->a(Ljava/lang/String;ZLjava/lang/String;)V

    const-string v3, "action"

    const-string v4, "jump"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const-string v4, "action_result"

    const-string v5, "true"

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const-string v5, "dialog_type"

    invoke-static {v5, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const-string v5, "type"

    const-string v6, "store"

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    iget-boolean v6, p0, Lgx/a$a$a;->b:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, "manual"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const-string v7, "page_from"

    iget-object v8, p0, Lgx/a$a$a;->a:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Lkotlin/Pair;

    aput-object v3, v8, v0

    aput-object v4, v8, v2

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v6, v8, v0

    const/4 v0, 0x5

    aput-object v7, v8, v0

    invoke-static {v8}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/version/update/e;->b(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    iget-object v2, p0, Lgx/a$a$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/version/update/e;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDialogDismiss()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "update"

    const-string v2, "ps\u5f39\u7a97\u6d88\u5931 onDialogDismiss"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public onDialogShow()V
    .locals 8

    sget-object v0, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    iget-object v1, p0, Lgx/a$a$a;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lgx/a$a$a;->b:Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v3, "ps"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/transsion/version/update/e;->d(Lcom/transsion/version/update/e;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-boolean v0, p0, Lgx/a$a$a;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    invoke-virtual {v0}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    move-result-object v0

    iget-object v1, p0, Lgx/a$a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/version/update/UpdateManager;->h(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "update"

    const-string v4, "ps\u5f39\u7a97\u5c55\u793a onDialogShow"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
