.class public final synthetic Lcom/transsion/ad/db/scene/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/db/scene/g;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/db/scene/d;->a:Lcom/transsion/ad/db/scene/g;

    iput-object p2, p0, Lcom/transsion/ad/db/scene/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/ad/db/scene/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/ad/db/scene/d;->a:Lcom/transsion/ad/db/scene/g;

    iget-object v1, p0, Lcom/transsion/ad/db/scene/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/ad/db/scene/d;->c:Ljava/lang/String;

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/ad/db/scene/g;->g(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
