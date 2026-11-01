.class public final synthetic Lcom/transsion/subroom/activity/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/subroom/activity/MainActivity;

.field public final synthetic b:I

.field public final synthetic c:Lcom/transsion/home/bean/BottomTabItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subroom/activity/MainActivity;ILcom/transsion/home/bean/BottomTabItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subroom/activity/n;->a:Lcom/transsion/subroom/activity/MainActivity;

    iput p2, p0, Lcom/transsion/subroom/activity/n;->b:I

    iput-object p3, p0, Lcom/transsion/subroom/activity/n;->c:Lcom/transsion/home/bean/BottomTabItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/subroom/activity/n;->a:Lcom/transsion/subroom/activity/MainActivity;

    iget v1, p0, Lcom/transsion/subroom/activity/n;->b:I

    iget-object v2, p0, Lcom/transsion/subroom/activity/n;->c:Lcom/transsion/home/bean/BottomTabItem;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/subroom/activity/MainActivity;->j0(Lcom/transsion/subroom/activity/MainActivity;ILcom/transsion/home/bean/BottomTabItem;Landroid/view/View;)V

    return-void
.end method
