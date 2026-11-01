.class public final synthetic Lcom/transsion/shorttv_pugc/ui/fragment/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVFavoriteFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVFavoriteFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/p;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVFavoriteFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/fragment/p;->a:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVFavoriteFragment;

    check-cast p1, Lcom/transsion/shorttv_pugc/bean/ShortTVRespData;

    invoke-static {v0, p1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVFavoriteFragment;->I0(Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVFavoriteFragment;Lcom/transsion/shorttv_pugc/bean/ShortTVRespData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
