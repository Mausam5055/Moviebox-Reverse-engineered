.class public final synthetic Lcom/transsion/home/tv/adapter/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/home/tv/bean/TvChannelItem;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/home/tv/adapter/f;->U1(Lcom/transsion/home/tv/bean/TvChannelItem;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
