.class public final synthetic Lcom/tn/tranpay/adapter/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/tn/tranpay/adapter/b;

.field public final synthetic b:Lcom/tn/tranpay/bean/MediumInputBean;

.field public final synthetic c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/tn/tranpay/adapter/b;Lcom/tn/tranpay/bean/MediumInputBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/tranpay/adapter/a;->a:Lcom/tn/tranpay/adapter/b;

    iput-object p2, p0, Lcom/tn/tranpay/adapter/a;->b:Lcom/tn/tranpay/bean/MediumInputBean;

    iput-object p3, p0, Lcom/tn/tranpay/adapter/a;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tn/tranpay/adapter/a;->a:Lcom/tn/tranpay/adapter/b;

    iget-object v1, p0, Lcom/tn/tranpay/adapter/a;->b:Lcom/tn/tranpay/bean/MediumInputBean;

    iget-object v2, p0, Lcom/tn/tranpay/adapter/a;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-static {v0, v1, v2, p1}, Lcom/tn/tranpay/adapter/b;->B1(Lcom/tn/tranpay/adapter/b;Lcom/tn/tranpay/bean/MediumInputBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method
