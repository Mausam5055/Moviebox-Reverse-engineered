.class public final synthetic Lcom/transsion/ad/db/scene/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/db/scene/g;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/db/scene/b;->a:Lcom/transsion/ad/db/scene/g;

    iput-object p2, p0, Lcom/transsion/ad/db/scene/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/ad/db/scene/b;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/transsion/ad/db/scene/b;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsion/ad/db/scene/b;->a:Lcom/transsion/ad/db/scene/g;

    iget-object v1, p0, Lcom/transsion/ad/db/scene/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/ad/db/scene/b;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/transsion/ad/db/scene/b;->d:J

    move-object v5, p1

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static/range {v0 .. v5}, Lcom/transsion/ad/db/scene/g;->i(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
