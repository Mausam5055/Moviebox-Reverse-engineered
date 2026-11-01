.class public final Ltn/e$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltn/e;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltn/e;

.field final synthetic b:Lcom/transsion/videodetail/api/IStreamDetailService;


# direct methods
.method constructor <init>(Ltn/e;Lcom/transsion/videodetail/api/IStreamDetailService;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Ltn/e$d;->a:Ltn/e;

    iput-object p2, p0, Ltn/e$d;->b:Lcom/transsion/videodetail/api/IStreamDetailService;

    invoke-direct {p0, p3}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Ltn/e$d;->b:Lcom/transsion/videodetail/api/IStreamDetailService;

    iget-object p1, p0, Ltn/e$d;->a:Ltn/e;

    invoke-static {p1}, Ltn/e;->h(Ltn/e;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    iget-object p1, p0, Ltn/e$d;->a:Ltn/e;

    invoke-static {p1}, Ltn/e;->h(Ltn/e;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget-object p1, p0, Ltn/e$d;->a:Ltn/e;

    invoke-static {p1}, Ltn/e;->g(Ltn/e;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Ltn/e$d;->a:Ltn/e;

    invoke-static {p1}, Ltn/e;->j(Ltn/e;)Z

    move-result v5

    iget-object p1, p0, Ltn/e$d;->a:Ltn/e;

    invoke-static {p1}, Ltn/e;->k(Ltn/e;)Z

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/transsion/videodetail/api/IStreamDetailService;->d(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;ZZ)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ltn/e$d;->b:Lcom/transsion/videodetail/api/IStreamDetailService;

    iget-object v1, p0, Ltn/e$d;->a:Ltn/e;

    invoke-static {v1}, Ltn/e;->h(Ltn/e;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Ltn/e$d;->a:Ltn/e;

    invoke-static {v2}, Ltn/e;->h(Ltn/e;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v2, p0, Ltn/e$d;->a:Ltn/e;

    invoke-static {v2}, Ltn/e;->g(Ltn/e;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lcom/transsion/videodetail/api/IStreamDetailService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Ltn/e$d;->a:Ltn/e;

    invoke-static {v0}, Ltn/e;->j(Ltn/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltn/e$d;->a:Ltn/e;

    invoke-static {v0}, Ltn/e;->k(Ltn/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltn/e$d;->a:Ltn/e;

    invoke-static {v0}, Ltn/e;->i(Ltn/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltn/e$d;->a:Ltn/e;

    invoke-static {v0}, Ltn/e;->i(Ltn/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method
