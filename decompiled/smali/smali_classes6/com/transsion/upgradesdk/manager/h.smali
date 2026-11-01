.class public final Lcom/transsion/upgradesdk/manager/h;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lyv/f;


# direct methods
.method public constructor <init>(Lyv/f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lyv/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Lcom/transsion/upgradesdk/bean/UpgradeStatus;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u7aef\u63a5\u53e3  \u8bf7\u6c42\u6210\u529f - : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpgradeSdkManager"

    invoke-static {v1, v0}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lyv/f;

    iget-object v0, v0, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeStatus;->getCode()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lyv/f;

    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeStatus;->getData()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v2

    :goto_1
    iput-boolean v4, v0, Lyv/f;->c:Z

    iget-object v0, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lyv/f;

    iget-boolean v4, v0, Lyv/f;->c:Z

    const-string v6, "key"

    const-string v7, "application"

    if-eqz v4, :cond_4

    iget-object v0, v0, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u8bf7\u6c42\u670d\u52a1\u7aef\u63a5\u53e3 \u8bf7\u6c42\u6210\u529f- \u6807\u8bb0\u5f53\u524d\u5f3a\u66f4\u5f39\u7a97"

    invoke-static {v1, v0}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lyv/f;

    iput-boolean v5, v0, Lyv/f;->e:Z

    sget-object v0, Lbw/i;->b:Lbw/h;

    sget-object v4, Lxv/a;->a:Landroid/app/Application;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v4, v3

    :goto_2
    invoke-virtual {v0, v4}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v0

    const-string v4, "KV_UPGRADE_IS_FORCE"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mmkv/MMKV;->x(Ljava/lang/String;Z)Z

    :cond_4
    sget-object v0, Lbw/i;->b:Lbw/h;

    sget-object v4, Lxv/a;->a:Landroid/app/Application;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v4, v3

    :goto_3
    invoke-virtual {v0, v4}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v4

    iget-object v8, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lyv/f;

    iget-boolean v8, v8, Lyv/f;->c:Z

    const-string v9, "KV_UPGRADE_LAST_POP"

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v4, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v9, v8}, Lcom/tencent/mmkv/MMKV;->x(Ljava/lang/String;Z)Z

    :cond_6
    iget-object v4, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lyv/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v4, Lyv/f;->k:J

    sget-object v4, Lxv/a;->a:Landroid/app/Application;

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v4, v3

    :goto_4
    invoke-virtual {v0, v4}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v0

    iget-object v4, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lyv/f;

    iget-wide v7, v4, Lyv/f;->k:J

    const-string v4, "KV_UPGRADE_LAST_REQUEST_SERVER"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v4, v7, v8}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;J)Z

    :cond_8
    iget-object v0, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lyv/f;

    iget-boolean v4, v0, Lyv/f;->c:Z

    if-eqz v4, :cond_9

    iget-object v0, v0, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v0}, Lwv/a;->a(Lcom/transsion/upgradesdk/bean/UpgradeData;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v2, v5

    :cond_9
    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeStatus;->getData()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_5

    :cond_a
    move-object v6, v3

    :goto_5
    iget-object p1, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lyv/f;

    iget-object p1, p1, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/16 v11, 0x10

    const/4 v4, 0x2

    const/4 v5, 0x2

    const-string v7, "2"

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Lbw/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u8bf7\u6c42\u670d\u52a1\u7aef\u63a5\u53e3 \u8bf7\u6c42\u6210\u529f- \u662f\u5426\u6709\u65b0\u7248\u672c\uff1a "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lyv/f;

    iget-boolean v0, v0, Lyv/f;->c:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  \u662f\u5426\u5f39\u7a97\uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lyv/f;

    iget-object v0, p1, Lyv/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    if-eqz v0, :cond_e

    new-instance v1, Lcom/transsion/upgradesdk/bean/UpgradeInfo;

    iget-boolean v4, p1, Lyv/f;->c:Z

    iget-boolean v5, p1, Lyv/f;->e:Z

    iget-object p1, p1, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgVersionName()Ljava/lang/String;

    move-result-object v3

    :cond_b
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;-><init>(ZZZLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestSuccess(Lcom/transsion/upgradesdk/bean/UpgradeInfo;)V

    goto :goto_7

    :cond_c
    iget-object p1, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lyv/f;

    iget-object p1, p1, Lyv/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    if-eqz p1, :cond_e

    new-instance v0, Lcom/transsion/upgradesdk/bean/UpgradeInfo;

    invoke-direct {v0, v2, v2, v2, v3}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;-><init>(ZZZLjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestSuccess(Lcom/transsion/upgradesdk/bean/UpgradeInfo;)V

    goto :goto_7

    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/transsion/upgradesdk/manager/h;->a:Lyv/f;

    iget-object p1, p1, Lyv/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    if-eqz p1, :cond_e

    const-string v0, "INTERNET_ERROR"

    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    :cond_e
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
