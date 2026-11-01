.class public final Lcom/transsion/upgradesdk/bean/UpgradeInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J3\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/transsion/upgradesdk/bean/UpgradeInfo;",
        "Ljava/io/Serializable;",
        "isNewVersion",
        "",
        "showUpgradeDialog",
        "isForceUpgrade",
        "versionName",
        "",
        "(ZZZLjava/lang/String;)V",
        "()Z",
        "getShowUpgradeDialog",
        "getVersionName",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "upgradesdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final isForceUpgrade:Z

.field private final isNewVersion:Z

.field private final showUpgradeDialog:Z

.field private final versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->isNewVersion:Z

    iput-boolean p2, p0, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->showUpgradeDialog:Z

    iput-boolean p3, p0, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->isForceUpgrade:Z

    iput-object p4, p0, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/upgradesdk/bean/UpgradeInfo;ZZZLjava/lang/String;ILjava/lang/Object;)Lcom/transsion/upgradesdk/bean/UpgradeInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->isNewVersion:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->showUpgradeDialog:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->isForceUpgrade:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->versionName:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/upgradesdk/bean/UpgradeInfo;->copy(ZZZLjava/lang/String;)Lcom/transsion/upgradesdk/bean/UpgradeInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final native component1()Z
.end method

.method public final native component2()Z
.end method

.method public final native component3()Z
.end method

.method public final native component4()Ljava/lang/String;
.end method

.method public final native copy(ZZZLjava/lang/String;)Lcom/transsion/upgradesdk/bean/UpgradeInfo;
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public final native getShowUpgradeDialog()Z
.end method

.method public final native getVersionName()Ljava/lang/String;
.end method

.method public native hashCode()I
.end method

.method public final native isForceUpgrade()Z
.end method

.method public final native isNewVersion()Z
.end method

.method public native toString()Ljava/lang/String;
.end method
