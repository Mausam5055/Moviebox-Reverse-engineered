.class public final synthetic Lcom/transsion/rewardscenter/task/ad/j;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/ad/m;

.field public final synthetic b:Lcom/transsion/rewardscenter/task/ad/v$a;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/ad/m;Lcom/transsion/rewardscenter/task/ad/v$a;ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/j;->a:Lcom/transsion/rewardscenter/task/ad/m;

    iput-object p2, p0, Lcom/transsion/rewardscenter/task/ad/j;->b:Lcom/transsion/rewardscenter/task/ad/v$a;

    iput-boolean p3, p0, Lcom/transsion/rewardscenter/task/ad/j;->c:Z

    iput-object p4, p0, Lcom/transsion/rewardscenter/task/ad/j;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/j;->a:Lcom/transsion/rewardscenter/task/ad/m;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/j;->b:Lcom/transsion/rewardscenter/task/ad/v$a;

    iget-boolean v2, p0, Lcom/transsion/rewardscenter/task/ad/j;->c:Z

    iget-object v3, p0, Lcom/transsion/rewardscenter/task/ad/j;->d:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/rewardscenter/task/ad/m;->z(Lcom/transsion/rewardscenter/task/ad/m;Lcom/transsion/rewardscenter/task/ad/v$a;ZLcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
