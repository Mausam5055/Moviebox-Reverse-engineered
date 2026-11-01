.class public final Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;
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
    name = "PkgExtBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \"2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\"B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u001eH\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006#"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "()V",
        "dark",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;",
        "getDark",
        "()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;",
        "setDark",
        "(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;)V",
        "light",
        "getLight",
        "setLight",
        "pkg",
        "",
        "getPkg",
        "()Ljava/lang/String;",
        "setPkg",
        "(Ljava/lang/String;)V",
        "tarBar",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;",
        "getTarBar",
        "()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;",
        "setTarBar",
        "(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V",
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
.field public static final CREATOR:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean$CREATOR;


# instance fields
.field private dark:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

.field private light:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

.field private pkg:Ljava/lang/String;

.field private tarBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->CREATOR:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->pkg:Ljava/lang/String;

    const-class v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    iput-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->light:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->dark:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    const-class v0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->tarBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getDark()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->dark:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    return-object v0
.end method

.method public final getLight()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->light:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    return-object v0
.end method

.method public final getPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public final getTarBar()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->tarBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    return-object v0
.end method

.method public final setDark(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->dark:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    return-void
.end method

.method public final setLight(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->light:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    return-void
.end method

.method public final setPkg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->pkg:Ljava/lang/String;

    return-void
.end method

.method public final setTarBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->tarBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->light:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->dark:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;->tarBar:Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
