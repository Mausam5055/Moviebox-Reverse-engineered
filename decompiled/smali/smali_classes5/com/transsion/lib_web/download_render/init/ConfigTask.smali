.class public final Lcom/transsion/lib_web/download_render/init/ConfigTask;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/lib_web/download_render/init/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/lib_web/download_render/init/ConfigTask$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/lib_web/download_render/init/ConfigTask$a;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

.field private static final f:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

.field private static final g:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/transsion/lib_web/download_render/init/ConfigTask$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/lib_web/download_render/init/ConfigTask$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/lib_web/download_render/init/ConfigTask;->a:Lcom/transsion/lib_web/download_render/init/ConfigTask$a;

    const-string v0, "(event ==\'files_download\')"

    sput-object v0, Lcom/transsion/lib_web/download_render/init/ConfigTask;->b:Ljava/lang/String;

    const-string v1, "(event ==\'render\')"

    sput-object v1, Lcom/transsion/lib_web/download_render/init/ConfigTask;->c:Ljava/lang/String;

    const-string v2, "(event ==\'pages_download\')"

    sput-object v2, Lcom/transsion/lib_web/download_render/init/ConfigTask;->d:Ljava/lang/String;

    new-instance v3, Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "pre_download"

    invoke-direct {v3, v0, v5, v4}, Lcom/transsion/base/report/athena/sampler/EventStrategyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v3, Lcom/transsion/lib_web/download_render/init/ConfigTask;->e:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    new-instance v0, Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    invoke-direct {v0, v1, v5, v4}, Lcom/transsion/base/report/athena/sampler/EventStrategyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/transsion/lib_web/download_render/init/ConfigTask;->f:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    new-instance v0, Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    invoke-direct {v0, v2, v5, v4}, Lcom/transsion/base/report/athena/sampler/EventStrategyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/transsion/lib_web/download_render/init/ConfigTask;->g:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()V
    .locals 11

    const-string v0, "DR_Config"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v2, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v2}, Lsm/f$a;->a()Lsm/f;

    move-result-object v2

    const-string v3, "point_config"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_3

    :cond_0
    :goto_0
    const-string v2, ""

    :cond_1
    sget-object v3, Lgm/i;->a:Lgm/i;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remote point config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Lcom/transsion/lib_web/download_render/init/ConfigTask;->e:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/transsion/lib_web/download_render/init/ConfigTask;->f:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/transsion/lib_web/download_render/init/ConfigTask;->g:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2
    new-instance v3, Lcom/transsion/lib_web/download_render/init/ConfigTask$invoke$type$1;

    invoke-direct {v3}, Lcom/transsion/lib_web/download_render/init/ConfigTask$invoke$type$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v4

    move v5, v3

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    invoke-virtual {v6}, Lcom/transsion/base/report/athena/sampler/EventStrategyBean;->getEventExpr()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/lib_web/download_render/init/ConfigTask;->b:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    move v4, v8

    :cond_4
    invoke-virtual {v6}, Lcom/transsion/base/report/athena/sampler/EventStrategyBean;->getEventExpr()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/transsion/lib_web/download_render/init/ConfigTask;->c:Ljava/lang/String;

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v3, v8

    :cond_5
    invoke-virtual {v6}, Lcom/transsion/base/report/athena/sampler/EventStrategyBean;->getEventExpr()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/transsion/lib_web/download_render/init/ConfigTask;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v5, v8

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    sget-object v1, Lcom/transsion/lib_web/download_render/init/ConfigTask;->e:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v3, :cond_8

    sget-object v1, Lcom/transsion/lib_web/download_render/init/ConfigTask;->f:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v5, :cond_9

    sget-object v1, Lcom/transsion/lib_web/download_render/init/ConfigTask;->g:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_9
    move-object v1, v2

    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lgm/i;->a:Lgm/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "point config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/base/report/athena/sampler/EventConfig;->a:Lcom/transsion/base/report/athena/sampler/EventConfig;

    invoke-virtual {v3, v2}, Lcom/transsion/base/report/athena/sampler/EventConfig;->j(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v3, Lcom/transsion/lib_web/download_render/init/ConfigTask;->e:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/transsion/lib_web/download_render/init/ConfigTask;->f:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/transsion/lib_web/download_render/init/ConfigTask;->g:Lcom/transsion/base/report/athena/sampler/EventStrategyBean;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lgm/i;->a:Lgm/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", point config: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lgm/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/base/report/athena/sampler/EventConfig;->a:Lcom/transsion/base/report/athena/sampler/EventConfig;

    invoke-virtual {v0, v1}, Lcom/transsion/base/report/athena/sampler/EventConfig;->j(Ljava/lang/String;)V

    :goto_4
    return-void
.end method
