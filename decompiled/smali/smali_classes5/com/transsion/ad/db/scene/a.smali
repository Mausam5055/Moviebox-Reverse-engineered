.class public final synthetic Lcom/transsion/ad/db/scene/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/db/scene/g;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/db/scene/a;->a:Lcom/transsion/ad/db/scene/g;

    iput-object p2, p0, Lcom/transsion/ad/db/scene/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/ad/db/scene/a;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/transsion/ad/db/scene/a;->d:J

    iput-wide p6, p0, Lcom/transsion/ad/db/scene/a;->e:J

    iput p8, p0, Lcom/transsion/ad/db/scene/a;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/transsion/ad/db/scene/a;->a:Lcom/transsion/ad/db/scene/g;

    iget-object v1, p0, Lcom/transsion/ad/db/scene/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/ad/db/scene/a;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/transsion/ad/db/scene/a;->d:J

    iget-wide v5, p0, Lcom/transsion/ad/db/scene/a;->e:J

    iget v7, p0, Lcom/transsion/ad/db/scene/a;->f:I

    move-object v8, p1

    check-cast v8, Lkotlin/coroutines/Continuation;

    invoke-static/range {v0 .. v8}, Lcom/transsion/ad/db/scene/g;->j(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
