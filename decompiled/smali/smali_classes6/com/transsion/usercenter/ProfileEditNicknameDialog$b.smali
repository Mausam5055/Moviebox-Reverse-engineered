.class public final Lcom/transsion/usercenter/ProfileEditNicknameDialog$b;
.super Lcom/transsion/usercenter/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/ProfileEditNicknameDialog;->e0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/ProfileEditNicknameDialog;

.field final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/ProfileEditNicknameDialog;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/ProfileEditNicknameDialog$b;->a:Lcom/transsion/usercenter/ProfileEditNicknameDialog;

    iput-object p2, p0, Lcom/transsion/usercenter/ProfileEditNicknameDialog$b;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/transsion/usercenter/a;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/usercenter/ProfileEditNicknameDialog$b;->a:Lcom/transsion/usercenter/ProfileEditNicknameDialog;

    invoke-static {p1}, Lcom/transsion/usercenter/ProfileEditNicknameDialog;->b0(Lcom/transsion/usercenter/ProfileEditNicknameDialog;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/usercenter/ProfileEditNicknameDialog$b;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/30"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
