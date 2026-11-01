.class public final Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/subtitle_download/a;


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

    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/subtitle/VideoSubtitleControl;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->f(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/subtitle/VideoSubtitleControl;)V

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;Leu/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->e(Leu/a;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->g()V

    return-void
.end method

.method public static final synthetic d(Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;Leu/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->h(Leu/a;)V

    return-void
.end method

.method private final e(Leu/a;)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->p(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "1st"

    const-string v6, "2nd"

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/a;

    invoke-virtual {v4}, Leu/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v7

    :cond_1
    invoke-virtual {v4}, Leu/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v7

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    sget-object v0, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> subtitleSelectFromSearch() --> \u4e00\u4e2a\u90fd\u6ca1\u6709 --> \u76f4\u63a5\u6dfb\u52a0\u5230\u7b2c\u4e00\u4e2a"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->q(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "top"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    move v1, v7

    goto/16 :goto_3

    :cond_3
    const-string v0, "bottom"

    if-nez v3, :cond_4

    sget-object v2, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    iget-object v3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> subtitleSelectFromSearch() --> \u6ca1\u6709\u7b2c\u4e8c\u4e2a --> \u76f4\u63a5\u6dfb\u52a0\u5230\u7b2c\u4e8c\u4e2a"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v2}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    :goto_1
    move-object v5, v6

    goto :goto_3

    :cond_4
    const-string v5, ""

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v2}, Lcom/transsion/subtitle/VideoSubtitleControl;->p(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-object v3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/a;

    invoke-virtual {v4}, Leu/a;->f()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Leu/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v4, v1}, Leu/a;->l(Z)V

    invoke-virtual {v4, v5}, Leu/a;->g(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/transsion/subtitle/VideoSubtitleControl;->q(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    iget-object v3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> subtitleSelectFromSearch() --> \u6709\u7b2c\u4e8c\u4e2a --> \u66ff\u6362"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v2}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v7}, Leu/a;->l(Z)V

    invoke-virtual {p1, v5}, Leu/a;->g(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v2}, Lcom/transsion/subtitle/VideoSubtitleControl;->q(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v2}, Lcom/transsion/subtitle/VideoSubtitleControl;->p(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-object v3, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/a;

    invoke-virtual {v4}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4, v7}, Leu/a;->l(Z)V

    invoke-virtual {v4}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setStatus(I)V

    invoke-virtual {p1}, Leu/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Leu/a;->g(Ljava/lang/String;)V

    sget-object v4, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> handleSetImmediately() --> \u53cc\u8bed\u5b57\u5e55\u6a21\u5f0f --> \u5217\u8868\u5b57\u5e55\u4e0b\u8f7d\u5904\u7406 -- \u4e0b\u8f7d\u72b6\u6001\u5904\u7406"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v2, p1, v0, v1}, Lcom/transsion/subtitle/VideoSubtitleControl;->E(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    return-void
.end method

.method private static final f(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/subtitle/VideoSubtitleControl;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isSetImmediately()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->j(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->n(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsion/subtitle/R$string;->subtitle_download_failed:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private final g()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->q(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/a;

    invoke-virtual {v4}, Leu/a;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1st"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Leu/a;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "2nd"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->s(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final h(Leu/a;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->p(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/a;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Leu/a;->l(Z)V

    invoke-virtual {v2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Leu/a;->l(Z)V

    invoke-virtual {v2}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setStatus(I)V

    sget-object v2, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --> handleSetImmediately() --> \u5355\u5b57\u5e55\u6a21\u5f0f --> \u5982\u679c\u662f\u5355\u8bed\u5b57\u5e55\u4ec5\u9700\u8981\u5c06\u4e4b\u524d\u8bbe\u7f6e\u7684\u5168\u90e8\u7f6e\u7a7a \u5f53\u524d\u8bbe\u7f6e\u9009\u4e2d"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->q(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->q(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->u(Lcom/transsion/subtitle/VideoSubtitleControl;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "top"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avery/subtitle/widget/SimpleSubtitleView;

    invoke-static {v0, p1, v1, v3}, Lcom/transsion/subtitle/VideoSubtitleControl;->E(Lcom/transsion/subtitle/VideoSubtitleControl;Leu/a;Lcom/avery/subtitle/widget/SimpleSubtitleView;Z)V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 7

    const-string v0, "stDownloadTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->k(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1$onComplete$1;

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    const/4 v2, 0x0

    invoke-direct {v4, p1, v0, p0, v2}, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1$onComplete$1;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/subtitle/VideoSubtitleControl;Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onDownloading(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    const-string p1, "stDownloadTable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dbBean"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {p1}, Lcom/transsion/subtitle/VideoSubtitleControl;->e(Lcom/transsion/subtitle/VideoSubtitleControl;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    new-instance v1, Lcom/transsion/subtitle/f;

    invoke-direct {v1, p2, v0}, Lcom/transsion/subtitle/f;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lcom/transsion/subtitle/VideoSubtitleControl;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSaveDownload(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 9

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v1}, Lcom/transsion/subtitle/VideoSubtitleControl;->j(Lcom/transsion/subtitle/VideoSubtitleControl;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/transsion/subtitle/a;->a:Lcom/transsion/subtitle/a;

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> -------- onSaveDownload\uff0c\u4e0d\u662f\u5f53\u524d\u89c6\u9891\uff0c\u4e0d\u505a\u5904\u7406"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/a;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-static {v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->k(Lcom/transsion/subtitle/VideoSubtitleControl;)Lkotlinx/coroutines/n0;

    move-result-object v3

    new-instance v6, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1$onSaveDownload$1;

    iget-object v0, p0, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1;->a:Lcom/transsion/subtitle/VideoSubtitleControl;

    invoke-direct {v6, v0, p1, v2}, Lcom/transsion/subtitle/VideoSubtitleControl$downloadListener$1$onSaveDownload$1;-><init>(Lcom/transsion/subtitle/VideoSubtitleControl;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onUnGzZip(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->b(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method
