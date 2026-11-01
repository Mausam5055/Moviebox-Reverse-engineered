.class public final Lcom/transsion/usercenter/kids/PinInputDialog$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/kids/PinInputDialog;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/kids/PinInputDialog;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/kids/PinInputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/kids/PinInputDialog$c;->a:Lcom/transsion/usercenter/kids/PinInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/usercenter/kids/PinInputDialog$c;->a:Lcom/transsion/usercenter/kids/PinInputDialog;

    invoke-static {v1, v0}, Lcom/transsion/usercenter/kids/PinInputDialog;->j0(Lcom/transsion/usercenter/kids/PinInputDialog;I)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog$c;->a:Lcom/transsion/usercenter/kids/PinInputDialog;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/usercenter/kids/PinInputDialog;->f0(Lcom/transsion/usercenter/kids/PinInputDialog;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
