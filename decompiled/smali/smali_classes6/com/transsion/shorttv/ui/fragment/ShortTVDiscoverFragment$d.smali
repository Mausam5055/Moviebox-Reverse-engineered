.class public final Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$d;
.super Ljava/lang/Object;

# interfaces
.implements Lxr/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 8

    iget-object p4, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-virtual {p4}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->S0()Lcom/transsion/shorttv/ui/adapter/h;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-gt p4, p1, :cond_1

    return-void

    :cond_1
    iget-object p4, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-virtual {p4}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->S0()Lcom/transsion/shorttv/ui/adapter/h;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lxs/a;

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    :goto_1
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lxs/a;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p4}, Lxs/a;->b()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object p4, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$d;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-static {p4}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->A0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;)Lss/a;

    move-result-object v2

    invoke-virtual {p4}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->getPageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p4}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->R0()Ljava/lang/String;

    move-result-object v7

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Lss/a;->a(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;ILjava/lang/Long;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
