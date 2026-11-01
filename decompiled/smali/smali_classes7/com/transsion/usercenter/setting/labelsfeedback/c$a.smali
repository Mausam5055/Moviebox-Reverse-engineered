.class public final Lcom/transsion/usercenter/setting/labelsfeedback/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final b:Landroidx/appcompat/widget/AppCompatTextView;

.field private final c:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field final synthetic f:Lcom/transsion/usercenter/setting/labelsfeedback/c;


# direct methods
.method public constructor <init>(Lcom/transsion/usercenter/setting/labelsfeedback/c;Lfw/f0;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->f:Lcom/transsion/usercenter/setting/labelsfeedback/c;

    invoke-virtual {p2}, Lfw/f0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Lfw/f0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v0, "getRoot(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object p1, p2, Lfw/f0;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->b:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p1, p2, Lfw/f0;->d:Landroidx/appcompat/widget/AppCompatCheckBox;

    const-string v0, "radioButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->c:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-object p1, p2, Lfw/f0;->b:Landroid/view/View;

    const-string v0, "bgView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->d:Landroid/view/View;

    iget-object p1, p2, Lfw/f0;->c:Landroid/view/View;

    const-string p2, "divider"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->d:Landroid/view/View;

    return-object v0
.end method

.method public final g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->e:Landroid/view/View;

    return-object v0
.end method

.method public final h()Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->c:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-object v0
.end method

.method public final i()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/c$a;->b:Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method
