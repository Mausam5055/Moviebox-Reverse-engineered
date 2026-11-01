.class public Lcom/cicada/player/utils/ass/AssHeader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;
    }
.end annotation


# instance fields
.field public mEventFormat:Ljava/lang/String;

.field public mPlayResX:I

.field public mPlayResY:I

.field public mScaledBorderAndShadow:I

.field public mStyleFormat:Ljava/lang/String;

.field public mStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cicada/player/utils/ass/AssStyle;",
            ">;"
        }
    .end annotation
.end field

.field public mTimer:D

.field public mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

.field public mWrapStyle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mStyles:Ljava/util/Map;

    sget-object v0, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeUnknown:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mPlayResX:I

    iput v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mPlayResY:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/cicada/player/utils/ass/AssHeader;->mTimer:D

    iput v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mWrapStyle:I

    iput v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mScaledBorderAndShadow:I

    return-void
.end method

.method private getStyles()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mStyles:Ljava/util/Map;

    return-object v0
.end method

.method private getType()I
    .locals 3

    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    sget-object v1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeUnknown:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeAss:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    sget-object v1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeSsa:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v2
.end method

.method private setStyles(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/cicada/player/utils/ass/AssHeader;->mStyles:Ljava/util/Map;

    return-void
.end method

.method private setType(I)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeUnknown:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    iput-object p1, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeAss:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    iput-object p1, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;->SubtitleTypeSsa:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    iput-object p1, p0, Lcom/cicada/player/utils/ass/AssHeader;->mType:Lcom/cicada/player/utils/ass/AssHeader$SubtitleType;

    :cond_2
    :goto_0
    return-void
.end method
