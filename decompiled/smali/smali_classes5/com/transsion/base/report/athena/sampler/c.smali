.class public final Lcom/transsion/base/report/athena/sampler/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/base/report/athena/sampler/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/base/report/athena/sampler/c;

    invoke-direct {v0}, Lcom/transsion/base/report/athena/sampler/c;-><init>()V

    sput-object v0, Lcom/transsion/base/report/athena/sampler/c;->a:Lcom/transsion/base/report/athena/sampler/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "event"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bundle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "deviceId"

    move-object/from16 v6, p3

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReportInterception --> intercept() --> \u5f00\u59cb\u5904\u7406\u57cb\u70b9\u62e6\u622a\u903b\u8f91 --> event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "sampler"

    const/4 v10, 0x0

    move-object v7, v2

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v3, Lcom/transsion/base/report/athena/sampler/a;->a:Lcom/transsion/base/report/athena/sampler/a;

    move-object/from16 v13, p0

    invoke-virtual {v13, v1}, Lcom/transsion/base/report/athena/sampler/c;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/transsion/base/report/athena/sampler/a;->a(Ljava/lang/String;Landroid/os/Bundle;)Lkotlin/Triple;

    move-result-object v14

    invoke-virtual {v14}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v15, 0x0

    if-eqz v3, :cond_5

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "sampler"

    const-string v9, "ReportInterception --> intercept() --> \u4e8b\u4ef6\u8868\u8fbe\u5f0f \u547d\u4e2d --> \u4e0b\u4e00\u6b65\u91c7\u6837\u7387\u5224\u65ad"

    const/4 v10, 0x0

    move-object v7, v2

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v3, Lcom/transsion/base/report/athena/sampler/b;->a:Lcom/transsion/base/report/athena/sampler/b;

    invoke-virtual {v14}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    :goto_0
    invoke-virtual {v14}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_1

    const-string v7, ""

    :cond_1
    const/16 v8, 0x64

    move-object/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/base/report/athena/sampler/b;->a(DLjava/lang/String;Ljava/lang/String;I)Z

    move-result v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReportInterception --> intercept() --> \u91c7\u6837\u7387\u547d\u4e2d = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "sampler"

    const/4 v6, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v9, :cond_2

    invoke-virtual {v14}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sampling_rate"

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/base/report/athena/sampler/EventConfig;->a:Lcom/transsion/base/report/athena/sampler/EventConfig;

    invoke-virtual {v3, v0}, Lcom/transsion/base/report/athena/sampler/EventConfig;->i(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/transsion/base/report/athena/sampler/EventConfig;->h(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v14}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Double;D)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/transsion/base/report/athena/sampler/EventConfig;->a:Lcom/transsion/base/report/athena/sampler/EventConfig;

    invoke-virtual {v3, v0}, Lcom/transsion/base/report/athena/sampler/EventConfig;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/transsion/base/report/athena/sampler/EventConfig;->a:Lcom/transsion/base/report/athena/sampler/EventConfig;

    invoke-virtual {v3, v0}, Lcom/transsion/base/report/athena/sampler/EventConfig;->b(Ljava/lang/String;)V

    :goto_2
    if-nez v9, :cond_6

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReportInterception --> intercept() --> \u4e8b\u4ef6\u8868\u8fbe\u5f0f \u6ca1\u6709\u547d\u4e2d --> \u4e0d\u9700\u8981\u5904\u7406\u91c7\u6837\u7387 --> \u76f4\u63a5\u4e0a\u62a5\u57cb\u70b9 --> event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "sampler"

    const/4 v6, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_6
    :goto_3
    if-eqz v15, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u57cb\u70b9\u62d2\u7edd\u4e0a\u62a5 --> event = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "sampler"

    const/4 v6, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/transsion/base/report/athena/sampler/EventConfig;->a:Lcom/transsion/base/report/athena/sampler/EventConfig;

    invoke-virtual {v0}, Lcom/transsion/base/report/athena/sampler/EventConfig;->c()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "close_event"

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/base/report/athena/sampler/EventConfig;->d()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "miss_event"

    invoke-virtual {v1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track: \u65e5\u5fd7\u4e0a\u62a5 --> bundle = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "sampler"

    const/4 v6, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_4
    return v15
.end method
