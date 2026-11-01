.class public Lcom/mbridge/msdk/dycreator/wrapper/DyOption;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;,
        Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/io/File;

.field private c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private d:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/mbridge/msdk/dycreator/listener/DyCountDownListenerWrapper;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->a(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->a:Ljava/util/List;

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->b(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->b:Ljava/io/File;

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->i(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->j(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->d:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->k(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->g:Z

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->l(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->m(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->f:Z

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->n(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->h:Z

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->o(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->j:Z

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->p(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->i:Z

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->c(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->k:Z

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->d(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->l:I

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->e(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->m:I

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->f(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->n:I

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->g(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->o:I

    invoke-static {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->h(Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;)I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->q:I

    return-void
.end method


# virtual methods
.method public getAdChoiceLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignEx()Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object v0
.end method

.method public getCountDownTime()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->o:I

    return v0
.end method

.method public getCurrentCountDown()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->p:I

    return v0
.end method

.method public getDyAdType()Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->d:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->b:Ljava/io/File;

    return-object v0
.end method

.method public getFileDirs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->a:Ljava/util/List;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->n:I

    return v0
.end method

.method public getShakeStrenght()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->l:I

    return v0
.end method

.method public getShakeTime()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->m:I

    return v0
.end method

.method public getTemplateType()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->q:I

    return v0
.end method

.method public isApkInfoVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->j:Z

    return v0
.end method

.method public isCanSkip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->g:Z

    return v0
.end method

.method public isClickButtonVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->h:Z

    return v0
.end method

.method public isClickScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->f:Z

    return v0
.end method

.method public isLogoVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->k:Z

    return v0
.end method

.method public isShakeVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->i:Z

    return v0
.end method

.method public setDyCountDownListener(I)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->r:Lcom/mbridge/msdk/dycreator/listener/DyCountDownListenerWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/dycreator/listener/DyCountDownListenerWrapper;->getCountDownValue(I)V

    :cond_0
    iput p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->p:I

    return-void
.end method

.method public setDyCountDownListenerWrapper(Lcom/mbridge/msdk/dycreator/listener/DyCountDownListenerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->r:Lcom/mbridge/msdk/dycreator/listener/DyCountDownListenerWrapper;

    return-void
.end method
