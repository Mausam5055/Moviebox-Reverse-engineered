.class public final synthetic Lcom/transsion/member/l0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatTextView;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/l0;->a:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p0, Lcom/transsion/member/l0;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/member/l0;->a:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/transsion/member/l0;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/transsion/member/MemberPremiumFragment;->n0(Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;)V

    return-void
.end method
