.class public final Lcom/transsion/usercenter/ProfileEditNicknameDialog$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/usercenter/t$a;


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


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/ProfileEditNicknameDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/ProfileEditNicknameDialog$a;->a:Lcom/transsion/usercenter/ProfileEditNicknameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    iget-object v1, p0, Lcom/transsion/usercenter/ProfileEditNicknameDialog$a;->a:Lcom/transsion/usercenter/ProfileEditNicknameDialog;

    sget v2, Lcom/transsion/usercenter/R$string;->profile_edit_nickname_tip:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/toast/core/h;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
