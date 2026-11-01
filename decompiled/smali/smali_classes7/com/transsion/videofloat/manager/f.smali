.class public final synthetic Lcom/transsion/videofloat/manager/f;
.super Ljava/lang/Object;

# interfaces
.implements Lze/a;


# instance fields
.field public final synthetic a:Lcom/transsion/videofloat/manager/i;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videofloat/manager/f;->a:Lcom/transsion/videofloat/manager/i;

    iput-object p2, p0, Lcom/transsion/videofloat/manager/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/videofloat/manager/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/videofloat/manager/f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/videofloat/manager/f;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/videofloat/manager/f;->a:Lcom/transsion/videofloat/manager/i;

    iget-object v1, p0, Lcom/transsion/videofloat/manager/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/videofloat/manager/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/videofloat/manager/f;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/videofloat/manager/f;->e:Ljava/lang/String;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/transsion/videofloat/manager/i;->a(Lcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/Boolean;Lcom/permissionx/guolindev/callback/PermissionDialogClickType;)V

    return-void
.end method
