.class public final Lcom/transsion/usercenter/setting/labelsfeedback/j$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/setting/labelsfeedback/j;


# direct methods
.method public constructor <init>(Lcom/transsion/usercenter/setting/labelsfeedback/j;Lfw/h0;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/j$a;->a:Lcom/transsion/usercenter/setting/labelsfeedback/j;

    invoke-virtual {p2}, Lfw/h0;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    return-void
.end method
