.class public final synthetic Lcom/transsion/subroom/activity/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/subroom/activity/MainActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subroom/activity/MainActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subroom/activity/k;->a:Lcom/transsion/subroom/activity/MainActivity;

    iput p2, p0, Lcom/transsion/subroom/activity/k;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subroom/activity/k;->a:Lcom/transsion/subroom/activity/MainActivity;

    iget v1, p0, Lcom/transsion/subroom/activity/k;->b:I

    invoke-static {v0, v1, p1}, Lcom/transsion/subroom/activity/MainActivity;->w0(Lcom/transsion/subroom/activity/MainActivity;ILandroid/view/View;)V

    return-void
.end method
