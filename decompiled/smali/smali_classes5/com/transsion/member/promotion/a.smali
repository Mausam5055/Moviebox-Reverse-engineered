.class public final synthetic Lcom/transsion/member/promotion/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/member/promotion/MemberPromotionDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/promotion/MemberPromotionDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/promotion/a;->a:Lcom/transsion/member/promotion/MemberPromotionDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/promotion/a;->a:Lcom/transsion/member/promotion/MemberPromotionDialog;

    invoke-static {v0, p1}, Lcom/transsion/member/promotion/MemberPromotionDialog;->o0(Lcom/transsion/member/promotion/MemberPromotionDialog;Landroid/view/View;)V

    return-void
.end method
