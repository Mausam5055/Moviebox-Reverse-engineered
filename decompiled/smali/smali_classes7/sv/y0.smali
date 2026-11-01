.class public final synthetic Lsv/y0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$m;

.field public final synthetic b:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$m;Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsv/y0;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    iput-object p2, p0, Lsv/y0;->b:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;

    iput-boolean p3, p0, Lsv/y0;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lsv/y0;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    iget-object v1, p0, Lsv/y0;->b:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;

    iget-boolean v2, p0, Lsv/y0;->c:Z

    invoke-static {v0, v1, v2}, Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;->t(Landroidx/recyclerview/widget/RecyclerView$m;Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;Z)V

    return-void
.end method
