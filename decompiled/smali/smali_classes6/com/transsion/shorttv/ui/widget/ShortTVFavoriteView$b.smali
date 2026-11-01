.class public final Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$b;
.super Ljava/lang/Object;

# interfaces
.implements Lxr/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 6

    iget-object p4, p0, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;

    invoke-static {p4}, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;->access$getHeaderAdapter$p(Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;)Lcom/transsion/shorttv/ui/adapter/ShortTVHeaderViewAdapter;

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
    iget-object p4, p0, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;

    invoke-static {p4}, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;->access$getHeaderAdapter$p(Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;)Lcom/transsion/shorttv/ui/adapter/ShortTVHeaderViewAdapter;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/shorttv/bean/Subject;

    :goto_1
    move-object v2, p4

    goto :goto_2

    :cond_2
    const/4 p4, 0x0

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_3

    iget-object p4, p0, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;

    invoke-static {p4}, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;->access$getRecReport$p(Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;)Lss/a;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;

    invoke-static {p2}, Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;->access$getItemOptType(Lcom/transsion/shorttv/ui/widget/ShortTVFavoriteView;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "minitv_explore"

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lss/a;->a(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;ILjava/lang/Long;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
