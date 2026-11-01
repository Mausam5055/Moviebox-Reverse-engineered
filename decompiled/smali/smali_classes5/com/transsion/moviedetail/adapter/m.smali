.class public final synthetic Lcom/transsion/moviedetail/adapter/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/adapter/n;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/adapter/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/adapter/m;->a:Lcom/transsion/moviedetail/adapter/n;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/adapter/m;->a:Lcom/transsion/moviedetail/adapter/n;

    check-cast p1, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/adapter/n;->B1(Lcom/transsion/moviedetail/adapter/n;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
