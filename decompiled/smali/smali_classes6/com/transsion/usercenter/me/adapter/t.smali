.class public final synthetic Lcom/transsion/usercenter/me/adapter/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/bean/MineNovelItem;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/bean/MineNovelItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/t;->a:Lcom/transsion/usercenter/profile/bean/MineNovelItem;

    iput p2, p0, Lcom/transsion/usercenter/me/adapter/t;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/t;->a:Lcom/transsion/usercenter/profile/bean/MineNovelItem;

    iget v1, p0, Lcom/transsion/usercenter/me/adapter/t;->b:I

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/me/adapter/u;->A(Lcom/transsion/usercenter/profile/bean/MineNovelItem;ILandroid/view/View;)V

    return-void
.end method
