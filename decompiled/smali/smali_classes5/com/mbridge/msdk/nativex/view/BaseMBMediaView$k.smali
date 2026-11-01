.class Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;
.super Lcom/mbridge/msdk/widget/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-direct {p0}, Lcom/mbridge/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 4

    const-string v0, "omsdk"

    const-string v1, "BaseMBMediaView"

    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->I(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->Q(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->R(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->R(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->halfLoadingViewisVisible()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->P(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a()V

    goto :goto_4

    :cond_3
    :goto_1
    const-string p1, "is loading or no playing return;"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "fullScreenShowUI"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->S(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->b(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Landroid/content/Context;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Landroid/content/Context;)V

    :goto_2
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_7

    :try_start_1
    iget-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$k;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {p1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    move-result-object p1

    sget-object v2, Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;

    invoke-virtual {p1, v2}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a(Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;)V

    const-string p1, "mnv adUserInteraction click"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    return-void
.end method
