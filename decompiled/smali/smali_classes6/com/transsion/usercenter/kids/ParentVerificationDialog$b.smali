.class public final Lcom/transsion/usercenter/kids/ParentVerificationDialog$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/kids/ParentVerificationDialog;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/kids/ParentVerificationDialog;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/kids/ParentVerificationDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/kids/ParentVerificationDialog$b;->a:Lcom/transsion/usercenter/kids/ParentVerificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/kids/ParentVerificationDialog$b;->a:Lcom/transsion/usercenter/kids/ParentVerificationDialog;

    invoke-static {v0}, Lcom/transsion/usercenter/kids/ParentVerificationDialog;->d0(Lcom/transsion/usercenter/kids/ParentVerificationDialog;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
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
