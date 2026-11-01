.class public final Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$register$1$1;
.super Lky/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->l(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lky/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public N0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "callBackName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "onProgress"

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :sswitch_1
    const-string v0, "removeTask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$register$1$1$callBackCommon$info$1;

    invoke-direct {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$register$1$1$callBackCommon$info$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;

    invoke-virtual {v0}, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    const-string v0, "onAction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :sswitch_3
    const-string v0, "addTask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    new-instance v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$register$1$1$callBackCommon$1;

    invoke-direct {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$register$1$1$callBackCommon$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, ""

    :goto_1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->b()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    return-void

    :cond_4
    sget-object v1, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->e(J)V

    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/commercialization/pslink/b;

    move-object v4, v2

    check-cast v4, Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;

    invoke-interface {v3, p1, p2, v4, v0}, Lcom/transsion/commercialization/pslink/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4476163a -> :sswitch_3
        0x3a2454f5 -> :sswitch_2
        0x417ac029 -> :sswitch_1
        0x696ee52c -> :sswitch_0
    .end sparse-switch
.end method
