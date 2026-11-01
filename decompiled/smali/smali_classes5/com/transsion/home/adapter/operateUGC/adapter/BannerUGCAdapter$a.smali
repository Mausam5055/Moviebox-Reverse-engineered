.class public final Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/transsion/home/R$id;->home_ugc_banner_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;->a:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/home/R$id;->home_ugc_banner_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final f()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;->a:Landroid/widget/ImageView;

    return-object v0
.end method
