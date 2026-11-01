.class public final Lcom/wecloud/load/lib/ExitCheckWorker$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wecloud/load/lib/ExitCheckWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/wecloud/load/lib/ExitCheckWorker$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 14

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgz/b;->a:Lgz/b;

    invoke-virtual {v0}, Lgz/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "so_load_control_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->getExitProcess()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "ExitCheckWorker"

    const-string v4, "ExitCheckWorker: \u68c0\u6d4b\u5230 exitProcess \u4e3a true\uff0c\u6e05\u7a7a\u914d\u7f6e\u5e76\u5c1d\u8bd5\u901a\u77e5 SoLoadService \u9000\u51fa"

    const/4 v5, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v2, Lcom/wecloud/load/lib/DySoLoadManager;->a:Lcom/wecloud/load/lib/DySoLoadManager;

    const-string v3, ""

    invoke-virtual {v2, p1, v3}, Lcom/wecloud/load/lib/DySoLoadManager;->i(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/wecloud/load/lib/p;->a:Lcom/wecloud/load/lib/p;

    invoke-virtual {p1}, Lcom/wecloud/load/lib/p;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "ExitCheckWorker"

    const-string v4, "ExitCheckWorker: SoLoadService \u5b58\u6d3b\uff0c\u89e6\u53d1\u9000\u51fa\u68c0\u67e5"

    const/4 v5, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/wecloud/load/lib/p;->c()V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "ExitCheckWorker"

    const-string v4, "ExitCheckWorker: SoLoadService \u5df2\u505c\u6b62\uff0c\u8df3\u8fc7"

    const/4 v5, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v1

    :cond_3
    :goto_0
    sget-object v8, Llg/a;->a:Llg/a$a;

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "ExitCheckWorker"

    const-string v10, "ExitCheckWorker: exitProcess \u4e3a false\uff0c\u8df3\u8fc7"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v1

    :cond_4
    :goto_1
    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "ExitCheckWorker"

    const-string v4, "ExitCheckWorker: MMKV \u4e2d\u65e0\u914d\u7f6e\uff0c\u8df3\u8fc7"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v1
.end method
