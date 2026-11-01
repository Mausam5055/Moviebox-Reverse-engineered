.class public final synthetic Lcom/transsion/videofloat/manager/x;
.super Ljava/lang/Object;

# interfaces
.implements Lze/a;


# instance fields
.field public final synthetic a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videofloat/manager/x;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    iput-object p2, p0, Lcom/transsion/videofloat/manager/x;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/videofloat/manager/x;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/videofloat/manager/x;->a:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    iget-object v1, p0, Lcom/transsion/videofloat/manager/x;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/videofloat/manager/x;->c:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->o(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V

    return-void
.end method
