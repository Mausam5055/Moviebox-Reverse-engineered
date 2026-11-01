.class public final synthetic Lcom/transsion/member/j0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic a:Lwm/o;

.field public final synthetic b:Lcom/transsion/member/MemberPremiumFragment;


# direct methods
.method public synthetic constructor <init>(Lwm/o;Lcom/transsion/member/MemberPremiumFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/j0;->a:Lwm/o;

    iput-object p2, p0, Lcom/transsion/member/j0;->b:Lcom/transsion/member/MemberPremiumFragment;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/member/j0;->a:Lwm/o;

    iget-object v1, p0, Lcom/transsion/member/j0;->b:Lcom/transsion/member/MemberPremiumFragment;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/transsion/member/MemberPremiumFragment;->j0(Lwm/o;Lcom/transsion/member/MemberPremiumFragment;Landroid/view/View;IIII)V

    return-void
.end method
