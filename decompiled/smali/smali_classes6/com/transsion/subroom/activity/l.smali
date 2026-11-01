.class public final synthetic Lcom/transsion/subroom/activity/l;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/subroom/activity/MainActivity;

.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subroom/activity/MainActivity;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subroom/activity/l;->a:Lcom/transsion/subroom/activity/MainActivity;

    iput-object p2, p0, Lcom/transsion/subroom/activity/l;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/subroom/activity/l;->a:Lcom/transsion/subroom/activity/MainActivity;

    iget-object v1, p0, Lcom/transsion/subroom/activity/l;->b:Landroid/widget/ImageView;

    check-cast p1, Lcx/b;

    invoke-static {v0, v1, p1}, Lcom/transsion/subroom/activity/MainActivity;->l0(Lcom/transsion/subroom/activity/MainActivity;Landroid/widget/ImageView;Lcx/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
