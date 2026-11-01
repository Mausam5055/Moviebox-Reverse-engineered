.class public final synthetic Lsr/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/slider/a;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public final synthetic b:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

.field public final synthetic c:Lcom/transsion/shorttv/_channel/model/ShortTvItem;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$b0;Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsr/g;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    iput-object p2, p0, Lsr/g;->b:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    iput-object p3, p0, Lsr/g;->c:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;FZ)V
    .locals 0

    check-cast p1, Lcom/google/android/material/slider/RangeSlider;

    invoke-virtual {p0, p1, p2, p3}, Lsr/g;->b(Lcom/google/android/material/slider/RangeSlider;FZ)V

    return-void
.end method

.method public final b(Lcom/google/android/material/slider/RangeSlider;FZ)V
    .locals 6

    iget-object v0, p0, Lsr/g;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v1, p0, Lsr/g;->b:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    iget-object v2, p0, Lsr/g;->c:Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->h(Landroidx/recyclerview/widget/RecyclerView$b0;Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/google/android/material/slider/RangeSlider;FZ)V

    return-void
.end method
