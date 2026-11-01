.class public final synthetic Lcom/transsion/home/tv/fragment/a0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

.field public final synthetic b:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/fragment/a0;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    iput-object p2, p0, Lcom/transsion/home/tv/fragment/a0;->b:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/tv/fragment/a0;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    iget-object v1, p0, Lcom/transsion/home/tv/fragment/a0;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->p0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Landroidx/fragment/app/FragmentActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
