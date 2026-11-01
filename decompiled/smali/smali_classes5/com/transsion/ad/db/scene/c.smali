.class public final synthetic Lcom/transsion/ad/db/scene/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ad/db/scene/g;

.field public final synthetic b:Lcom/transsion/ad/db/scene/AdSceneLimit;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ad/db/scene/g;Lcom/transsion/ad/db/scene/AdSceneLimit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/db/scene/c;->a:Lcom/transsion/ad/db/scene/g;

    iput-object p2, p0, Lcom/transsion/ad/db/scene/c;->b:Lcom/transsion/ad/db/scene/AdSceneLimit;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/db/scene/c;->a:Lcom/transsion/ad/db/scene/g;

    iget-object v1, p0, Lcom/transsion/ad/db/scene/c;->b:Lcom/transsion/ad/db/scene/AdSceneLimit;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lcom/transsion/ad/db/scene/g;->h(Lcom/transsion/ad/db/scene/g;Lcom/transsion/ad/db/scene/AdSceneLimit;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
