.class public final Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/commercialization/pslink/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton$b;->a:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;Ljava/lang/String;)V
    .locals 3

    const-string v0, "callBackName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callBackCommon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton$b;->a:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;

    invoke-static {v0}, Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;->access$getMItemInfo$p(Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;)Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton$b;->a:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;->access$dealWithCallBack(Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
