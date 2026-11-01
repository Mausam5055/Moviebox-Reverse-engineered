.class public final Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$b;->a:Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$b;->a:Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    xor-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;->g0(Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;Z)V

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
