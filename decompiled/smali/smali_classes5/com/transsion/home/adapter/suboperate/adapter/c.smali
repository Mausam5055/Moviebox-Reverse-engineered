.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/adapter/e;

.field public final synthetic c:Lcom/transsion/home/bean/AppointSubject;

.field public final synthetic d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(ILcom/transsion/home/adapter/suboperate/adapter/e;Lcom/transsion/home/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/c;->a:I

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/c;->b:Lcom/transsion/home/adapter/suboperate/adapter/e;

    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/c;->c:Lcom/transsion/home/bean/AppointSubject;

    iput-object p4, p0, Lcom/transsion/home/adapter/suboperate/adapter/c;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput p5, p0, Lcom/transsion/home/adapter/suboperate/adapter/c;->e:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/c;->a:I

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/c;->b:Lcom/transsion/home/adapter/suboperate/adapter/e;

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/c;->c:Lcom/transsion/home/bean/AppointSubject;

    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/c;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget v4, p0, Lcom/transsion/home/adapter/suboperate/adapter/c;->e:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/home/adapter/suboperate/adapter/e;->D1(ILcom/transsion/home/adapter/suboperate/adapter/e;Lcom/transsion/home/bean/AppointSubject;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILandroid/view/View;)V

    return-void
.end method
