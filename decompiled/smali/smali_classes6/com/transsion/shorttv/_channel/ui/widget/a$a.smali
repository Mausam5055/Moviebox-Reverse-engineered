.class public final Lcom/transsion/shorttv/_channel/ui/widget/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/_channel/ui/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Lcom/google/android/flexbox/FlexboxLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;Lcom/google/android/flexbox/FlexboxLayout;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flexbox"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$a;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$a;->b:Lcom/google/android/flexbox/FlexboxLayout;

    return-void
.end method


# virtual methods
.method public final f()Lcom/google/android/flexbox/FlexboxLayout;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$a;->b:Lcom/google/android/flexbox/FlexboxLayout;

    return-object v0
.end method

.method public final g()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$a;->a:Landroid/widget/TextView;

    return-object v0
.end method
