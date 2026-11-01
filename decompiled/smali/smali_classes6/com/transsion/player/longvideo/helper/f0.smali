.class public final synthetic Lcom/transsion/player/longvideo/helper/f0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/f0;->a:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/f0;->a:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->j(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Landroid/view/View;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
