.class public final Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;
.super Lcom/cloud/tmc/kernel/model/BaseBean;

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/model/MiniAppConfigModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PagesBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00132\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0013B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000fH\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "()V",
        "window",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;",
        "getWindow",
        "()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;",
        "setWindow",
        "(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)V",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean$CREATOR;


# instance fields
.field private window:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;->CREATOR:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;-><init>()V

    const-class v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;->window:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getWindow()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;->window:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    return-object v0
.end method

.method public final setWindow(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;->window:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;->window:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
