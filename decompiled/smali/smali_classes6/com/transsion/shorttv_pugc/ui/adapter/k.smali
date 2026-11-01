.class public final synthetic Lcom/transsion/shorttv_pugc/ui/adapter/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/transsion/shorttv_pugc/ui/adapter/n;

.field public final synthetic c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic d:Lcom/transsion/shorttv_pugc/bean/AppointSubject;

.field public final synthetic e:I

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(ILcom/transsion/shorttv_pugc/ui/adapter/n;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/AppointSubject;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->a:I

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->b:Lcom/transsion/shorttv_pugc/ui/adapter/n;

    iput-object p3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p4, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->d:Lcom/transsion/shorttv_pugc/bean/AppointSubject;

    iput p5, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->e:I

    iput-boolean p6, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->f:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->a:I

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->b:Lcom/transsion/shorttv_pugc/ui/adapter/n;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->c:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->d:Lcom/transsion/shorttv_pugc/bean/AppointSubject;

    iget v4, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->e:I

    iget-boolean v5, p0, Lcom/transsion/shorttv_pugc/ui/adapter/k;->f:Z

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/transsion/shorttv_pugc/ui/adapter/n;->E1(ILcom/transsion/shorttv_pugc/ui/adapter/n;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/AppointSubject;IZLandroid/view/View;)V

    return-void
.end method
