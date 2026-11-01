.class public final Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b;
.super Lj00/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->r0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b;->c:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    invoke-direct {p0}, Lj00/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)Lj00/c;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    aput-object v1, v2, p1

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;I)Lj00/d;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/subtitle/view/SubtitleSearchTabTitleView;

    invoke-direct {v0, p1}, Lcom/transsion/subtitle/view/SubtitleSearchTabTitleView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b;->c:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;->getLanName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/subtitle/view/SubtitleSearchTabTitleView;->setTextWithString(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b$a;

    invoke-direct {p1, v1, p2}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$b$a;-><init>(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
