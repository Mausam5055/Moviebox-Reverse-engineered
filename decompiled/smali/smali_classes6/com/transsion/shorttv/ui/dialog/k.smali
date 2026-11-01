.class public final synthetic Lcom/transsion/shorttv/ui/dialog/k;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/dialog/k;->a:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/k;->a:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    check-cast p1, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;

    invoke-static {v0, p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->q0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
