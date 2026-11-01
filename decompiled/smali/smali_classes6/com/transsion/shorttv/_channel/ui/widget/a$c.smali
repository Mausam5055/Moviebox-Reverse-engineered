.class public final Lcom/transsion/shorttv/_channel/ui/widget/a$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/_channel/ui/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Lcom/google/android/material/slider/RangeSlider;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "slider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startLabel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endLabel"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->b:Lcom/google/android/material/slider/RangeSlider;

    iput-object p4, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final f()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public final g()Lcom/google/android/material/slider/RangeSlider;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->b:Lcom/google/android/material/slider/RangeSlider;

    return-object v0
.end method

.method public final h()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public final i()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->a:Landroid/widget/TextView;

    return-object v0
.end method
