.class public final Lcom/transsion/transfer/impl/server/service/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/server/service/a;->b(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/server/service/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic e:J

.field final synthetic f:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/server/service/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$LongRef;JLkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/server/service/a$b;->a:Lcom/transsion/transfer/impl/server/service/a;

    iput-object p2, p0, Lcom/transsion/transfer/impl/server/service/a$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/transfer/impl/server/service/a$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/transfer/impl/server/service/a$b;->d:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide p5, p0, Lcom/transsion/transfer/impl/server/service/a$b;->e:J

    iput-object p7, p0, Lcom/transsion/transfer/impl/server/service/a$b;->f:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/transfer/impl/server/service/a$b;->f:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x7d0

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v0, p0, Lcom/transsion/transfer/impl/server/service/a$b;->a:Lcom/transsion/transfer/impl/server/service/a;

    invoke-static {v0}, Lcom/transsion/transfer/impl/server/service/a;->a(Lcom/transsion/transfer/impl/server/service/a;)Lcom/transsion/transfer/impl/i;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/transfer/impl/server/service/a$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/transfer/impl/server/service/a$b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/transfer/impl/server/service/a$b;->d:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v4, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    add-long/2addr p1, v4

    add-long v6, p3, v4

    move-wide v4, p1

    invoke-interface/range {v1 .. v7}, Lcom/transsion/transfer/impl/i;->h(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 9

    sget-object v0, Lcom/transsion/transfer/impl/server/service/a;->c:Lcom/transsion/transfer/impl/server/service/a$a;

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/server/service/a$a;->a()Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transfer file onComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/transfer/impl/server/service/a$b;->a:Lcom/transsion/transfer/impl/server/service/a;

    invoke-static {v0}, Lcom/transsion/transfer/impl/server/service/a;->a(Lcom/transsion/transfer/impl/server/service/a;)Lcom/transsion/transfer/impl/i;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/transfer/impl/server/service/a$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/transfer/impl/server/service/a$b;->c:Ljava/lang/String;

    if-nez p1, :cond_1

    sget-object p1, Lcom/transsion/transfer/impl/TaskState;->FINISH:Lcom/transsion/transfer/impl/TaskState;

    :goto_1
    move-object v4, p1

    goto :goto_2

    :cond_1
    sget-object p1, Lcom/transsion/transfer/impl/TaskState;->ERROR:Lcom/transsion/transfer/impl/TaskState;

    goto :goto_1

    :goto_2
    iget-wide v7, p0, Lcom/transsion/transfer/impl/server/service/a$b;->e:J

    move-wide v5, v7

    invoke-interface/range {v1 .. v8}, Lcom/transsion/transfer/impl/i;->K(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJ)V

    return-void
.end method
