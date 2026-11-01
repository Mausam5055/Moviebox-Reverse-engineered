.class public final synthetic Lcom/transsion/edcation/dialog/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/transsion/edcation/dialog/InterestSelectDialog;

.field public final synthetic c:Lcom/transsion/edcation/bean/InterestBean;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/transsion/edcation/dialog/InterestSelectDialog;Lcom/transsion/edcation/bean/InterestBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/edcation/dialog/e;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/edcation/dialog/e;->b:Lcom/transsion/edcation/dialog/InterestSelectDialog;

    iput-object p3, p0, Lcom/transsion/edcation/dialog/e;->c:Lcom/transsion/edcation/bean/InterestBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/edcation/dialog/e;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/edcation/dialog/e;->b:Lcom/transsion/edcation/dialog/InterestSelectDialog;

    iget-object v2, p0, Lcom/transsion/edcation/dialog/e;->c:Lcom/transsion/edcation/bean/InterestBean;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/edcation/dialog/InterestSelectDialog;->m0(Landroid/view/View;Lcom/transsion/edcation/dialog/InterestSelectDialog;Lcom/transsion/edcation/bean/InterestBean;Landroid/view/View;)V

    return-void
.end method
