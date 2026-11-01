.class public final synthetic Lcom/transsion/usercenter/me/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/me/MeFragment;

.field public final synthetic b:Lfw/k0;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/MeFragment;Lfw/k0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/c;->a:Lcom/transsion/usercenter/me/MeFragment;

    iput-object p2, p0, Lcom/transsion/usercenter/me/c;->b:Lfw/k0;

    iput p3, p0, Lcom/transsion/usercenter/me/c;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/usercenter/me/c;->a:Lcom/transsion/usercenter/me/MeFragment;

    iget-object v1, p0, Lcom/transsion/usercenter/me/c;->b:Lfw/k0;

    iget v2, p0, Lcom/transsion/usercenter/me/c;->c:I

    invoke-static {v0, v1, v2}, Lcom/transsion/usercenter/me/MeFragment;->i0(Lcom/transsion/usercenter/me/MeFragment;Lfw/k0;I)V

    return-void
.end method
