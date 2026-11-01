.class public final Lcom/cloud/tmc/ad/bean/response/NativeBean;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;,
        Lcom/cloud/tmc/ad/bean/response/NativeBean$DescriptDTO;,
        Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;,
        Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;,
        Lcom/cloud/tmc/ad/bean/response/NativeBean$TitleDTO;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001:\u0005$%&\'(B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001e\u001a\u00020\u0008J\u000e\u0010\u001f\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u0017J\u0006\u0010!\u001a\u00020\u0017J\u0006\u0010\"\u001a\u00020\u0008J\u0008\u0010#\u001a\u00020\u0008H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\nR\u0019\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001b\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\nR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/bean/response/NativeBean;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "()V",
        "button",
        "Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;",
        "descript",
        "Lcom/cloud/tmc/ad/bean/response/NativeBean$DescriptDTO;",
        "descriptionTxt",
        "",
        "getDescriptionTxt",
        "()Ljava/lang/String;",
        "logo",
        "Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;",
        "getLogo",
        "()Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;",
        "logoUrl",
        "getLogoUrl",
        "mainImages",
        "",
        "Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;",
        "getMainImages",
        "()Ljava/util/List;",
        "rating",
        "",
        "Ljava/lang/Integer;",
        "title",
        "Lcom/cloud/tmc/ad/bean/response/NativeBean$TitleDTO;",
        "titleTxt",
        "getTitleTxt",
        "version",
        "getButtonText",
        "getButtonTxt",
        "isInstallApk",
        "getRating",
        "getVersion",
        "toString",
        "ButtonDTO",
        "DescriptDTO",
        "LogoDTO",
        "MainImagesDTO",
        "TitleDTO",
        "com.cloud.tmc.miniad"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final button:Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;

.field private final descript:Lcom/cloud/tmc/ad/bean/response/NativeBean$DescriptDTO;

.field private final logo:Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;

.field private final mainImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;",
            ">;"
        }
    .end annotation
.end field

.field private final rating:Ljava/lang/Integer;

.field private final title:Lcom/cloud/tmc/ad/bean/response/NativeBean$TitleDTO;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public final getButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->button:Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getButtonTxt(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->button:Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;->getText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    return-object p1

    :cond_2
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/integration/R$string;->install:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getContext()\n           \u2026tString(R.string.install)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_3
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/integration/R$string;->open:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getContext()\n           \u2026.getString(R.string.open)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getDescriptionTxt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->descript:Lcom/cloud/tmc/ad/bean/response/NativeBean$DescriptDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean$DescriptDTO;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getLogo()Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->logo:Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;

    return-object v0
.end method

.method public final getLogoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->logo:Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getMainImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/ad/bean/response/NativeBean$MainImagesDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->mainImages:Ljava/util/List;

    return-object v0
.end method

.method public final getRating()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getTitleTxt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->title:Lcom/cloud/tmc/ad/bean/response/NativeBean$TitleDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/NativeBean$TitleDTO;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->version:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->rating:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->title:Lcom/cloud/tmc/ad/bean/response/NativeBean$TitleDTO;

    iget-object v3, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->descript:Lcom/cloud/tmc/ad/bean/response/NativeBean$DescriptDTO;

    iget-object v4, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->button:Lcom/cloud/tmc/ad/bean/response/NativeBean$ButtonDTO;

    iget-object v5, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->logo:Lcom/cloud/tmc/ad/bean/response/NativeBean$LogoDTO;

    iget-object v6, p0, Lcom/cloud/tmc/ad/bean/response/NativeBean;->mainImages:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NativeBean{version=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', rating="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", descript="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", button="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", logo="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mainImages="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
