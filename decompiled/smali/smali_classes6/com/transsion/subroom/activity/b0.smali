.class public final synthetic Lcom/transsion/subroom/activity/b0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic b:Lcom/transsion/subroom/activity/NotAvailableActivity;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/subroom/activity/NotAvailableActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subroom/activity/b0;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/transsion/subroom/activity/b0;->b:Lcom/transsion/subroom/activity/NotAvailableActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subroom/activity/b0;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/transsion/subroom/activity/b0;->b:Lcom/transsion/subroom/activity/NotAvailableActivity;

    invoke-static {v0, v1, p1}, Lcom/transsion/subroom/activity/NotAvailableActivity;->f0(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/subroom/activity/NotAvailableActivity;Landroid/view/View;)V

    return-void
.end method
