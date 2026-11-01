.class public final Lcom/transsion/upgradesdk/manager/g;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lyv/f;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lyv/f;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/upgradesdk/manager/g;->a:Lyv/f;

    iput p2, p0, Lcom/transsion/upgradesdk/manager/g;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestCdnConfig \u8bf7\u6c42CDN\u914d\u7f6e\u5b8c\u6210:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpgradeSdkManager"

    invoke-static {v1, v0}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/upgradesdk/manager/g;->a:Lyv/f;

    iget-object v0, p1, Lyv/f;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string p1, "requestCdnConfig \u52a0\u8f7d\u8fc7\u671f\u7f13\u5b58"

    invoke-static {v1, p1}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/upgradesdk/manager/g;->a:Lyv/f;

    iget-object v0, p1, Lyv/f;->m:Ljava/util/List;

    invoke-virtual {p1, v0}, Lyv/f;->c(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_0
    iget-object p1, p1, Lyv/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    if-eqz p1, :cond_6

    const-string v0, "CDN_ERROR"

    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    const/16 v8, 0x74

    const/4 v1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lbw/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    sget-object v0, Lbw/i;->b:Lbw/h;

    sget-object v1, Lxv/a;->a:Landroid/app/Application;

    const/4 v2, 0x0

    const-string v3, "application"

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "key"

    const-string v7, "KV_UPGRADE_CDN_DATA_LAST_REQUEST_TIME"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v7, v4, v5}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;J)Z

    :cond_3
    iget-object v1, p0, Lcom/transsion/upgradesdk/manager/g;->a:Lyv/f;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lyv/f;->l:Z

    iget v5, p0, Lcom/transsion/upgradesdk/manager/g;->b:I

    if-ne v5, v4, :cond_4

    invoke-virtual {v1, p1}, Lyv/f;->c(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    sget-object v1, Lxv/a;->a:Landroid/app/Application;

    if-eqz v1, :cond_5

    move-object v2, v1

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v2}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v0

    sget-object v1, Lbw/f;->a:Lcom/google/gson/Gson;

    const-string v1, "obj"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lbw/f;->a:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toJson(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "KV_UPGRADE_LOCAL_CDN_DATA"

    invoke-virtual {v0, v1, p1}, Lbw/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
