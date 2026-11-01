.class public final synthetic Lcom/transsion/rewardscenter/utils/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/utils/e;->a:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/utils/e;->a:Landroid/app/AlertDialog;

    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/utils/f;->a(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
