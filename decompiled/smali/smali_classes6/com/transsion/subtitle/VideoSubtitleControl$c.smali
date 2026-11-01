.class public final Lcom/transsion/subtitle/VideoSubtitleControl$c;
.super Ljava/lang/Object;

# interfaces
.implements Lhu/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/VideoSubtitleControl;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;FLjava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/VideoSubtitleControl;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/VideoSubtitleControl;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/avery/subtitle/widget/SimpleSubtitleView;
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "bottom"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->x(Lcom/transsion/subtitle/VideoSubtitleControl;Z)V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->A(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->n(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d(Leu/a;J)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->B(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Leu/a;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "top"

    if-eqz v0, :cond_6

    const v2, 0xc652

    if-eq v0, v2, :cond_4

    const v1, 0xc968

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "2nd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "bottom"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2, p3}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    goto :goto_2

    :cond_4
    const-string v0, "1st"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2, p3}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    goto :goto_2

    :cond_6
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2, p3}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->subtitleDelay(J)V

    goto :goto_2

    :cond_8
    :goto_1
    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    iget-object p2, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> onSubtitleDelay() --> \u5f02\u5e38"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public e()Lcom/avery/subtitle/widget/SimpleSubtitleView;
    .locals 2

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "top"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    return-object v0
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->D(Lcom/transsion/subtitle/VideoSubtitleControl;Z)V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->y(Lcom/transsion/subtitle/VideoSubtitleControl;Z)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->w(Lcom/transsion/subtitle/VideoSubtitleControl;)Z

    move-result v0

    return v0
.end method

.method public getSubtitleViewGroup()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->t(Lcom/transsion/subtitle/VideoSubtitleControl;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/transsion/moviedetailapi/bean/DubsInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->f(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public i()Lcom/transsion/subtitle/helper/f;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->l(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/subtitle/helper/f;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->p(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k(Leu/a;Leu/a;ZLeu/a;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0, p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->D(Lcom/transsion/subtitle/VideoSubtitleControl;Z)V

    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onSubtitleSelect() --> isOpenBilingual = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " --> top = "

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " --> bottom = "

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " --> selected = "

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->r(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function3;

    move-result-object p3

    const-string v0, ""

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    move-object v1, v0

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, v3

    :cond_6
    :goto_3
    const/4 v3, 0x1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    move-result v4

    goto :goto_4

    :cond_7
    move v4, v3

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v1, v0, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->s(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function2;

    move-result-object p3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    move-object v0, v2

    :goto_5
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-interface {p3, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "top"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-static {p3, p1, v0, v3}, Lcom/transsion/subtitle/VideoSubtitleControl;->E(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    iget-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "bottom"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    const/4 v1, 0x0

    invoke-static {p3, p2, v0, v1}, Lcom/transsion/subtitle/VideoSubtitleControl;->E(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    iget-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->q(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    if-eqz p1, :cond_a

    iget-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {p3}, Lcom/transsion/subtitle/VideoSubtitleControl;->q(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz p2, :cond_b

    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->q(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {p1, p4}, Lcom/transsion/subtitle/VideoSubtitleControl;->z(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;)V

    return-void
.end method

.method public l()Z
    .locals 4

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "subtitle_options_position"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v1}, Lcom/transsion/subtitle/VideoSubtitleControl;->l(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/subtitle/helper/f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v2}, Lcom/transsion/subtitle/VideoSubtitleControl;->i(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/subtitle/helper/LocalVideoUiType;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v3}, Lcom/transsion/subtitle/VideoSubtitleControl;->t(Lcom/transsion/subtitle/VideoSubtitleControl;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/transsion/subtitle/helper/f;->j(Lcom/transsion/subtitle/helper/LocalVideoUiType;Landroid/view/ViewGroup;I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$c;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->h(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Off"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
