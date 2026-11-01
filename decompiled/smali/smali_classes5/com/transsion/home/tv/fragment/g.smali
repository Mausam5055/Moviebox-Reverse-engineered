.class public final synthetic Lcom/transsion/home/tv/fragment/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/fragment/g;->a:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/fragment/g;->a:Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;->m0(Lcom/transsion/home/tv/fragment/TVChannelHomeFragment;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
