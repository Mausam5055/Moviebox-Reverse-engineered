.class public final synthetic Lcom/transsion/member/view/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic a:Lcom/transsion/member/view/MemberLayoutView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/view/MemberLayoutView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/view/v;->a:Lcom/transsion/member/view/MemberLayoutView;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/member/view/v;->a:Lcom/transsion/member/view/MemberLayoutView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/transsion/member/view/MemberLayoutView;->d(Lcom/transsion/member/view/MemberLayoutView;Landroid/view/View;IIII)V

    return-void
.end method
