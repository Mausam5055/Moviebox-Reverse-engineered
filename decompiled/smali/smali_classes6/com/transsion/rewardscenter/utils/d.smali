.class public final synthetic Lcom/transsion/rewardscenter/utils/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/AlertDialog;

.field public final synthetic b:Lwp/a;

.field public final synthetic c:Lcom/transsion/rewardscenterapi/TopUpType;

.field public final synthetic d:Lcom/transsion/rewardscenterapi/SkuPoint;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Lwp/a;Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/utils/d;->a:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/transsion/rewardscenter/utils/d;->b:Lwp/a;

    iput-object p3, p0, Lcom/transsion/rewardscenter/utils/d;->c:Lcom/transsion/rewardscenterapi/TopUpType;

    iput-object p4, p0, Lcom/transsion/rewardscenter/utils/d;->d:Lcom/transsion/rewardscenterapi/SkuPoint;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/rewardscenter/utils/d;->a:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/transsion/rewardscenter/utils/d;->b:Lwp/a;

    iget-object v2, p0, Lcom/transsion/rewardscenter/utils/d;->c:Lcom/transsion/rewardscenterapi/TopUpType;

    iget-object v3, p0, Lcom/transsion/rewardscenter/utils/d;->d:Lcom/transsion/rewardscenterapi/SkuPoint;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/rewardscenter/utils/f;->b(Landroid/app/AlertDialog;Lwp/a;Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;Landroid/view/View;)V

    return-void
.end method
