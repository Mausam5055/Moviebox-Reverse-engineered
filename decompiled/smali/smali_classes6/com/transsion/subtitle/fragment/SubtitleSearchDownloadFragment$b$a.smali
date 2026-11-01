.class public final Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b$a;
.super Lcom/transsion/baseui/util/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b;->c(Landroid/content/Context;I)Lj00/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b$a;->e:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    iput p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b$a;->f:I

    invoke-direct {p0}, Lcom/transsion/baseui/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b$a;->e:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lfu/f;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lfu/f;->i:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b$a;->f:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
