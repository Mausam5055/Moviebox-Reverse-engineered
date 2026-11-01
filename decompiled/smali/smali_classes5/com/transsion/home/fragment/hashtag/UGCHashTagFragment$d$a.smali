.class public final Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/home/fragment/hashtag/HashTagPageFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d;->g(I)Lcom/transsion/home/fragment/hashtag/HashTagPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d$a;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d$a;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 2

    const-string v0, "tabId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/hashtag/model/HashTagTab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/hashtag/model/HashTagTab;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d$a;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->c0(Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d$a;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->g0(Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;Z)V

    iget-object p1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d$a;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lhj/b;->k(Z)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$d$a;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, ""

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    :cond_4
    move-object p2, v0

    :cond_5
    const-string v1, "load_duration"

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_6

    move-object p3, v0

    :cond_6
    const-string p2, "ops"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method
