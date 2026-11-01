.class public final Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Ljs/f;

.field final synthetic b:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;->b:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljs/f;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;->a:Ljs/f;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;->b:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$favoriteResultToast(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljs/f;)V

    :cond_0
    return-void
.end method

.method public final b(Ljs/f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;->a:Ljs/f;

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljs/f;

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;->a(Ljs/f;)V

    return-void
.end method
