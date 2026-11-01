.class public final Lcom/cloud/tmc/kernel/model/CreateParams;
.super Lcom/cloud/tmc/kernel/model/BaseBean;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/model/CreateParams$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0001\"B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001e\u001a\u00020\u0008H\u0016J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0008H\u0016R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000cR2\u0010\u0010\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011j\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u0001`\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/model/CreateParams;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "()V",
        "containerHeight",
        "",
        "getContainerHeight",
        "()I",
        "setContainerHeight",
        "(I)V",
        "containerWidth",
        "getContainerWidth",
        "setContainerWidth",
        "resourceUrls",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "getResourceUrls",
        "()Ljava/util/ArrayList;",
        "setResourceUrls",
        "(Ljava/util/ArrayList;)V",
        "startParams",
        "Landroid/os/Bundle;",
        "urlVisitListener",
        "Lcom/cloud/tmc/kernel/model/listener/URLVisitListener;",
        "useForEmbed",
        "",
        "describeContents",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
        "com.cloud.tmc.kernel"
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
.field public static final CREATOR:Lcom/cloud/tmc/kernel/model/CreateParams$CREATOR;


# instance fields
.field private containerHeight:I

.field private containerWidth:I

.field private resourceUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public startParams:Landroid/os/Bundle;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public urlVisitListener:Lcom/cloud/tmc/kernel/model/listener/URLVisitListener;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public useForEmbed:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/kernel/model/CreateParams$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/kernel/model/CreateParams$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/kernel/model/CreateParams;->CREATOR:Lcom/cloud/tmc/kernel/model/CreateParams$CREATOR;

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

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/CreateParams;-><init>()V

    const-class v0, Lcom/cloud/tmc/kernel/model/CreateParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/model/CreateParams;->startParams:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/kernel/model/CreateParams;->containerWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/kernel/model/CreateParams;->containerHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/cloud/tmc/kernel/model/CreateParams;->useForEmbed:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getContainerHeight()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/kernel/model/CreateParams;->containerHeight:I

    return v0
.end method

.method public final getContainerWidth()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/kernel/model/CreateParams;->containerWidth:I

    return v0
.end method

.method public final getResourceUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/model/CreateParams;->resourceUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setContainerHeight(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/kernel/model/CreateParams;->containerHeight:I

    return-void
.end method

.method public final setContainerWidth(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/kernel/model/CreateParams;->containerWidth:I

    return-void
.end method

.method public final setResourceUrls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/model/CreateParams;->resourceUrls:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/kernel/model/CreateParams;->startParams:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget p2, p0, Lcom/cloud/tmc/kernel/model/CreateParams;->containerWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/tmc/kernel/model/CreateParams;->containerHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/cloud/tmc/kernel/model/CreateParams;->useForEmbed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
