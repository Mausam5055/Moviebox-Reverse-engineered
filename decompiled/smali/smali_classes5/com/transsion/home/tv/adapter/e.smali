.class public final synthetic Lcom/transsion/home/tv/adapter/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/home/tv/adapter/f;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/tv/adapter/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/adapter/e;->a:Lcom/transsion/home/tv/adapter/f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/adapter/e;->a:Lcom/transsion/home/tv/adapter/f;

    check-cast p1, Lcom/transsion/home/tv/bean/TvChannelItem;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/transsion/home/tv/adapter/f;->S1(Lcom/transsion/home/tv/adapter/f;Lcom/transsion/home/tv/bean/TvChannelItem;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
