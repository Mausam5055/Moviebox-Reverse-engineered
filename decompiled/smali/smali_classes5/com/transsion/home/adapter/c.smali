.class public final Lcom/transsion/home/adapter/c;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# instance fields
.field private final a:Landroidx/viewpager2/widget/ViewPager2;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;ILjava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/transsion/home/adapter/c;->a:Landroidx/viewpager2/widget/ViewPager2;

    iput p2, p0, Lcom/transsion/home/adapter/c;->b:I

    iput-object p3, p0, Lcom/transsion/home/adapter/c;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic g(Lcom/transsion/home/adapter/c;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/adapter/c;->h(Lcom/transsion/home/adapter/c;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final h(Lcom/transsion/home/adapter/c;)Lkotlin/Unit;
    .locals 1

    iget-object p0, p0, Lcom/transsion/home/adapter/c;->a:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance p1, Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;

    invoke-direct {p1}, Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;

    invoke-direct {p1}, Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;-><init>()V

    new-instance v0, Lcom/transsion/home/adapter/b;

    invoke-direct {v0, p0}, Lcom/transsion/home/adapter/b;-><init>(Lcom/transsion/home/adapter/c;)V

    invoke-virtual {p1, v0}, Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;->m1(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v0, p0, Lcom/transsion/home/adapter/c;->b:I

    iget-object v1, p0, Lcom/transsion/home/adapter/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->b(ILjava/lang/String;)Lcom/transsion/home/fragment/tab/SubTabFragment;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
