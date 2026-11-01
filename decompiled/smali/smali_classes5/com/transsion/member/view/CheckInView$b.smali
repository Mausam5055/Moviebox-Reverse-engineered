.class public final Lcom/transsion/member/view/CheckInView$b;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/view/CheckInView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcom/transsion/member/view/CheckInView;


# direct methods
.method public constructor <init>(Lcom/transsion/member/view/CheckInView;Landroid/view/View;I)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/member/view/CheckInView$b;->b:Lcom/transsion/member/view/CheckInView;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    iput p3, p0, Lcom/transsion/member/view/CheckInView$b;->a:I

    return-void
.end method


# virtual methods
.method public final f()I
    .locals 1

    iget v0, p0, Lcom/transsion/member/view/CheckInView$b;->a:I

    return v0
.end method
