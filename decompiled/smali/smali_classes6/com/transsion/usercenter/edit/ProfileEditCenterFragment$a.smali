.class public final Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/baselib/kids/KidsProfile;)Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;
    .locals 3

    new-instance v0, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;

    invoke-direct {v0}, Lcom/transsion/usercenter/edit/ProfileEditCenterFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "user"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p2, :cond_0

    const-string p1, "arg_kids_profile"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
