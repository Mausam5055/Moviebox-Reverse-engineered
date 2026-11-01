.class public final synthetic Lcom/transsion/player/longvideo/helper/g0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/g0;->a:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/g0;->a:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->e(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
