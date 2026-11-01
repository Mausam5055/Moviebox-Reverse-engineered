.class public final Lyv/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;


# instance fields
.field public final synthetic a:Lyv/f;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lyv/f;Z)V
    .locals 0

    iput-object p1, p0, Lyv/e;->a:Lyv/f;

    iput-boolean p2, p0, Lyv/e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDialogClick(I)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u81ea\u5b9a\u4e49\u5f39\u7a97\u6309\u94ae\u70b9\u51fb: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    const-string v2, "UpgradeSdkManager"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "msg"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lbw/g;->a:Z

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-wide v5, Lbw/g;->b:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x1388

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    sput-wide v0, Lbw/g;->b:J

    const-string v0, "upgradeSdkLog"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v4, Lbw/g;->a:Z

    :cond_2
    sget-boolean v2, Lbw/g;->a:Z

    :goto_0
    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v0

    iget-boolean v0, v0, Lyv/f;->d:Z

    iget-object v0, p0, Lyv/e;->a:Lyv/f;

    iget-object v0, v0, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    move-result v0

    if-ne v0, v4, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    iget-object v2, p0, Lyv/e;->a:Lyv/f;

    iget-boolean v5, p0, Lyv/e;->b:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p1, v4, :cond_7

    if-eq p1, v1, :cond_6

    if-eq p1, v3, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_4

    const-string p1, "back_exit"

    goto :goto_2

    :cond_4
    const-string p1, "back"

    goto :goto_2

    :cond_5
    const-string p1, "later"

    goto :goto_2

    :cond_6
    const-string p1, "exitapp"

    goto :goto_2

    :cond_7
    iget-object p1, v2, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-eqz p1, :cond_8

    iget-boolean v1, v2, Lyv/f;->c:Z

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getDirectDwl()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getHoverBtn()I

    move-result p1

    sget-object v3, Lcom/transsion/upgradesdk/manager/f;->a:Lcom/transsion/upgradesdk/manager/f;

    invoke-static {v1, v2, p1, v3}, Lbw/n;->c(Ljava/lang/String;IILkotlin/jvm/functions/Function0;)V

    :cond_8
    const-string p1, "update"

    :goto_2
    sget-object v1, Lcom/transsion/upgradesdk/bean/c;->d:Lcom/transsion/upgradesdk/bean/c;

    invoke-static {v0, v5, p1, v1}, Lbw/l;->e(IZLjava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    return-void
.end method

.method public final onDialogDismiss()V
    .locals 8

    const-string v0, "tag"

    const-string v1, "msg"

    const-string v2, "UpgradeSdkManager"

    const-string v3, "\u81ea\u5b9a\u4e49\u5f39\u7a97\u5173\u95ed"

    invoke-static {v2, v0, v3, v1}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    sget-boolean v2, Lbw/g;->a:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-wide v4, Lbw/g;->b:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    sput-wide v0, Lbw/g;->b:J

    const-string v0, "upgradeSdkLog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v3, Lbw/g;->a:Z

    :cond_2
    sget-boolean v2, Lbw/g;->a:Z

    :goto_0
    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v0

    iget-boolean v0, v0, Lyv/f;->d:Z

    iget-object v0, p0, Lyv/e;->a:Lyv/f;

    iget-object v0, v0, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v3, 0x2

    :cond_3
    iget-boolean v0, p0, Lyv/e;->b:Z

    sget-object v1, Lcom/transsion/upgradesdk/bean/c;->d:Lcom/transsion/upgradesdk/bean/c;

    const-string v2, "dismiss"

    invoke-static {v3, v0, v2, v1}, Lbw/l;->e(IZLjava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    return-void
.end method

.method public final onDialogShow()V
    .locals 8

    const-string v0, "tag"

    const-string v1, "msg"

    const-string v2, "UpgradeSdkManager"

    const-string v3, "\u81ea\u5b9a\u4e49\u5f39\u7a97\u663e\u793a"

    invoke-static {v2, v0, v3, v1}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    sget-boolean v2, Lbw/g;->a:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-wide v4, Lbw/g;->b:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    sput-wide v0, Lbw/g;->b:J

    const-string v0, "upgradeSdkLog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v3, Lbw/g;->a:Z

    :cond_2
    sget-boolean v2, Lbw/g;->a:Z

    :goto_0
    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v0

    iget-boolean v0, v0, Lyv/f;->d:Z

    iget-object v0, p0, Lyv/e;->a:Lyv/f;

    iget-object v0, v0, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v3, 0x2

    :cond_3
    iget-boolean v0, p0, Lyv/e;->b:Z

    sget-object v1, Lcom/transsion/upgradesdk/bean/c;->d:Lcom/transsion/upgradesdk/bean/c;

    invoke-static {v3, v0, v1}, Lbw/l;->d(IZLcom/transsion/upgradesdk/bean/c;)V

    return-void
.end method
