.class public final synthetic Lcom/transsion/home/adapter/suboperate/provider/i0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i0;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/i0;->b:Landroid/view/View;

    iput p3, p0, Lcom/transsion/home/adapter/suboperate/provider/i0;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i0;->a:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/i0;->b:Landroid/view/View;

    iget v2, p0, Lcom/transsion/home/adapter/suboperate/provider/i0;->c:F

    invoke-static {v0, v1, v2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;F)V

    return-void
.end method
