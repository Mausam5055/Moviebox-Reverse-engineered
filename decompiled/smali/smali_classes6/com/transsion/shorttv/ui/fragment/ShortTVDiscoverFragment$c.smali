.class public final Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$c;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->I0()V
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

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p3, :cond_0

    iget-object p2, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-static {p2, p1}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->x0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method
