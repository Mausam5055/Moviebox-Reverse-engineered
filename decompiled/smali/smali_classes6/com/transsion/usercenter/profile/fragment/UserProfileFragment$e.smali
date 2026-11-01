.class public final Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->V0(Ljava/lang/String;)Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->B0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-static {v0, p3}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->H0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    iget-object p3, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;->I0(Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;Z)V

    iget-object p3, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-virtual {p3}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3, v0}, Lhj/b;->k(Z)V

    :cond_1
    iget-object p3, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-virtual {p3}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p3

    const-string v0, ""

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    move-object p1, v0

    :cond_3
    const-string v1, "load_duration"

    invoke-virtual {p3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lcom/transsion/usercenter/profile/fragment/UserProfileFragment$e;->a:Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_6

    if-nez p2, :cond_5

    move-object p2, v0

    :cond_5
    const-string p3, "ops"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_6
    return-void
.end method
