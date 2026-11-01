.class public final synthetic Lcom/transsion/member/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/member/view/CheckInView;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/member/view/CheckInView$b;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/view/CheckInView;ILcom/transsion/member/view/CheckInView$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/view/b;->a:Lcom/transsion/member/view/CheckInView;

    iput p2, p0, Lcom/transsion/member/view/b;->b:I

    iput-object p3, p0, Lcom/transsion/member/view/b;->c:Lcom/transsion/member/view/CheckInView$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/member/view/b;->a:Lcom/transsion/member/view/CheckInView;

    iget v1, p0, Lcom/transsion/member/view/b;->b:I

    iget-object v2, p0, Lcom/transsion/member/view/b;->c:Lcom/transsion/member/view/CheckInView$b;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/member/view/CheckInView$a;->g(Lcom/transsion/member/view/CheckInView;ILcom/transsion/member/view/CheckInView$b;Landroid/view/View;)V

    return-void
.end method
