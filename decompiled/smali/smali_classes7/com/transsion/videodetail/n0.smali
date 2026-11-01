.class public final synthetic Lcom/transsion/videodetail/n0;
.super Ljava/lang/Object;

# interfaces
.implements Lp6/d;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/VideoDetailAllEpisodesFragment;

.field public final synthetic b:Lcom/transsion/videodetail/adapter/b;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/VideoDetailAllEpisodesFragment;Lcom/transsion/videodetail/adapter/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/n0;->a:Lcom/transsion/videodetail/VideoDetailAllEpisodesFragment;

    iput-object p2, p0, Lcom/transsion/videodetail/n0;->b:Lcom/transsion/videodetail/adapter/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/n0;->a:Lcom/transsion/videodetail/VideoDetailAllEpisodesFragment;

    iget-object v1, p0, Lcom/transsion/videodetail/n0;->b:Lcom/transsion/videodetail/adapter/b;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/videodetail/VideoDetailAllEpisodesFragment;->u0(Lcom/transsion/videodetail/VideoDetailAllEpisodesFragment;Lcom/transsion/videodetail/adapter/b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
