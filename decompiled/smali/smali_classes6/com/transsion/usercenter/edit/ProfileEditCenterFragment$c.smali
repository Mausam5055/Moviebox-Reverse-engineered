.class public final Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/usercenter/edit/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->uploadImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$c;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget p2, Lcom/transsion/usercenter/R$string;->profile_saved_fail_retry:I

    invoke-virtual {p1, p2}, Luh/b$a;->d(I)V

    iget-object p1, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$c;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    invoke-static {p1}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->access$hideRequestLoading(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;ZLjava/lang/String;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$c;->c(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string p2, "bucket"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$c;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->access$setRetry$p(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;Z)V

    iget-object p2, p0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$c;->a:Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    invoke-static {p2}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->access$getCropImage$p(Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0, p3}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;->onAvatarUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
