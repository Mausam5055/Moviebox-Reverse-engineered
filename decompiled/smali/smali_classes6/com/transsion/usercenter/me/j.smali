.class public final synthetic Lcom/transsion/usercenter/me/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/me/MeFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/MeFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/j;->a:Lcom/transsion/usercenter/me/MeFragment;

    iput p2, p0, Lcom/transsion/usercenter/me/j;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/me/j;->a:Lcom/transsion/usercenter/me/MeFragment;

    iget v1, p0, Lcom/transsion/usercenter/me/j;->b:I

    invoke-static {v0, v1}, Lcom/transsion/usercenter/me/MeFragment;->l0(Lcom/transsion/usercenter/me/MeFragment;I)V

    return-void
.end method
