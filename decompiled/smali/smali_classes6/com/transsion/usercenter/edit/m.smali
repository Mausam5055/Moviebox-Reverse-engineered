.class public final synthetic Lcom/transsion/usercenter/edit/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/edit/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/usercenter/edit/m;->b:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    iput-object p3, p0, Lcom/transsion/usercenter/edit/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/usercenter/edit/m;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/usercenter/edit/m;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/usercenter/edit/m;->b:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    iget-object v2, p0, Lcom/transsion/usercenter/edit/m;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/usercenter/edit/m;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->i0(Ljava/lang/String;Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
