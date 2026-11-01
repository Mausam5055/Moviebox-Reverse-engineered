.class public final Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$d;->a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$d;->a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->f0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFragment, position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$d;->a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->d0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$d;->a:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->h0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;)[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
