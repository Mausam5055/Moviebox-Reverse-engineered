.class public final Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lxr/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$c;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 6

    iget-object p4, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$c;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    invoke-static {p4}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->s0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Lcom/transsion/shorttv/_channel/ui/adapter/c;

    move-result-object p4

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_7

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment$c;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;

    if-lt p1, p4, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->s0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Lcom/transsion/shorttv/_channel/ui/adapter/c;

    move-result-object p4

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;

    goto :goto_0

    :cond_1
    move-object p4, v1

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, ""

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    move-object v4, v3

    :cond_3
    const-string v5, "subject_id"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getHasResource()Ljava/lang/Boolean;

    move-result-object v1

    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "has_resource"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sequence"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Lcom/transsion/shorttv/_channel/model/ShortTvMovieItem;->getOps()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move-object v3, p1

    :cond_6
    :goto_1
    const-string p1, "ops"

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "filter_name"

    invoke-static {v0}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->r0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "browse_duration"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    invoke-virtual {v0}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvMovieFragment;->M0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    :goto_2
    return-void
.end method
